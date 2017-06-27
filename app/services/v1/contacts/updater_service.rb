module V1
  module Contacts
    class UpdaterService
      def update object, params
        return object.update(params), 200 if validator_contact params
        return V1::ErrorSerializer.serialize(@contact.errors), 422
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
