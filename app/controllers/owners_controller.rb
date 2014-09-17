class OwnersController < ApplicationController
  def home
    @owner = Owner.new
  end

  def summary
  end
end
