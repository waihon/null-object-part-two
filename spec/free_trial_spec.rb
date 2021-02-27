require "spec_helper"

describe FreeTrial do
  describe "#charge" do
    it "does not charge the credit card" do
      subscription = FreeTrial.new
      credit_card = double("credit_card")
      allow(credit_card).to receive(:charge)

      subscription.charge(credit_card)

      expect(credit_card).not_to have_received(:charge)
    end
  end

  describe '#has_mentoring?' do
    it 'returns true' do
      subscription = FreeTrial.new

      expect(subscription.has_mentoring?).to be_truthy
    end
  end
end