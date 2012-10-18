module MonthlybillsHelper
  def bill_category
    category = %w{electricity gas water internet}
  end

  def paymentConfirmation
    confirmation = %w{payed notPayed}
  end

end
