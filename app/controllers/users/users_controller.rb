class Users::UsersController < ApplicationController

  def index
    # GET /users
    @users = User::User.all

    render json: @users
  end
end
