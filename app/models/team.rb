class Team
  attr_accessor :name, :motto
  attr_reader :members

  def initialize(params)
    # binding.pry
    self.name, self.motto = params[:name], params[:motto]
    @members = []

  end
end
