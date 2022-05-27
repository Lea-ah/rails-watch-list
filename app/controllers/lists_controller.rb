class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  # User can see all lists:
  def index
    @lists = List.all
  end

  # A user can see the details of a given list and its name SHOW
  def show
  end

  # A user can create a new list CREATE NEW
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
      p 'You successfully added a List !'
    else
      render 'new'
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
