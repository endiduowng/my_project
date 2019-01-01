class SearchController < ApplicationController
  def index
    @rooms =
      if params[:term].nil?
        Array.new
      else
        Room.search params[:term]
      end
  end
end
