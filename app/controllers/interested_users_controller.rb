class InterestedUsersController < ApplicationController

  def new
    @interested_user = InterestedUser.new
  end

  def create
    @interested_user = InterestedUser.new(interested_user_params)

    if @interested_user.save
      redirect_to root_path, notice: "Beste #{@interested_user.first_name} #{@interested_user.last_name} je informatie is succesvol opgeslagen. Hartelijk dank voor je vertrouwen in ons!"
    else
      render :new
    end
  end

  private

  def interested_user_params
    form_params
  end

  def form_params
    params.require(:interested_user).permit(:first_name, :last_name, :email, :company_kind)
  end
end
