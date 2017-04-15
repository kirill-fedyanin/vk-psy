require 'test_helper'

class VkApi::GetUsersTest < ActiveSupport::TestCase
  def setup
    @getter = VkApi::GetUsers.new(['kirill.fedyanin'])
  end

  def test_get_user
    puts @getter.info
    assert 200, @getter.status
  end
end
