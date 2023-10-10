class Letter < ApplicationRecord
  has_many :photographs, class_name: "Picture", as: :postable
  has_many :products, through: :photographs, source: :imageable, source_type: "Product" 
end
