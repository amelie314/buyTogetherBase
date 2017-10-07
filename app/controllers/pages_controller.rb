class PagesController < ApplicationController
  def homepage
    @stores = Store.all
  end
end
