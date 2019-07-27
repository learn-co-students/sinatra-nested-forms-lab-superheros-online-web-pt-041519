require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    #the home page, where the initial instruction + form is shown
    get '/' do
        erb :super_hero
    end

    # posts the team and members of the team (from team.erb view)
    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |details|
          Member.new(details)
        end
        @members = Member.all

        erb :team
    end
end
