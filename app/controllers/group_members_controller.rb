class GroupMembersController < ApplicationController
  def index
    member_info = VkApi::GetMembers.new(params[:group_id]).info
    @users = member_info.map do |member|
      VkApi::UserSerializer.new(member).hash
    end

    respond_to do |format|
      format.xlsx
    end
  end
end
