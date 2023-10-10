class Employee < User
  belongs_to :manager, optional: true, class_name: "Director"
  has_many :clients, class_name: "User", as: :customer_representative
  has_many :photographs, class_name: "Picture", as: :imageable
end
