class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

    def index
    @activity = Activity.new
    @activities = Activity.all
    @categories = ['Basketball', 'Football', 'Running']
  end
end


# FRIDAY 12TH DECEMBER TO DO LIST
# Etre en mesure de creer une activite et la relier a un show sur une autre page
# Link new activity creation to a show


# facebook connect
