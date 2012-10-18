class DaysController < ApplicationController
  @@breaktime = 1
  @@perHour = 900
  # POST /days
  # POST /days.json
  def create
  #  @day = Day.new(params[:day])
    @month = Month.find(params[:month_id])
    timein = params[:day][:timein]
    timeout = params[:day][:timeout]
    user = @month.year.user
    @day = @month.days.build(params[:day].merge(
                                 :dailyworkhours => dailyworkhours(timein, timeout),
                                 :totalamount => totalamount(timein, timeout, user)))
    respond_to do |format|
      if @day.save
       # format.html { redirect_to @month }
        format.js { @current_item = @day }
      else
        format.html { redirect_to @month }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day = Day.find(params[:id])
    @month = @day.month
    @day.destroy

    respond_to do |format|
      format.html { redirect_to @day.month }
      format.js
    end
  end

private

  def dailyworkhours(timein, timeout)
    #TO BE RETRIEVE FROM THE DATABASE
    #breaktime = 1
    total = timeout.to_i - timein.to_i - @@breaktime
    return total
  end

  def totalamount(timein, timeout, user)
    #TO BE RETRIEVE FROM THE DATABASE
    #perHour = 850
    total = (timeout.to_i - timein.to_i - @@breaktime) * user.perhour
  end

end
