class Student < User
  belongs_to :teachable, polymorphic: true
  belongs_to :assistant_professor
end
