class ScriptsController < ApplicationController
    skip_before_action :confirm_authentication

    def index 
        
        scripts = Script.all 
        render json: scripts, status: :ok
    end

    def create
        byebug
        
        scripts = Script.all 
        render json: scripts, status: :ok
    end


    
end
