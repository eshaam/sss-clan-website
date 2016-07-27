class Game < ApplicationRecord
   validates :title, :website, :image, :presence => true
end
