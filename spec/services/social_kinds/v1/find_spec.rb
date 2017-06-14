require 'rails_helper'

RSpec.describe V1::SocialKinds::FindService, type: [:service, :social_kind], slow: true do
  let(:repository) { V1::SocialKind }
  subject {V1::SocialKinds::FindService.new}
  let(:social_kinds) {FactoryGirl.create(:social_kinds)}
  let(:social_kinds01) {FactoryGirl.create(:social_kinds, name: "ExampleName01")}
  let(:result_social_kinds){subject.only(repository, social_kinds.id)}
  let(:result_social_kinds01){subject.only(repository, social_kinds01.id)}

  describe "Initialize" do

    before do
      social_kinds
      social_kinds01
      result_social_kinds
      result_social_kinds01
    end

    context "When use two records to return it" do
      it 'returns all records' do
        expect(subject.all(repository)).to eq [social_kinds, social_kinds01]
      end
    end

    context "When created two records and using it" do
      it 'find a record social_kinds comparing the result' do
        expect(result_social_kinds).to eq social_kinds
      end
      it 'find a record social_kinds_01 and compare the name field value' do
        expect(result_social_kinds01.name).to eq 'ExampleName01'
      end
    end
  end
end
