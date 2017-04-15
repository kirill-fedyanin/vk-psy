module VkApi
  class UserSerializer
    attr_reader :user

    def initialize(user)
      @user = user
    end

    def hash
      {
        'name' => name,
        'bdate' => user['bdate'],
        'city' => city,
        'study' => study
      }
    end

    def city
      user['city']['title']
    rescue
      nil
    end

    def name
      "#{user['first_name']} #{user['last_name']}"
    rescue
      nil
    end

    def study
      uni = user['universities'].last
      "#{uni['name']} /#{uni['faculty_name']}"
    rescue
      nil
    end
  end
end
