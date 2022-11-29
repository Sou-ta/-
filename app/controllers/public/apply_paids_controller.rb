class Public::ApplyPaidsController < ApplicationController
  def new
    @apply_paid = ApplyPaid.new
  end

  def create
    @apply_paid = current_user.apply_paids.new(apply_paid_params)
    @apply_paid.end_time = @apply_paid.start_time
    @apply_paid.apply_status = 'waiting'
    if @apply_paid.save!(validate: false)
      redirect_to public_apply_paids_path, notice: "有給を申請しました"
    else
      render :new
    end

  end

  def index
    @apply_paid = current_user.apply_paids
  end

  def show
    @apply_paid = ApplyPaid.find(params[:id])
  end

  def destroy
  end

  private

  def apply_paid_params
    params.require(:apply_paid).permit(:start_time, :reason)
  end

end
