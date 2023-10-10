class Car < Vehicle
  belongs_to :drivable, polymorphic: true
  belongs_to :technician
end
