class Admin::ProfileController < Admin::BaseController

  def show
    @admin = current_admin
  end

  def edit
    @admin = current_admin
  end

  def update
    @admin = current_admin
    if @admin.update(admin_params)
      redirect_to admin_path, notice: 'Admin profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end