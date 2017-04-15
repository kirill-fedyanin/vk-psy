module VkApi
  class GetUsers < Base
    def initialize(user_id)
      @user_id = user_id
    end

    def info
      @info ||= make_request
    end

    def status
      @status || 0
    end

    private

    def make_request
      response = RestClient.get(method_url + params)
      @status = response.code
      JSON.parse response.body
    end

    def params
      '?user_ids=1,2,2549954&fields=bdate,city,country,site,universities,occupation,contacts&v=5.63'
    end

    def method_name
      'users.get'
    end
  end
end
