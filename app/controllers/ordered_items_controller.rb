class OrderedItemsController < ApplicationController

#   ordered_items GET    /ordered_items(.:format)          ordered_items#index
def index
  @ordered_items = OrderedItem.all
end
#                   POST   /ordered_items(.:format)          ordered_items#create
def create
  ordered_item = OrderedItem.create(ordered_item_params)
  redirect_to ordered_item_path(ordered_item)
  # party = Party.find(params[:party_id])
  # party.menu_items.create(menu_item_path)
  # redirect_to party_menu_items_path(party)
end
#  new_ordered_item GET    /ordered_items/new(.:format)      ordered_items#new
def new
    @ordered_items = OrderedItem.new
end

# edit_ordered_item GET    /ordered_items/:id/edit(.:format) ordered_items#edit

#      ordered_item GET    /ordered_items/:id(.:format)      ordered_items#show
def show
    @ordered_items = OrderedItem.find(params[:id])
    # redirect_to ordered_item_path(params[:id])
end

#                   PATCH  /ordered_items/:id(.:format)      ordered_items#update

#                   PUT    /ordered_items/:id(.:format)      ordered_items#update

#                   DELETE /ordered_items/:id(.:format)      ordered_items#destroy


private
def ordered_item_params
    params.require(:ordered_item).permit(:party, :menu_item, :name)
end

end
