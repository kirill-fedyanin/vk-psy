module VkApi
  class Base
    BASE_URL = 'https://api.vk.com/method/'
    VERSION = '5.63'

    def initialize
    end

    def info
    end

    private

    def make_request
    end

    def method_url
      "#{BASE_URL}/#{method_name}"
    end
  end
end
