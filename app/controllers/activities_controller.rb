class ActivitiesController < ApplicationController
  before_action :activity_params, only: [:create, :update]
  before_action :find_activity, only: [:show]


  def index
    @activities = Activity.all
  end

  def new
    @activity = current_user.activities.build()
    @metrics = Metric.all
  end

  def create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def import
    @activity = Activity.import(params[:file])
  end

  def show
  end

  private

  def activity_params
    params.require(:activity).permit(:user_id, :metric_id, :data, :date)
  end

  def find_activity
    @activity = Activity.find(params[:id])
  end
end

