class Word < ActiveRecord::Base
  attr_accessible :color, :meaning, :partofspeech, :points, :price, :sentence, :word
end
