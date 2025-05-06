class CategoriesController < ApplicationController
  def entries
    @category = Category.find(params[:id])
    @entries = @category.entries.includes(:user)
  end
end