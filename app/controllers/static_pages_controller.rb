class StaticPagesController < ApplicationController
  def home

  end

  def secret_pages
  	@users = User.all
  end
end
