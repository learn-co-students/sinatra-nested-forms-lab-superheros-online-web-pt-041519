class Member

attr_accessor :name, :power, :bio
MEMBER = []

def initialize(params)
  @name, @power, @bio = params[:name], params[:power], params[:bio]
  MEMBER << self
end

def self.all
  MEMBER
end

end
