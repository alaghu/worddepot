require 'test_helper'
#todo Need to understand these tests in more detail


class WordsControllerTest < ActionController::TestCase
  setup do
    @word = words(:one)
    @update= {
        word: 'Stet',
        partofspeech: 'Noun',
        meaning: %{'A printer's term directing that a letter, word,
    or other matter marked for omission or correction is to be retained. },
        sentence: %{Irrespective of the time given to an editor,
the printer always has a stet prior the final publications},
        points: 9,
        color: 'Yellow',
        price: 2.2

    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word" do
    assert_difference('Word.count') do
      post :create, word: {color: @word.color, meaning: @word.meaning, partofspeech: @word.partofspeech, points: @word.points, price: @word.price, sentence: @word.sentence,
                           word: @word.word}  ,
           word:@update

    end

    assert_redirected_to word_path(assigns(:word))
  end

  test "should show word" do
    get :show, id: @word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word
    assert_response :success
  end

  test "should update word" do
    put :update, id: @word, word: {color: @word.color, meaning: @word.meaning, partofspeech: @word.partofspeech, points: @word.points, price: @word.price, sentence: @word.sentence, word: @word.word},
        word: @update
    assert_redirected_to word_path(assigns(:word))
  end

  test "should destroy word" do
    assert_difference('Word.count', -1) do
      delete :destroy, id: @word
    end

    assert_redirected_to words_path
  end
end
