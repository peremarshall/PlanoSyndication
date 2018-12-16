class Syndication < ActiveRecord::Base

  scope :tour_urls, -> { where("name = ?", "tour_urls.txt") } 
  scope :tour_slides_descriptions, -> { where("name = ?", "tour_slides_descriptions.txt") } 

  def self.most_recent_urls
    Syndication.tour_urls.order("created_at desc, id desc").first
  end

  def self.most_recent_slide_descriptions
    Syndication.tour_slides_descriptions.order("created_at desc, id desc").first
  end
end
