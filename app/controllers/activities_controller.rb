class ActivitiesController < ApplicationController
  before_action :set_user, except: [:show, :index]
  before_action :activity_params, only: [:create, :update]
  before_action :find_activity, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @activities = Activity.all
  end

  def new
    @activity = @user.activities.build()
    @metrics = Metric.all
  end

  def create
    @activity = @user.activities.create(activity_params)
    @activity.user = current_user
    @activity.save
    redirect_to activities_path(@activity)
  end

  def show
    @activity = @user.activities.create(activity_params)
  end

  private

  def set_user
    @user = current_user
  end

  def activity_params
    params.require(:activity).permit(:user_id, :metric_id, :data, :date)
  end

  def find_activity
    @activity = Activity.find(params[:id])
  end
end