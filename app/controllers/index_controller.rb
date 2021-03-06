class IndexController < ApplicationController
  def index
    @time = Time.new
    @users = User.all
    @user = User.find(current_user.id) if current_user
    @monthlyBills = Monthlybill.all
   # @currentMonthBills = @monthlyBills.find_by_duedate(:)

    respond_to do |format|
      format.html
    end
  end
end


private

def currentMonth
  time = Time.now
  return time.strftime("%B")
end