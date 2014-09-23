class OwnersController < ApplicationController
  def home
    @owner = User.new role: "Owner"
  end

  def summary
  end
end
