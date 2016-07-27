class Highlight < ApplicationRecord
  validates :title, :image, :presence => true
end
