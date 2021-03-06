require "rails_helper"

RSpec.describe V1::User, type: [:model, :user] do
  subject { V1::User.new }
  let(:params_valid) { create(:users) }
  let(:params_invalid) { {} }

  describe "Initialize" do
    context "when params doesn't has values" do
      it "excepct messages error when to save user using the field email as value 'nil'" do
        expect(subject.save(params_invalid)).to be_falsey
      end
    end

    context "when params has values" do
      it "excepct success when to save user using values in all fields" do
        expect(params_valid.save).to be_truthy
      end
    end

  end

end
