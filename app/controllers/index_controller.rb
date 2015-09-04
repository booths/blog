class IndexController < ApplicationController
  skip_before_filter :authorize
  def show
    @docs = Doc.all
  end
end
