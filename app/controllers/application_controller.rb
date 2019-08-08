require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    configure do
        set :views, "app/views"
        set :public_dir, "public"
    end

    get "/" do 
        erb :new
    end 
    
    post "/teams" do
        @team = Team.new(params)    

        @heroes = params[:team][:heroes]
        
        @heroes.each do |hero|
            Hero.new(hero)     
        end    
        @heroes = Hero.all

        erb :show
    end

    get "/test" do 
       erb :test
    end    

    #get "/new" do
        #erb :new
    #end    
end
