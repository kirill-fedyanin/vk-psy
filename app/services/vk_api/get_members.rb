module VkApi
  class GetMembers < Base
    # VkApi::GetMembers.new(10).info
    def initialize(group_id)
      @group_id = group_id
    end

    def info
      @info ||= make_request['items']
    end

    private

    def params
      {
        group_id: @group_id,
        count: 10,
        fields: [
          'bdate', 'city', 'country', 'universities', 'occupation', 'contacts'
        ],
        access_token: APP_TOKEN,
        v: VERSION
      }
    end

    def method_name
      'groups.getMembers'
    end
  end
end
