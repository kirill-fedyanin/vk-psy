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
        threads = []

        @users = result['items']
        count = result['count'].to_i
        ((count - 1000)/1000.0).ceil.times do |offset|
          threads << Thread.new(offset) { |offset_t| @users << make_request(offset_t)['items'] }
        end
        threads.map(&:join)
        @users.flatten
      end
    end

    private

    def make_request(offset=0)
      response = RestClient.post(method_url, params(offset))
      @status = response.code
      JSON.parse(response.body)['response']
    end


    def params(offset)
      {
        group_id: @group_id,
        offset: offset,
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
