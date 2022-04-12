# require  'byebug'
require_relative './card.rb'

class Board
    attr_reader :grid 

    def initialize
        @grid = Array.new(4) { Array.new(4 , "_") }
        @size = @grid.length * @grid.length
    end

    def populate
        number_of_pairs = @size / 2
        arr = []
        populated = false 
        
        @size.times do
            card = Card.new
            arr << card 
            arr << card
        end
        

        while !arr.empty?
            row_1 = rand(0...@grid.length)
            col_1 = rand(0...@grid.length)

            
            if @grid[row_1][col_1] == "_"
                 temp = arr.pop
                  arr.pop
               
                @grid[row_1][col_1] = temp
            end
        end 
    end


    def render
        @grid.each_with_index do |row,idx1|
            print "  #{idx1}"
        end

        puts 

        @grid.each_with_index do |row,idx1|
            row.each_with_index do |ele,idx2|
               puts "#{idx2}  " if idx1 == 0 
            end
        end
    end


    def reveal(guess_pos)
        row,col = guess_pos 
       tempCard = @grid[row][col]
       tempCard.value if tempCard.reveal
    end

end


b = Board.new

b.populate
b.render
