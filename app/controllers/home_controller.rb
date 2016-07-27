class HomeController < ApplicationController

  def index
    @highlights = Highlight.homepage.all
  end
end
