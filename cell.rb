require './collision'

class Cell
    def collide(player)
        collision = Collision.new(true, false, 'There is nothing but an eerie silence...')
    end

    def to_s
        '.'
    end
end