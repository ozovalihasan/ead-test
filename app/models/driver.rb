class Driver < ApplicationRecord
  has_many :cars, as: :drivable
end
