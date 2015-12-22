class SessionsController < ApplicationController

  def create
    staff = Staff.find_by(username: params[:username])
    if staff && staff.authenticate(params[:password])
      session[:staff_id] = staff.id
      redirect_to parties_path
    else
      redirect_to staffs_path
    end

  end

  def destroy
    session[:staff_id] = nil
    redirect_to staffs_path
  end

end
