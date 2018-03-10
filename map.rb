require '.\player'
require '.\cell'
require '.\treasure'

class Map
    def initialize (size)
        @size = size
        @map = Array.new(size) { Array.new (@size) { Cell.new }}
    end

    def try_move(player, new_row, new_col)
        if new_col < 0 || new_col >= @size || new_row < 0 || new_row >= @size
            #if trying to move off edge, reset player position to not move
            new_row = player.row
            new_col = player.col
        end

        #collide with ('touch') whatever we're moving onto
        collision = @map[new_row][new_col].collide(player)

        if (collision.allow_movement?)
            #if we're allowed to move onto whatever we touched, do so
            player.row = new_row
            player.col = new_col
        end

        if (collision.remove_cell?)
            #if we should remove the cell after touching it, do so
            @map[new_row][new_col] = Cell.new
        end

        collision.get_collision_message
    end

    def print_map (player)
        (0...@size).each do |row|
            (0...@size).each do |col|
                if (player.row == row && player.col == col)
                    print player
                else
                    print @map[row][col]
                end
            end
            puts
        end
    end

    def add_treasure (row, col)
        @map[row][col] = Treasure.new
    end
end
