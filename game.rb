require './map'
require 'io/console'

map_size = 20

map = Map.new(map_size)

map.add_treasure(7, 7)
map.add_treasure(14, 14)

player = Player.new(map_size / 2, map_size / 2)

input = ''
display_message = 'You find yourself in an unfamiliar place...'

=begin new map code
clear screen
print map
print out display_message

get input
set new_row and new_col
displaymessage = map.try_to_move(player, new_row, new_col)




=end
while input != 'q'
    #clear screen
    system 'cls'

    #print display
    print "Gold: #{player.gold}"
    puts
    map.print_map(player)

    puts display_message

    #get input
    input = STDIN.getch

    new_row = player.row
    new_col = player.col

    case input
        when 'w'
            new_row -= 1
        when 's'
            new_row += 1
        when 'a'
            new_col -= 1
        when 'd'
            new_col += 1
    end

    display_message = map.try_move(player, new_row, new_col)
end