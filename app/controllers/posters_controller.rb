class PostersController < ApplicationController
  before_action :set_poster, only: [:show, :edit, :update, :destroy]

  def index
    @posters = Poster.all
    #respond_with(@posters)
  end

  def show
    respond_with(@poster)
  end

  def new
    @poster = Poster.new
    respond_with(@poster)
  end

  def edit
  end

  def create
    @poster = Poster.new(poster_params)
    @poster.save
    respond_with(@poster)
  end

  def update
    @poster.update(poster_params)
    respond_with(@poster)
  end

  def destroy
    @poster.destroy
    respond_with(@poster)
  end

  private
    def set_poster
      @poster = Poster.find(params[:id])
    end

    def poster_params
      params.require(:poster).permit(:title, :content)
    end
end
