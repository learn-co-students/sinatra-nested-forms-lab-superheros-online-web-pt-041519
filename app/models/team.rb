class Team

    attr_accessor :name, :motto

    @@all = []

    def initialize(params)
        @name, @motto = params[:name], params[:motto]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end
end