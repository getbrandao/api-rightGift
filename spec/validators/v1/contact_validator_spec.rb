require 'rails_helper'

describe V1::ContactValidator, type: [:validator, :contact], slow: true do
  let(:errors) {subject.errors}

  before {subject.validate}

  context 'validate presence of' do
    it ':blank should be added for name field' do
      expect(errors.added? :name, :blank).to be_truthy
    end

    it ':blank should be added for user_id field' do
      expect(errors.added? :user_id, :blank).to be_truthy
    end

    it ':blank should be added for profile field' do
      expect(errors.added? :profile, :blank).to be_truthy
    end

    it ':blank should be added for social_kind_id field' do
      expect(errors.added? :social_kind_id, :blank).to be_truthy
    end

    it ':blank should be added for active field' do
      expect(errors.added? :active, :blank).to be_truthy
    end
  end

end
