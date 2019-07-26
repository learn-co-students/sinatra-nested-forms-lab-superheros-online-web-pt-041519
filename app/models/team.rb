class Team

attr_accessor :name, :motto
TEAM = []

def initialize(params)
  @name, @motto = params[:name], params[:motto]
  TEAM << self
end

def self.all
  TEAM
end

end
