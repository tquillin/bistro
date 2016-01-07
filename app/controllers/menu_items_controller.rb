class MenuItemsController < ApplicationController
  before_filter :require_login

  # menu_items GET    /menu_items(.:format)          menu_items#index
  def index
    # @party = Party.find(params[:party_id])
    # @menu_items = @party.menu_items.all
    # @menu_item = @party.menu_items.new
    @menu_items = MenuItem.all
  end
  #                POST   /menu_items(.:format)          menu_items#create
  def create
    menu_items = MenuItem.create(menu_item_params)
    redirect_to menu_items_path
  end
  #  new_menu_item GET    /menu_items/new(.:format)      menu_items#new
  def new
    @menu_item = MenuItem.new
  end
  # edit_menu_item GET    /menu_items/:id/edit(.:format) menu_items#edit
  #      menu_item GET    /menu_items/:id(.:format)      menu_items#show
  def show
    @menu_item = MenuItem.find(params[:id])
  end
  #                PATCH  /menu_items/:id(.:format)      menu_items#update
  #                PUT    /menu_items/:id(.:format)      menu_items#update
  #                DELETE /menu_items/:id(.:format)      menu_items#destroy

  # def update
  #   menu_item = Party.find(params[:id])
  #     if party.update(party_params)
  #        redirect_to party_path
  #       #  redirect_to party_path(party)
  #     else
  #         flash[:error] = party.errors.full_messages
  #         redirect_to edit_party_path(@party)
  #       end
  # end
  #
  # def destroy
  #   Party.delete(params[:id])
  #   redirect_to parties_path
  # end


  private
    def menu_item_params
        params.require(:menu_item).permit(:food, :food1, :category, :description, :price, :price1, :party, :staff, :ordered_item)
    end


end
