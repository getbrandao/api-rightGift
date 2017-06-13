require "rails_helper"

RSpec.describe V1::User, type: [:model, :user] do
  subject { V1::User }
  let(:params_valid) { attributes_for(:users) }
  let(:params_invalid) { attributes_for(:users, email: '') }

  describe "Initialize" do
    context "when params doesn't has values" do
      it "excepct messages error when to save user using the field email as value 'nil'" do
        expect(subject.create(params_invalid).errors.messages[:email].empty?).to be_falsey
      end
    end

    context "when params has values" do
      it "excepct success when to save user using values in all fields" do
        expect(subject.create(params_valid)).to be_truthy
      end
    end

  end

end
