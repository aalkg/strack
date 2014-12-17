class Sport < ActiveRecord::Base
  has_many :metrics, dependent: :destroy
  #validates :name
end
