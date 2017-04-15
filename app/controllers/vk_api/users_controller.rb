class VkApi::UsersController < ApplicationController
  def show
    user_info = VkApi::GetUsers.new(params[:id]).info
    render json: { content: user_info }, status: 200
  end
end
