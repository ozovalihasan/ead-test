class Product < ApplicationRecord
  has_many :photographs, class_name: "Picture", as: :imageable
end
