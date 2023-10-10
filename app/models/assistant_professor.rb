class AssistantProfessor < UniversityStaff
  has_many :undergraduate_students, class_name: "Student"
  has_many :project_students, class_name: "Student"
  has_many :supervisees, class_name: "GraduateStudent", as: :supervisor
end
