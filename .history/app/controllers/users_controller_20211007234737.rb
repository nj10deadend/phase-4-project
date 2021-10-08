class UsersController < ApplicationController
    wrap_parameters format: []
    skip_before_action :confirm_authentication

    def index 
      users = User.all 
      render json: users, status: :ok
    end

    def show
      if current_user
        render json: current_user, status: :ok
      else
        render json: { user: 'not logged in' }, status: :unauthorized
      end
    end


    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
    end

    def update
      user = User.find_by(id:params[:id])
      if user.update_attribute(:username, params[:username])
        render json: user, status: :created
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
    end 


    def destroy
      user = User.find_by(id:params[:id])
      if user
      # if session[:user_id]
        user.destroy
        # session.delete :user_id
        # @current_user.destroy
        reset_session
        redirect_to users_path, :notice => "User deleted."
        render json: {}
      else
        render json: {error: "Could not find user"}, status: 404
      end
    end



    private

    def user_params
      params.permit(:username, :password)
    end

    def user_name
      params.permit(:username)
    end 
end
