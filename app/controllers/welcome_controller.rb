class WelcomeController < ApplicationController
  def home
    # debugger
    if current_user 
      if current_user.owner?
        return redirect_to owners_home_path
      elsif current_user.customer?
        return redirect_to customer_enrollments_path(current_user)
      end
    end
    @shops = Shop.all
  end

  def about
  end
end
