module VkApi
  class Base
    BASE_URL = 'https://api.vk.com/method/'
    VERSION = '5.63'

    def info
      @info ||= make_request
    end

    def status
      @status || 0
    end

    private

    def method_url
      "#{BASE_URL}/#{method_name}"
    end

    def make_request
      response = RestClient.post(method_url, params)
      @status = response.code
      JSON.parse response.body
    end
  end
end
