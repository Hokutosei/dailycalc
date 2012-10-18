module IndexHelper

  def currentMonth
    time = Time.new
    return time.strftime("%B")
  end

  def redirectToMonth(u)
    time = Time.new
    @current_month = time.strftime("%B")
    @user = User.find(u.id)
    @month = @user.months.find_by_month("#{@current_month.downcase}")
    return @month.month
  end

  def totalDailyWorkHours(user, month)
    a = user.months.find_by_month("#{month}")
    return a.days.sum(:dailyworkhours)
  end

  def totalAmount(user, month)
    a = user.months.find_by_month("#{month}")
    return a.days.sum(:totalamount)
  end

  def getTotalAmountFromColumn(user, month, column)

  end

  def getMonthId(u)
    time = Time.new
    @current_month = time.strftime("%B")
    @user = User.find(u.id)
    @month = @user.months.find_by_month("#{@current_month.downcase}")
    return @month.id
  end

  def currentMonthDayCount(u)
    @user = User.find(u.id)
    @month = @user.months.find_by_month("#{currentMonth.downcase}")
    return @month.days.count
  end

end
