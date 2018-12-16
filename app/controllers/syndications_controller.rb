class SyndicationsController < ApplicationController


  def tour_urls
    feed = Syndication.most_recent_urls.body
    respond_to do |format|
      format.txt { render plain: feed }
    end
  end

  def tour_slides_descriptions
    feed = Syndication.most_recent_slide_descriptions.body
    respond_to do |format|
      format.txt { render plain: feed }
    end
  end
end
