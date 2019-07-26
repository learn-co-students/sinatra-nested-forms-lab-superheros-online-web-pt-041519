require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])
        @members = []
        params[:team][:members].each do |e| #e is a member hash => ex. {name: "Superman", power: "x-ray vision", etc...}
            # e is passed into Superhero class as params
            @members << Superhero.new(e)
        end
        erb :team
    end

end
