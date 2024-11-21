# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def show
    @user = current_user
  end
  def edit
    @user = current_user
  end
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to profile_path
    else
      render ':edit'
    end
  end
  private
  def user_params
    params.require(:user).permit("email", )#указать поля пользователя которые могут быть обновлены)
  end
end
