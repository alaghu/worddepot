require 'test_helper'

#There are currently two tests
#word attributes must not be empty
#word price must be positive
#todo Color can be only 'White', 'Blue', 'Green', 'Yellow' - Currently
#failing.
#Not sure why.

class WordTest < ActiveSupport::TestCase
  test "word attributes must not be empty" do

    #Learn: creating a new object from class Word.Note the Object has lower  'w'
    #letter 'W' vs Class has capital  'W'. That is the naming convention used
    #in ruby

    #defining a new object
    word= Word.new

    #Learn: word object has been created but no defined any attributes
    #like word, meaning, etc

    #Learn: assert method looks for true value to be returned
    #checking if the object is invalid
    assert word.invalid?

    #checking if there are any errors being returned from the attributes
    assert word.errors[:word].any?
    assert word.errors[:partofspeech].any?
    assert word.errors[:sentence].any?
    assert word.errors[:price].any?
    assert word.errors[:points].any?
    assert word.errors[:meaning].any?
    assert word.errors[:color].any?

    #todo Since sentence , points and color do not have validation in model
    #these tests are failing.


  end

  test "word price must be positive" do
    #In this test we want to test three conditions
    #Negative, Zero (Should fail)
    #positive ( Should pass)

    #initializing the object
    word= Word.new(word: 'Malarkey',
                   meaning: %{Exaggerated or foolish talk; nonsense.},
                   sentence: %{It does not matter if people are smart. Sometime
it is pure malarkey.},
                   partofspeech: 'Noun')

    word.price = -10
    assert word.invalid?
    assert_equal "must be greater than or equal to 0.01",
                 word.errors[:price].join('; ')

    word.price = 0
    assert word.invalid?
    assert_equal "must be greater than or equal to 0.01",
                 word.errors[:price].join('; ')

    word.price = 1
    assert word.invalid?
  end

  def new_word(color)
    Word.new(word: 'Malarkey',
             meaning: %{Exaggerated or foolish talk; nonsense.},
             sentence: %{It does not matter if people are smart. Sometime
it is pure malarkey.},
             price: 1,
             color: color)
  end

  test "Color can be only one of the four" do
    good = %w{ Blue Green Yellow }
    bad = %w{ white Red yellow Orange }

=begin
    good.each do |colorvalue|
      assert new_word(colorvalue).valid?, "#{colorvalue} #{new_word(colorvalue).valid?} - #{new_word(colorvalue).errors.full_messages} -
#{colorvalue} should not be invalid. It should be only the four."
    end
=end


    bad.each do |colorvalue|
      assert new_word(colorvalue).invalid?, "#{colorvalue} should not be valid"
    end


  end


  test "Word has to be unique" do
    word = Word.new(word: words(:familiarity).word,
                     meaning: %{Exaggerated or foolish talk; nonsense.},
                     sentence: %{It does not matter if people are smart. Sometime
it is pure malarkey.},
                     partofspeech: 'Noun'

    )

    assert !word.save
    assert_equal "has already been taken", word.errors[:word].join(';')
  end


end


