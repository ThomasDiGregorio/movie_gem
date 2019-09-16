module MovieGem
    class Movie
        attr_accessor :title, :synopsis

        @@all = []

        def initialize
            @@all << self
        end
        def self.all
            @@all
        end
    end
end