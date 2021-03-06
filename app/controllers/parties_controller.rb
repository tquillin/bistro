class PartiesController < ApplicationController

  before_filter :require_login

    def index
      @parties = Party.all
    end

    def create
      party = Party.create(party_params)
        if party.save
          redirect_to parties_path
        else
          flash[:error] = party.errors.full_messages
          redirect_to new_party_path
        end
      end
    end 

    def new
      @party = Party.new
    end



    def edit
      @party = Party.find(params[:id])
    end

    def show
      @party = Party.find(params[:id])
    end

    def update
      party = Party.find(params[:id])
             redirect_to party_path
    end

    #     if party.update(party_params)
    #        redirect_to party_path
    #       #  redirect_to party_path(party)
    #     else
    #         flash[:error] = party.errors.full_messages
    #         redirect_to edit_party_path(@party)
    #       end
    # end

    def destroy
      Party.delete(params[:id])
      redirect_to parties_path
    end

  private
    def party_params
      parameters = params.require(:party).permit(:table_number, :number_of_guest, :paid)
      parameters[:staff_id] = session[:staff_id]
      parameters
    end

  end
