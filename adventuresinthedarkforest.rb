# Sadie, Teddy, Mason, Ryan

# create a while loop
# puts grid array
# list movement conditionals
# update hero position
# loops
# outside boundaries
# enemies
# treasure / XP
# exit/win condition (a door?)  

puts "\n     ~Welcome to the Dark Forest~     "
puts "       Are you ready to die????\n\n"
require 'io/console'

# make a grid that's 8 x 8

title = File.read("mountain.txt")
puts title

# title_grid = Array.new(8) { Array.new(8) { "~" } }

# title_grid.each do |row|
#     print "          "
#     row.each do |cell|
#         print cell
#         print " "
#     end
#     puts 
# end

puts "Please use [W,A,S,D] to move your Hero!"
puts "        Or press [Q] to quit"
puts ""
puts "       Press [ENTER] to begin"
gets 
system('clear') # mac
system('cls') # windows 

# add system clears for each hero_movement
grid = Array.new(8) { Array.new(8) { " " } }
hero = "@"
hero_row = 2
hero_cell = 2
grid[hero_row][hero_cell]="@"

continue = true
while continue
    #prints grid / hero
    
    grid.each do |row|
        print "          "
        row.each do |cell|
            print cell
            print " "
        end
        puts 
    end
    
    # get a hero_movement without pressing enter.
    hero_movement = STDIN.getch

    # after user input, update grid position of @ maybe [0][-1]

    if hero_movement == "w" && hero_row > 0 
        #repeat for each user input
        grid[hero_row][hero_cell] = "~"
        hero_row = hero_row -1
        grid[hero_row][hero_cell] = "@"
    # elsif hero_movement = "w" && hero_row = 0
    #     grid[hero_row][hero_cell] = "@"
    elsif hero_movement == "s"
        grid[hero_row][hero_cell] = "~"
        hero_row = hero_row +1
        grid[hero_row][hero_cell] = "@"
    elsif hero_movement == "a"
        grid[hero_row][hero_cell] = "~"
        hero_cell = hero_cell -1
        grid[hero_row][hero_cell] = "@"
    elsif hero_movement == "d"
        grid[hero_row][hero_cell] = "~"
        hero_cell = hero_cell +1
        grid[hero_row][hero_cell] = "@"
    elsif hero_movement == "q"
    continue = false
    elsif hero_movement != "w" || hero_movement != "a" || hero_movement != "s" || hero_movement != "d" || hero_movement != "q"
        puts "     please use [WSAD] to move"
        puts "     Press [ENTER] to continue"
        gets
    # elsif (hero_movement != "w" && hero_row <= 0) 
    #     puts "     please use [WSAD] to move"
    #     puts "     Press [ENTER] to continue"
    #     gets
    else
        
    end
    # just do them both!!!! (to clear the screen)
    system('clear') # mac
    system('cls') # windows 
end
puts "You've escaped the Dark Forest!"