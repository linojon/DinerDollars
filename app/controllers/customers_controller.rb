class CustomersController < ApplicationController
  def index
    
  end
  def show
    @customer = customer.find(params[:id])
    
  end
  def new
    @customer = Customer.new
    
  end
  private

  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end