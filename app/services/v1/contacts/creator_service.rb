module V1
  module Contacts
    class CreatorService
      def create object, params
        return object.create(params), 201 if validator_contact params
        return @contact.errors.messages, 422
      end
      private
        def validator_contact params
          validation = V1::ContactValidator.new params
          return true if validation.valid?
          @contact = validation
          return false
        end
    end
  end
end
