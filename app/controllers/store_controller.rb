class StoreController < ApplicationController
  def index
    @words=Word.order(:word)
  end
end
