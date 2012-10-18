
class MonthlybillsController < ApplicationController
  # GET /monthlybills
  # GET /monthlybills.json
  def index
    @monthlybills = Monthlybill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monthlybills }
    end
  end

  # GET /monthlybills/1
  # GET /monthlybills/1.json
  def show
    @monthlybill = Monthlybill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monthlybill }
    end
  end

  # GET /monthlybills/new
  # GET /monthlybills/new.json
  def new
    @monthlybill = Monthlybill.new
    @this_test_item = params[:repetitionField].to_i
    @test = "test"


    respond_to do |format|
      format.html # new.html.erb
      format.js
      format.json { render json: @monthlybill }
    end
  end

  # GET /monthlybills/1/edit
  def edit
    @monthlybill = Monthlybill.find(params[:id])
  end

  # POST /monthlybills
  # POST /monthlybills.json
  def create
    @monthlybill = Monthlybill.new(params[:monthlybill])

    respond_to do |format|
      if @monthlybill.save
        format.html { redirect_to @monthlybill, notice: 'Monthlybill was successfully created.' }
        format.json { render json: @monthlybill, status: :created, location: @monthlybill }
      else
        format.html { render action: "new" }
        format.json { render json: @monthlybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monthlybills/1
  # PUT /monthlybills/1.json
  def update
    @monthlybill = Monthlybill.find(params[:id])

    respond_to do |format|
      if @monthlybill.update_attributes(params[:monthlybill])
        format.html { redirect_to @monthlybill, notice: 'Monthlybill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monthlybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthlybills/1
  # DELETE /monthlybills/1.json
  def destroy
    @monthlybill = Monthlybill.find(params[:id])
    @monthlybill.destroy

    respond_to do |format|
      format.html { redirect_to monthlybills_url }
      format.json { head :no_content }
    end
  end
end
