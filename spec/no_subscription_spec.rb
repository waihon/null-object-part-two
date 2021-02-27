require "spec_helper"

describe NoSubscription do
  describe "#charge" do
    it "does not charge the credit card" do
      subscription = NoSubscription.new
      credit_card = double("credit_card")
      allow(credit_card).to receive(:charge)

      subscription.charge(credit_card)

      expect(credit_card).not_to have_received(:charge)
    end
  end

  describe "#has_mentoring?" do
    it "is falsey" do
      subscription = NoSubscription.new

      expect(subscription.has_mentoring?).to be false
    end
  end

  describe "#price" do
    it "is zero" do
      subscription = NoSubscription.new

      expect(subscription.price).to eq(0)
    end 
  end

  describe "#plan_name" do
    it "return No Plan" do
      subscription = NoSubscription.new

      expect(subscription.plan_name).to eq(User::NO_PLAN)
    end
  end
end