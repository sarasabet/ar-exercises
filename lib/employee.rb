class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, :presence => true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

#  presence valica=daets not being empty/blanck
# two syntax bellow are same, 1. is newer 2. is older style
# :presence => true
# presence: true
# (mname:name) = (:name)