class WelcomeController < ApplicationController
  def home
    # debugger
    if current_user 
      if current_user.owner?
        redirect_to owners_home_path
      elsif current_user.customer?
        redirect_to customer_enrollments_path(current_user)
      end
    end
  end

  def about
  end
end
