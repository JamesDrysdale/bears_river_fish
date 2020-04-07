class Bear
    attr_reader :name

    def initialize(name)
        @name = name
        @stomach = []
    end

    def stomach_contents()
        return @stomach.length()
    end

    def stomach_contents(fish1)
        for fish in @fish_population
            @stomach.push(fish)
        end
    end
        

end