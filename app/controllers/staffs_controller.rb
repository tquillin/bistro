class StaffsController < ApplicationController
  # before_action :authenticate!
  # def index
  #   @staffs = Staff.all
  # end

  # NEW Provide a form to create a new resource
    # get '/new'

    def index
    end

    def new
      # authenticate!
      @staff = Staff.new
      # @party = Party.new
    end

    def log_in
    end

      # CREATE: Make a new resource and save it post '/'

      def create
        staff = Staff.create(staff_params)
        if staff.save
          session[:staff_id] = staff.id
          redirect_to parties_path
        else
          flash[:error] = staff.errors.full_messages
          redirect_to new_staff_path
          end
        end

    # SHOW:  Show a single resource get '/:id'
    def show
       @staff = Staff.find(params[:id])
    end

   # EDIT: Provide form for editing woofs get '/:id/edit'
  #  def edit
  #    @staff = Staff.find(params[:id])
  #    redirect_to staffs_path
  #  end

  # UPDATE: Find and update values in the database put '/:id'

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
  # # DESTROY: Remove a record from the database delete '/:id'
  #
  # def destroy
  #   staff = Staff.find(params[:id])
  #     redirect_to staffs_path
  #   end

  private

  def staff_params
    params.require(:staff).permit(:name, :username, :password)
  end

end
