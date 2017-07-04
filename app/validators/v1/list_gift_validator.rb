module V1
  class ListGiftValidator
    include ActiveModel::Validations

    attr_reader :scope

    def initialize attrs = {}, scope = :create
      @scope = scope

      @user_id = attrs[:user_id]
      @contact_id = attrs[:contact_id]
      @name = attrs[:name]
      @image = attrs[:image]
      @celebration = attrs[:celebration]
    end
    private
      validates :user_id, :name, :contact_id, :image, :celebration, presence: true
      attr_accessor(:user_id, :name, :contact_id, :image, :celebration)
  end
end
