class Sport < ActiveRecord::Base
  has_many :metrics
  #validates :name
end
