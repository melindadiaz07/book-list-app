class ReadingListsController < ApplicationController

  def index
    @reading_lists = ReadingList.all
  end

  def show
    @reading_list = ReadingList.find(params[:id])
  end
end
