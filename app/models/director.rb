class Director < Employee
  has_many :clients, class_name: "User", as: :customer_representative
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
end
