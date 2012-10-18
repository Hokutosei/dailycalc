class BillsController < ApplicationController
  # POST /bills
  # POST /bills.json
  def create
    @monthlybill = Monthlybill.find(params[:monthlybill_id])
    @bill = @monthlybill.bills.build(params[:bill])
    #@day = @month.days.build(params[:day].merge(

    respond_to do |format|
      if @bill.save
        #format.html { redirect_to @monthlyBill }
        format.js
      else
        format.html { render action: "new" }
      end
    end
  end


  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill = Bill.find(params[:id])
    @monthlybill = @bill.monthlybill
    @bill.destroy

    respond_to do |format|
      format.html { redirect_to monthlybill_bills_path }
      #format.html { redirect_to @day.month }
      format.js
    end
  end
end
