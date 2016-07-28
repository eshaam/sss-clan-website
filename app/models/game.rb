class Game < ApplicationRecord
   validates :title, :website, :image, :presence => true
   validates :website, :url => true
   validates :image, :url => true

   has_many :gameplays

end
