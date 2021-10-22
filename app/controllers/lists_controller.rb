class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @movies = Movie.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
