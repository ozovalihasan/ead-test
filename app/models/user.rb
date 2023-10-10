class User < ApplicationRecord
  belongs_to :customer_representative, optional: true, polymorphic: true
  has_many :cars, as: :drivable
  has_many :followeds, class_name: "Relation", foreign_key: "famous_person_id"
  has_many :fans, through: :followeds
  has_many :followings, class_name: "Relation", foreign_key: "fan_id"
  has_many :famous_people, through: :followings
end
