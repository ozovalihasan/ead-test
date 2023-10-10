class Postcard < ApplicationRecord
  has_many :photographs, class_name: "Picture", as: :postable
  has_many :employees, through: :photographs, source: :imageable, source_type: "Employee" 
end
