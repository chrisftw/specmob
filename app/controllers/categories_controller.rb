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
  
  # GET /projects/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # project /projects
  # project /projects.json
  # POST /Categories
  # POST /Categories.json
  def create
    @category = Category.create(params[:category])
    redirect_to :back
  end
  
  # PUT /categories/1
   # PUT /categories/1.json
   def update
     @category = Category.find(params[:id])

     respond_to do |format|
       if @category.update_attributes(params[:category])
         format.html { redirect_to :back, notice: 'category was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @category.errors, status: :unprocessable_entity }
       end
     end
   end
  
end