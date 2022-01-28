class NearestStation < ApplicationRecord
  validates :line_name, length: {maximum: 255}
  validates :name, length: {maximum: 255}
  belongs_to :property
end
