
class YearsController < ApplicationController
  # GET /years
  # GET /years.json
  def index
    @years = Year.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @years }
    end
  end

  # GET /years/1
  # GET /years/1.json
  def show
    @year = Year.find(params[:id])
    @months = @year.months

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @year }
    end
  end

  # GET /years/new
  # GET /years/new.json
  def new
    @year = Year.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @year }
    end
  end

  # GET /years/1/edit
  def edit
    @year = Year.find(params[:id])
  end

  # POST /years
  # POST /years.json
  def create
  #  @year = Year.new(params[:year])
  @user = User.find(params[:user_id])
  @year = @user.years.build(params[:year])
  @year.save

  redirect_to @user

  end

  # PUT /years/1
  # PUT /years/1.json
  def update
    @year = Year.find(params[:id])

    respond_to do |format|
      if @year.update_attributes(params[:year])
        format.html { redirect_to @year, notice: 'Year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.json
  def destroy
    @year = Year.find(params[:id])
    @year.destroy

    respond_to do |format|
      format.html { redirect_to years_url }
      format.json { head :no_content }
    end
  end
end
