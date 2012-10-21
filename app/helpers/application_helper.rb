module ApplicationHelper

  def time
    time = Time.new
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def currentMonth
    time = Time.new
    time.strftime("%B").downcase
  end

  def thisMonth
    month = %w{october test}
  end

  def currentYearAndMonth
    time.strftime("%B-%y").downcase
  end

  def pageIsRegistrationOrSession
    if params[:controller] == 'devise/registrations' || params[:controller] == 'devise/sessions' || user_signed_in?
      return true
    end
  end

end
