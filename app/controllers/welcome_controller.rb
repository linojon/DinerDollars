class WelcomeController < ApplicationController
  def home
    if current_user
      return redirect_to owners_home_path
    end
  end

  def about
  end
end
