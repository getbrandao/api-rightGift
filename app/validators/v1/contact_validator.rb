module V1
  class ContactValidator
    include ActiveModel::Validations

    attr_reader :scope

    def initialize attrs = {}, scope = :create
      @scope = scope

      @user_id = attrs[:user_id]
      @name = attrs[:name]
      @social_kind_id = attrs[:social_kind_id]
      @profile = attrs[:profile]
      @active = attrs[:active]
    end
    private
      validates :user_id, :name, :social_kind_id, :profile, :active, presence: true
      attr_accessor(:user_id, :name, :social_kind_id, :profile, :active)
  end
end
