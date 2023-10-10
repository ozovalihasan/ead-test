class Professor < UniversityStaff
  has_many :doctoral_students, class_name: "Student", as: :teachable
  has_many :supervisees, class_name: "GraduateStudent", as: :supervisor
end
