require_relative './card.rb'
require_relative './board.rb'


class Game 
    attr_reader :board

    def initialize
        @board = Board.new
        @previous_guess = ""
    end

    def game_over?  
        self.board.won?
    end


    def prompt
        input = gets.chomp.split(",").map(&:to_i)
    end


    def make_guess(pos)
        row,col = pos
        
    end


    def play   


    end


end

# a = Game.new
# a.board.populate 
# a.board.render
# p a.game_over?