require "rails_helper"

RSpec.describe User::User, type: [:model, :user] do
  subject { User::User.new }
  let(:params_valid) { FactoryGirl.create(:users) }
  let(:params_invalid) {{ :name => nil, :password_digest => nil }}

  describe "Initialize" do
    context "when params doesn't has values" do
      it "excepct default values when to save user using 'nil' value as params" do
        expect(subject.save!(params_invalid)).to be_truthy
        expect(subject.name).to eq("")
        expect(subject.password_digest).to eq("")
      end
    end

    context "when params has values" do
      it "excepct success when to save user using values in all fields" do
        expect(subject.save(params_valid)).to be_truthy
      end
    end

  end

end
