# require 'test_helper'
#
# class UsersTest < ActiveSupport::TestCase
# end
#

class VkApi::TestGetUsers < ActiveSupport::TestCase
  def setup
    @getter = VkApi::GetUsers.new(1)
  end

  def test_get_user
    puts @getter.info
    assert 200, @getter.status
  end
end
