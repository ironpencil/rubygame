class Player
    attr_accessor :row
    attr_accessor :col
    attr_accessor :gold

    def initialize(row, col)
        @row = row
        @col = col
        @gold = 0
    end

    def to_s
        '@'
    end
end