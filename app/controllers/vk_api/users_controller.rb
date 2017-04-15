module VkApi
  class UsersController < ApplicationController
    def show
      user_info = VkApi::GetUsers.new(params[:id]).info.first
      user = VkApi::UserSerializer.new(user_info)
      render json: { content: user.hash }, status: 200
    end
  end
end
