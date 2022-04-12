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
            pos_1 = [row_1,col_1]

            p "POS 1" + "#{pos_1}"

            # row_2 = rand(0...@grid.length)
            # col_2 = rand(0...@grid.length)
            # pos_2 = [row_2,col_2]

            # p "POS 2" + "#{pos_2}"
            
            if @grid[row_1][col_1] == "_"
                val = arr.pop.value 
                puts "--------------------------------------------------"
                puts "--------------------------------------------------"
                puts "THIS IS THE VALUE #{val}"
                @grid[row_1][col_1] = val
            else 
                next
            end
            
            print @grid
        end 

    end
    
end


b = Board.new

b.populate
