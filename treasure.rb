require './cell'

class Treasure < Cell
    def to_s
        '$'
    end

    def collide(player)
        player.gold += rand(1..6)
        collision = Collision.new(true, true, 'You found some treasure!')
    end
end