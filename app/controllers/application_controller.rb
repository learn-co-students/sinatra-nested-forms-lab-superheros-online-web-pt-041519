require 'sinatra/base'

class App < Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), '..')
    
    set :views, File.join(root, "views") 
    # set :views, Proc.new { File.join(root, "/views") }
    
    get '/' do
        erb :super_hero
    end 

    post '/teams' do
        @team = Team.new(params[:team])
        @heroes = params[:team][:member].map do |hero|
            Hero.new(hero)
        end 
        # binding.pry
        

        erb :team
    end 

end
