class Card
    attr_reader :revealed, :value
    def initialize
        @revealed = false
        @value = rand(0..25)
    end


    def hide
        @revealed=false if @revealed ==true
    end

    def revealed
        @revealed = true if @revealed ==false
    end

    def to_s
        alpha = ("A".."Z").to_a
        return alpha[@value]

    end

    def ==(guess)
        guess == self.to_s()
    end


    

end

#  a = Card.new
#  p a.value
# #  b = Card.new
# #  p b.value 

#  p a.to_s