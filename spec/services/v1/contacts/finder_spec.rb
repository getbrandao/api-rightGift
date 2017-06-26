require 'rails_helper'

RSpec.describe V1::Contacts::FinderService, type: [:service, :contact], slow: true do
  subject {V1::Contacts::FinderService.new}
  let(:repository) { V1::Contact }
  let(:contacts) {create(:contacts)}
  let(:contacts01) {create(:contacts, user_id: contacts.user_id, name: "ExampleName01")}
  let(:result_contacts){subject.only(repository, contacts.id, contacts.user_id)}
  let(:result_contacts01){subject.only(repository, contacts01.id, contacts.user_id)}

  describe "Initialize" do

    before do
      contacts
      contacts01
      result_contacts
      result_contacts01
    end

    context "When use two records to return it" do
      it 'returns all records' do
        expect(subject.all(repository, contacts.user_id)).to eq [contacts, contacts01]
      end
    end

    context "When created two records and using it" do
      it 'find a record contacts comparing the result' do
        expect(result_contacts).to eq contacts
      end
      it 'find a record contacts_01 and compare the name field value' do
        expect(result_contacts01.name).to eq 'ExampleName01'
      end
    end
  end
end
