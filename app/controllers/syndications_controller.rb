class SyndicationsController < ApplicationController


  def tour_urls
    @urls = Syndication.tour_urls
  end

  def tour_slides_descriptions
    @slide_descriptions = Syndication.tour_slides_descriptions
  end
end
