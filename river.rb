class River
    attr_reader :name 

    def initialize(name)
        @name = name
        @fish_population = []
    end

    def fish_count()
        return @fish_population.length()
    end

    def add_fish(fish)
        @fish_population << fish
    end

end