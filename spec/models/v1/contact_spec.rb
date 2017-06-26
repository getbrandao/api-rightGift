require "rails_helper"

RSpec.describe V1::Contact, type: [:model, :contact] do
  subject { V1::Contact.new }
  let(:params_valid) { create(:contacts) }
  let(:params_invalid) { {} }

  describe "Initialize" do
    context "when params doesn't has values" do
      it "excepct default value when to save user using 'nil' value as params for all" do
        expect(subject.save(params_invalid)).to be_falsey
        expect(subject.name).to eq('contact')
      end
    end

    context "when params has values" do
      it "excepct success when to save user using values in all fields" do
        expect(params_valid.save).to be_truthy
      end
    end

  end

end
