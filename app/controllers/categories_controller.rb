class CategoriesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  # GET /posts/new
  # GET /posts/new.json
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category}
    end
  end
  
  # POST /Categories
  # POST /Categories.json
  def create
    @category = Category.create(params[:category])
    redirect_to :back
  end
end