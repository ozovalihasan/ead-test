class GraduateStudent < Student
  belongs_to :supervisor, optional: true, polymorphic: true
end
