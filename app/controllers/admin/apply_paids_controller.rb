class Admin::ApplyPaidsController < ApplicationController
  def index
    @apply_paid = ApplyPaid.all
  end

  def show
    @apply_paid = ApplyPaid.find(params[:id])
  end

  def update
    @apply_paid = ApplyPaid.find(params[:id])
    #binding.pry
    if @apply_paid.update(apply_paid_params)
      redirect_to admin_apply_paids_path
    else
      render :show
    end
  end

  def apply_paid_params
    params.require(:apply_paid).permit(:apply_status)
  end

end
