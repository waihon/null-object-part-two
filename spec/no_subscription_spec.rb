require "spec_helper"

describe NoSubscription do
  describe "#charge" do
    it "does not charge the credit card" do
      subscription = NoSubscription.new
      credit_card = double("credit_card")
      credit_card.stub("charge")

      subscription.charge(credit_card)

      expect(credit_card).not_to have_received(:charge)
    end
  end
end