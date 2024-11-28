# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @films = Film.all
  end

  def show
    @user = current_user
  end

end
