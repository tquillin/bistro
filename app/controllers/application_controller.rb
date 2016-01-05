class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
  #
  # def index
  # end
  def logged_in?
      !!current_staff
  end

  end
  private
    def require_login
      unless logged_in?
      staff = Staff.find_by(username: params[:username])
      if staff && staff.authenticate(params[:password])
        session[:staff_id] = staff.id
        # redirect_to new_staff_path
      else
        redirect_to root_path
      end
    end


end
