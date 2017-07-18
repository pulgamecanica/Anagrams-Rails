class WordsController < ApplicationController

  def new_word
    @new_word = params[:new_word]
    @anagrams = anagrams_maker(@new_word)
  end

  def anagrams_maker(word)
    word = canonical(word)
    anagrams = Word.where("canonical = ?", word)
  end
  
  def canonical(word)
  word.downcase.chars.sort.join
  end
end
