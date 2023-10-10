class Teacher < ApplicationRecord
  has_many :students, as: :teachable
  has_many :supervisees, class_name: "GraduateStudent", as: :supervisor
end
