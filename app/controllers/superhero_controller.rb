class Superherocontroller < App


get "/" do

  erb :"super_hero"
end

post "/teams" do
  @team = Team.new(params[:team])

  params[:team][:members].each do |i|
    Member.new(i)
  end
  @members = Member.all

  erb :"team"
end

end
