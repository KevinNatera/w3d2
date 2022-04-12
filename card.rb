class Card
    # attr_reader :revealed, :value
    def initialize
        @revealed = false
        @value = rand(0..25)
    end


    def hide
        @revealed = false if @revealed == true
    end

    def reveal
         if @revealed == false
            @revealed = true
            true
         else 
            false 
         end
         #refactor to be like hide
    end

    def to_s
        alpha = ("A".."Z").to_a
        return alpha[@value]

    end

    def ==(guess)
        guess == self.to_s()
    end



end
