class UsersController < ApplicationController
    wrap_parameters format: []
    skip_before_action :confirm_authentication

    def index 
        users = User.all 
        render json: users, status: :ok
    end

    # def show
    #     user = User.find_by(id: session[:user_id]) 
    #     if user 
    #         render json: user, status: :found
    #     else
    #         render json: {errors: "User not authorized"}, status: :unauthorized
    #     end
    # end
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


    private

    def user_params
        params.permit(:username, :password)
    end
end
