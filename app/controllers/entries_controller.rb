class EntriesController < ApplicationController
  def summary
    @entry = Entry.find(params[:id])
    @user = @entry.user
    @categories = @entry.categories
  end
end
