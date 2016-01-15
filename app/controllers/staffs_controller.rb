class StaffsController < ApplicationController

  def index
    @staffs = Staff.all
    @staff = Staff.new
  end
  #
  # # NEW Provide a form to create a new resource
  #   # get '/new'
    def show
       @staff = Staff.find(params[:id])
    end

  #   # def index
  #   # end
  #
    def new

      # authenticate!
      @staff = Staff.new
      # redirect_to new_staff_path
      # @party = Party.new
    end
  #
    def log_in
        # staff = Staff.find_by(username: params[:username])
        if staff && staff.authenticate(params[:password])
          session[:staff_id] = staff.id
          redirect_to staffs_path
        else
          redirect_to staff_path(@staff)
        end
  #

      # staff = Staff.create(staff_params)
      # if staff.save
      #   session[:staff_id] = staff.id
      #   redirect_to "staffs/log_in"
      # else
      #   flash[:error] = staff.errors.full_messages
      #   redirect_to new_staff_path
      #   end


    #   # CREATE: Make a new resource and save it post '/'
    # def edit
    #     @staff = Staff.find(params[:id])
    #     redirect_to staffs_path
    # end


    def create
      @staff = Staff.create(staff_params)
        redirect_to staff_path(staff)
    end



      # def create
        # staff = Staff.create(staff_params)
        # if staff.save
        #   session[:staff_id] = staff.id
          # redirect_to staff_path(staff)
        # else
        #   flash[:error] = staff.errors.full_messages
        #   redirect_to staffs_path
        #   end
        # end
      # end

        def show
          @staff = Staff.find(params[:id])
        end

    # SHOW:  Show a single resource get '/:id'


  #  EDIT: Provide form for editing woofs get '/:id/edit'
   def edit
     @staff = Staff.find(params[:id])
     redirect_to staffs_path
   end

  # UPDATE: Find and update values in the database put '/:id'

  def update
  staff = Staff.find(params[:id])
    staff.update(staff_params)
    if  staff.save
        session[:user_id] = user.id
        redirect_to staffs_path
      else
        flash[:error] = staff.errors.full_messages
        redirect_to update_staff_path(staff.id)
      end
    end
  end

  # def update
  # staff = Staff.find(params[:id])
  #   if  staff.update(staff_params)
  #     redirect_to parties_path
  #     else
  #       flash[:error] = staff.errors.full_messages
  #       redirect_to edit_staff_path(staff.id)
  #     end
  #   end
  #
  #
  # DESTROY: Remove a record from the database delete '/:id'

  def destroy
    staff = Staff.find(params[:id])
      redirect_to staffs_path
    end

  private

  def staff_params
    params.require(:staff).permit(:name, :username, :password)
  end

end
