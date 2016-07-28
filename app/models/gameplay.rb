class Gameplay < ApplicationRecord

  belongs_to :member
  belongs_to :game

  validates :link, :url => true
  validates :title, :length => { :minimum => 10 }
  validates :title, :link, :presence => true

  extend FriendlyId
  friendly_id :title, use: :slugged, :use => :history


  def is_image
    return true if link.include? 'imgur'
  end

  def is_youtube
    return true if link.include? 'youtube'
  end

  def youtube_video_id_from_link
    link.split('=').last
  end


end
