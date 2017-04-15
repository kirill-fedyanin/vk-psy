module VkApi
  class GetUsers < Base
    # VkApi::GetUsers.new([1, 2, 'kirill.fedyanin']).info
    def initialize(user_ids)
      @user_ids = user_ids
    end

    private

    def params
      {
        user_ids: @user_ids,
        fields: [
          'bdate', 'city', 'country', 'universities', 'occupation', 'contacts'
        ],
        v: VERSION
      }
    end

    def method_name
      'users.get'
    end
  end
end
