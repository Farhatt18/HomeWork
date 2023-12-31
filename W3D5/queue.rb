class Queue
    attr_reader :queue_arr

    def initialize
        @queue_arr = []
    end

    def enqueue(el)
        queue_arr.unshift(el)
    end

    def dequeue
        queue_arr.pop
    end

    def peek
        queue_arr.first
    end
end