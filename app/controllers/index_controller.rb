class IndexController < ApplicationController
  def show
    @docs = Doc.all
  end
end
