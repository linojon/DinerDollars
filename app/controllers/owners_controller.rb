class OwnersController < ApplicationController
  def home
    @user = User.new
  end

  def summary
  end
end
