class Technician < ApplicationRecord
  has_one :car
  has_one :driver, through: :car, source: :drivable, source_type: "Driver" 
end
