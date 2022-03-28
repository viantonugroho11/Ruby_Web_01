class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    # show data
    @item = Item.find(params[:id])

  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create(params.require(:item).permit(:name, :price))

    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end
end
