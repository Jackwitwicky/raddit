class LinksController < ApplicationController
  def index
    @link = Link.all
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def edit
    @link = Link.find(params[:id])
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      flash[:success] = "Your link has been saved successfully."
      redirect_to @link
    else
      render 'new'
    end
  end

  def update
    @link = Link.find(params[:id])

    @link.update(link_params)

    flash[:success] = "Your link has been edited successfully"
    redirect_to @link
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    flash[:success] = "Your link has been destroyed."
    redirect_to root_path
  end

  private
    def link_params
      params.require(:link).permit(:title, :url)
    end
end
