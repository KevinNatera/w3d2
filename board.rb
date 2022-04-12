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
            else 
                next
            end
            
            print @grid
        end 

    end
    
end


b = Board.new

b.populate
