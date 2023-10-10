class Picture < ApplicationRecord
  belongs_to :postable, polymorphic: true
  belongs_to :imageable, polymorphic: true
end
