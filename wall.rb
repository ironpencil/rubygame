require './cell'

class Wall < Cell
    def to_s
        'W'
    end

    def collide(player)
        collision = Collision.new(false, false, 'You bump into a wall. Watch your step!')
    end
end