class Collision
    def initialize (allow_movement, remove_cell, message)
        @allow_movement = allow_movement
        @remove_cell = remove_cell
        @message = message
    end

    def allow_movement?
        @allow_movement
    end

    def remove_cell?
        @remove_cell
    end

    def get_collision_message
        @message
    end
end