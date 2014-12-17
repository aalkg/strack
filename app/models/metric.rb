class Metric < ActiveRecord::Base
  belongs_to :sport
  has_many :activities, dependent: :destroy
  validates :name, :sport, :data_type, presence: true
end
