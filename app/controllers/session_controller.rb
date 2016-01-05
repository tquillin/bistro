class SessionsController < ApplicationController
  
  def show
     @staff = Staff.find(params[:id])
  end
  def new

    # authenticate!
    @staff = Staff.new
    # @party = Party.new
  end

  def log_in
      # staff = Staff.find_by(username: params[:username])
      if staff && staff.authenticate(params[:password])
        session[:staff_id] = staff.id
        redirect_to index_staff_path(:staff_id)
      else
        redirect_to staffs_path
  end

  def create
    staff = Staff.find_by(username: params[:username])
    if staff && staff.authenticate(params[:password])
      session[:staff_id] = staff.id
      redirect_to staffs_index_path
    else
      redirect_to staffs_path
    end
  end

  def show
     @staff = Staff.find(params[:id])
  end
end

end
