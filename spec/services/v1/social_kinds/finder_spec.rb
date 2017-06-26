require 'rails_helper'

RSpec.describe V1::SocialKinds::FinderService, type: [:service, :social_kind], slow: true do
  subject {V1::SocialKinds::FinderService.new}
  let(:repository) { V1::SocialKind }
  let(:contact_repository) { V1::Contact }
  let(:social_kinds) {create(:social_kinds)}
  let(:social_kinds01) {create(:social_kinds, name: "ExampleName01")}
  let(:result_social_kinds){subject.only(repository, social_kinds.id)}
  let(:result_social_kinds01){subject.only(repository, social_kinds01.id)}
  let(:contacts) {create(:contacts, social_kind_id: social_kinds01.id)}
  let(:social_kinds_from_contact){subject.from_contact(repository, contacts.id)}

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
    context "When created a contact records and using it" do
      it 'find a record social_kinds01 from contact comparing the result' do
        expect(social_kinds_from_contact).to eq social_kinds01
      end
      it 'find a record social_kinds_01 from contact and compare the name field value' do
        expect(social_kinds_from_contact.name).to eq 'ExampleName01'
      end
    end
  end
end
