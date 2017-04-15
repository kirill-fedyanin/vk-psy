module VkApi
  class GroupMembersController < ApplicationController
    def index
      member_info = VkApi::GetMembers.new(params[:group_id]).info
      users = member_info.map do |member|
        VkApi::UserSerializer.new(member).hash
      end
      render json: { content: users }, status: 200
    end
  end
end
