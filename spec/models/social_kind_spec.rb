require "rails_helper"

RSpec.describe V1::SocialKind, type: [:model, :social_kind] do
  subject { V1::SocialKind.new }
  let(:params_valid) { create(:social_kinds) }
  let(:params_invalid) {{ :name => nil }}

  describe "Initialize" do
    context "when params doesn't has values" do
      it "excepct default value when to save user using 'nil' value as params" do
        expect(subject.save!(params_invalid)).to be_truthy
        expect(subject.name).to eq('example')
        # pry
      end
    end

    context "when params has values" do
      it "excepct success when to save user using values in all fields" do
        expect(subject.save(params_valid)).to be_truthy
      end
    end

  end

end
