#O(n^2)
def quadratic_biggest_fish

    fish.each_with_index do |fish1, idx1|
        max_length = true 
        fish.each_with_index do |fish2, idx2|
            next if idx1 == idx2
            max_length = false if fish2.length > fish1.length
        end
    end

    return fish1 if max_length
end

#O(nlogn) =
class Array
    def merge_sort(&prc)
        prc ||= Proc.new{|x,y| x <=> y}

        return self if self.length <= 1

        mid = self.length/2
        left = self[0...mid]
        right = self[mid..-1]

        sorted_left = left.merge_sort(&prc)
        sorted_right = right.merge_sort(&prc)

        Array.merge(sorted_left, sorted_right, &prc)
    end 

    def self.merge(left, right, &prc)
        merged = []

        until left.empty? || right.empty?
            if prc(left[0], right[0]) == -1
                merged << left.shift
            else
                merged << right.shift
            end
        end

        merged + left + right 
    end 

    def nlogn_biggest_fish(fishes)
        prc ||= Proc.new{|x,y| y.length <=> x.length }
        fishes.merge_sort(&prc)[0]
    end 
end 

#O(n)
def linear_n_biggest_fish(fishes)
    biggest_fish = fishes.first

    fishes.each do |fish|
        if fish.length > biggest_fish.length
            biggest_fish = fish
        end
    end

    biggest_fish
end

#O(n)= linear
def slow_dance(direction, tile_array)

    tile_array.each_with_index do |tile, i|
        return i if tile_array[i] = direction
    end
end

#O(1) = constant
def fast_dance(direction,tile_hash)
    tile_hash[direction]
end
