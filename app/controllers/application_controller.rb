require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/teams' do
        
        
        @super_team = params[:team]
        params[:team][:members].each do |k, v|
            Hero.new(k)  
        end
        binding.pry
        @members = HEROES.each do |n|
              
            # puts n.name   
            # puts n.power
            # puts n.bio
            
        end  
 

        erb :super_hero

    end


end
