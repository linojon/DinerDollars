class EnrollmentsController < ApplicationController
  def index
    # if current_user.admin?
    #   @enrollments = Enrollment.all

    # elsif current_user.owner?

    #   @shop = Shop.find(params[:id])
    
    #   render :index_owner
    # else  
    # #customer 
    #   #@shop = Shop.find(params[:id])
    #   @enrollment = Customer.shops.find(params[:id])
      
    #   render :index_customer
    # end

    # debugger
    if !current_user || (params[:customer_id] != current_user.id.to_s)
      return redirect_to root_path, notice: 'Not authorized'
    end
    @enrollments = current_user.enrollments
    @all_shops = Shop.all
  end

  def new
    @enrollment = Enrollment.new

  end

  def show
    @enrollment = Enrollment.find(enrollment_params)
    
  end

  def update
  end

  def create
    @enrollment = current_user.enrollments.build shop_id: params[:shop_id], points: 0
    # debugger
    if @enrollment.save
      redirect_to customer_enrollments_path(current_user), notice: "Your enrollment was saved successfully."
    else
      flash[:error] = "Error creating enrollment. Please try again."
      render :back
    end
  end

  def destroy
    @enrollment.destroy
    respond_to do |format|
      format.html { redirect_to customer_url, notice: 'Enrollment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  private

    def enrollment_params
      params.require(:enrollment).permit(:shop_id, :customer_id, :points)
    end
    
    def rewards
      if @points >= 250
        rewards = 25 + @rewards
        points = @points - 250
        points.save
      else
        @rewards
      end
    end

    def points_to_rewards
      points = 250 - @points 
    end

    def total_redeemed
      self.total_attribute(:total, new_total)
    end
end
