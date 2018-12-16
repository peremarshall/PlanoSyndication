class Syndication < ActiveRecord::Base

  scope :tour_urls, -> { where("name = ?", "tour_urls.txt") } 
  scope :tour_slides_descriptions, -> { where("name = ?", "tour_slides_descriptions.txt") } 
end
