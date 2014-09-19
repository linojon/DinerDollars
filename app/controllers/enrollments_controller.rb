class EnrollmentsController < ApplicationController
  def index
    if current_user.admin?
      @enrollments = Enrollment.all

    elsif current_user.owner?
      #@shop = Shop.find :shop_id
      @shop = current_user.shop
      @enrollments = current_user.enrollments
    
      render :index_owner
    else  
    #customer 
      @shops = current_user.shops
      @enrollments = current_user.enrollments       
      render :index_customer
    end
  end

  def new
    @enrollment = Enrollment.new
    #authorize @enrollment
  end

  def show
    @enrollment = Enrollment.find(params[:id])
    
  end

  def update
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    authorize @enrollment
    authorize @points
    if @enrollment.save
      redirect_to @enrollment, notice: "Your enrollment was saved successfully."
    else
      flash[:error] = "Error creating enrollment. Please try again."
      render :new
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
      rewards = rewards + @rewards
      
    end
end
