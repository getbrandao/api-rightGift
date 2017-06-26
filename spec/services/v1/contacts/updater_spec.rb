require 'rails_helper'

RSpec.describe V1::Contacts::UpdaterService, type: [:service, :contact], slow: true do
  subject {V1::Contacts::UpdaterService.new}
  let(:repository) { V1::Contact }
  let(:contact) {create(:contacts)}
  let(:contact_not_exists) {attributes_for(:contacts)}
  let!(:contact_update) {attributes_for(:contacts, id: contact.id, name: "ExampleUpdate01")}

  describe "Initialize" do


    context "Update a record when doesn't exist and return it" do
      it "save a record when doesn't exist" do
        expect(subject.update(repository, contact_not_exists)).to be_truthy
      end

      it 'returns success and its name' do
        expect(subject.update(repository, contact_update)).to be_truthy
      end
    end
  end
end
