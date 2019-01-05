class SearchController < ApplicationController
  def index
    if params[:term].nil?
      @rooms = []
    else
      @rooms = Room.search params[:term]
    end
  end
end
