module V1
  module ListGifts
    class UpdaterService
      def update object, params
        return object.update(params), 200 if validator_list_gift params
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
