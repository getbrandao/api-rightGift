module V1
  module ListGifts
    class CreatorService
      def create object, params
        return object.create(params), 201 if validator_list_gift params
        return V1::ErrorSerializer.serialize(@list_gift.errors), 422
      end
      private
        def validator_list_gift params
          validation = V1::ListGiftValidator.new params
          return true if validation.valid?
          @list_gift = validation
          return false
        end
    end
  end
end
