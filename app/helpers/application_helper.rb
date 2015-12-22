module ApplicationHelper

  def current_staff
      if session[:staff_id]
        @current_staff = @current_staff || Staff.find(session[:staff_id])
      end
    end

    def authenticate!
      redirect_to root_path unless current_staff
    end

end
