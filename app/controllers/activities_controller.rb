class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :destroy]

  def index
    @activity = Activity.new
    @metrics = Metric.all
  end


  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    respond_to do |format|
      if @activity.save
        format.js
      else
        render :new
      end
    end
  end

  def destroy
    @id = @activity.id
    @activity.destroy
    respond_to do |format|
      format.js
    end
  end

  def import
    @activity = Activity.import(params[:file])
  end

  def show
  end

  private

  def activity_params
    params.require(:activity).permit(:data, :date, :metric_id)
  end

  def find_activity
    @activity = Activity.find(params[:id])
  end
end

