class WelcomeController < ApplicationController
  def home
    if current_user.is_a? Owner
      return redirect_to owners_home_path
    end
  end

  def about
  end
end
