class Balloon < ActiveRecord::Base
  validates :name, presence: true
end
