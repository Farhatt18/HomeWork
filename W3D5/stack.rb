class Stack
    attr_reader :stacks
    def initialize
        @stacks = []
    end

    def push(el)
        stacks.push(el)
    end

    def pop
        stacks.pop
    end

    def peek
        stacks.last
    end

end