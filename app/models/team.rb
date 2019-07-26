class Team

# params = {
#     "team" => { 
#         "name" => "Avengers", 
#         "motto" => "Protect the World!", 
#         "members" => [ 
#             {"name" => "Wolverine", 
#             "power" => "claw the shit out of someone", 
#             "bio" => "orphan"},

#             {"name" => "Superman", 
#             "power" => "flying, x-ray vision", 
#             "bio" => "orphan from Krypton"},
#             ]
#     } #team hash end
# } #params hash end
 

    attr_accessor :name, :motto
    
    def initialize(params)
        @name = params[:name] # == team[:name]
        @motto = params[:motto] # == team[:motto]
    end

end

