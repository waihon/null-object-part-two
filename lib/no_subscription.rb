class NoSubscription
  def charge(credit_card)
  end

  def has_mentoring?
    false
  end

  def price
    0
  end

  def plan_name
    User::NO_PLAN
  end
end