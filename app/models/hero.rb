class Hero
  attr_accessor :name, :power, :bio, :team

  def initialize(params)
    self.name, self.power, self.bio = params[:name], params[:power], params[:bio]
  end
end
