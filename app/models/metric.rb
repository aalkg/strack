class Metric < ActiveRecord::Base
  belongs_to :sport
  #validates :name, :sport_id, :data_type, presence: true
end
