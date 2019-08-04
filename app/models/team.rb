class Team
    attr_reader :name, :motto
    TEAMS = []
    def initialize(params)
        @name = params[:name]
        @moto = params[:motto]
        TEAMS << self
    end

    def self.all
        TEAMS
    end
end