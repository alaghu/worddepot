class Word < ActiveRecord::Base
  #http://railscasts.com/episodes/26-hackers-love-mass-assignment
  #todo understand mass assignments and hacking better
  attr_accessible :color, :meaning, :partofspeech, :points, :price, :sentence, :word

  # All validations are to be grouped by field

  #word
  validates :word, presence: true, uniqueness: {:message => " already
exists."}


  #meaning
  validates :meaning, presence: true

  #part of speech
  validates :partofspeech, presence: true


  #sentence
  #validates :sentence

  #points
  #validates :points

  #price
  validates :price, numericality: {greater_than_or_equal_to: 0.01}


  #color
  validates :color,
            inclusion: {in: ['White', 'Blue', 'Green', 'Yellow'],
                        message: 'We are accepting only White, Blue ,
                                   Green, or Yellow at this time.'}


end
