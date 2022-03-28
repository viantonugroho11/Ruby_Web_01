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

  def update
    item = Item.find(params[:id])
    item.update(params.require(:item).permit(:name, :price))

    redirect_to items_path
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy

    redirect_to items_path
  end
end
