
class BillcategoriesController < ApplicationController
  # GET /billcategories
  # GET /billcategories.json
  def index
    @billcategories = Billcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @billcategories }
    end
  end

  # GET /billcategories/1
  # GET /billcategories/1.json
  def show
    @billcategory = Billcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @billcategory }
    end
  end

  # GET /billcategories/new
  # GET /billcategories/new.json
  def new
    @billcategory = Billcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @billcategory }
    end
  end

  # GET /billcategories/1/edit
  def edit
    @billcategory = Billcategory.find(params[:id])
  end

  # POST /billcategories
  # POST /billcategories.json
  def create
    @billcategory = Billcategory.new(params[:billcategory])

    respond_to do |format|
      if @billcategory.save
        format.html { redirect_to @billcategory, notice: 'Billcategory was successfully created.' }
        format.json { render json: @billcategory, status: :created, location: @billcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @billcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /billcategories/1
  # PUT /billcategories/1.json
  def update
    @billcategory = Billcategory.find(params[:id])

    respond_to do |format|
      if @billcategory.update_attributes(params[:billcategory])
        format.html { redirect_to @billcategory, notice: 'Billcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @billcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billcategories/1
  # DELETE /billcategories/1.json
  def destroy
    @billcategory = Billcategory.find(params[:id])
    @billcategory.destroy

    respond_to do |format|
      format.html { redirect_to billcategories_url }
      format.json { head :no_content }
    end
  end
end
