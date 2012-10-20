module IndexHelper


  def currentMonth
    time = Time.new
    return time.strftime("%B").downcase
  end

  def redirectToMonth(u)
    time = Time.new
    @current_month = time.strftime("%B")
    @user = User.find(u.id)
    @month = @user.months.find_by_month("#{@current_month.downcase}")
    return @month.month
  end

  def totalDailyWorkHours(user, month)
    a = user.months.find_by_month("#{month.downcase}")
    return a.days.sum(:dailyworkhours)
  end

  def totalAmount(user, month)
    a = user.months.find_by_month("october")
    return a.days.sum(:totalamount)
  end

  def getTotalAmountFromColumn(user, month, column)

  end

  def getMonthId
    time = Time.new
    @current_month = time.strftime("%B")
    @month = current_user.months.find_by_month("#{currentMonth}")
    return @month.id
  end

  def currentMonthDayCount
    @user = User.find(current_user.id)
    @month = @user.months.find_by_month("#{currentMonth}")
    return @month.days.count
  end

  def userCurrentMonth
    @user = User.find(current_user.id)
    @month = @user.months.find_by_month("#{currentMonth}")
    return @month.month.titlecase
  end

  def pluralizeDay
    @month = current_user.months.find_by_month("#{currentMonth}")
    if @month.days.count > 1
      "day".pluralize(2)
    else
      return "day"
    end

  end
end
