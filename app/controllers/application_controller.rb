class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :confirm_authentication
  # helper_method :current_user 

  
  
  # def authorize 
  #   render json: {error: "Not authorized"}, status: :unauthorized 
  #   unless session.include? :user_id
  #   end
  # end
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def confirm_authentication
    return render json: { error: "You must be logged in to do that." }, status: :unauthorized unless current_user
    
    
  end

end
