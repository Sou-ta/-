class Admin::SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = "新しい予定を追加しました"
      redirect_to admin_schedules_path
    else
      @schedule = Schedule.all
      render :index
    end
  end

  def index
    @schedules = Schedule.all

  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to admin_schedules_path
    else
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to admin_schedules_path, notice: "削除しました"
  end

  private

  def schedule_params
    params.require(:schedule).permit(:event_name, :start_time, :end_time, :event_status, :schedule_id)
  end
end
