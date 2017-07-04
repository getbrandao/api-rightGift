module V1
  module ListGifts
    class FinderService
      def all object, params
        object.where(user_id: params)
      end
      def only object, params, user_id
        object.where(id: params, user_id: user_id).take
      end
    end
  end
end
