# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    @user = current_user
  end

end
