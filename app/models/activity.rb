class Activity < ActiveRecord::Base
  attr_reader :sport
  belongs_to :metric
  belongs_to :user
end