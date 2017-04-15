module VkApi
  class GetMembers < Base
    def initialize(group_id)
      @group_id = group_id
    end

    def info
      result = make_request
      if result['count'].to_i < 1000
        result['items']
      else
        users = result['items']
        count = result['count'].to_i
        ((count - 1000)/1000.0).ceil.times do |offset|
          @offset = (offset + 1) * 1000
          users += make_request['items']
        end
        users
      end
    end

    private

    def params()
      {
        group_id: @group_id,
        offset: @offset || 0,
        fields: [
          'bdate', 'city', 'country', 'universities', 'occupation', 'contacts',
          'about'
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
