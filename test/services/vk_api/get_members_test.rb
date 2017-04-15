require 'test_helper'

class VkApi::GetMembersTest < ActiveSupport::TestCase
  def setup
    @getter = VkApi::GetMembers.new(12)
  end

  def test_get_user
    puts "*"*90
    p @getter.info
    assert 200, @getter.status
  end
end
