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

  # def create
  #   @staff = Staff.create(staff_params)
  #     redirect_to staff_path(staff)
  # end

  # def create
  #
  #   @staff = Staff.create(staff_params)
  #
  #     redirect_to staff_path(staff)
  #
  # end

  # def create
  #   staff = Staff.find_by(username: params[:username])
  #   if staff && staff.authenticate(params[:password])
  #     session[:staff_id] = staff.id
  #     redirect_to staffs_path
  #   else
  #     redirect_to staffs_path
  #   end
  # end

  def show
     @staff = Staff.find(params[:id])
  end

  def update
  staff = current_staff.find(params[:id])
    current_staff.update(params[:id])
    redirect_to staffs_path
  end

# DESTROY: Remove a record from the database delete '/:id'

  def destroy
    Session.delete(params[:staff_id]) = nil
    redirect_to staffs_path
    # staff = Staff.find(params[:id])
    #   redirect_to staffs_path
  end

end
