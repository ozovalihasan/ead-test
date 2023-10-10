class Relation < ApplicationRecord
  belongs_to :fan, class_name: "User"
  belongs_to :famous_person, class_name: "User"
end
