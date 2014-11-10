class HangmanGame < ActiveRecord::Base
  belongs_to :word
  belongs_to :user

  before_create do
    self.word = Word.all.sample
    self.game_state = self.word.word.gsub(/\w/i, '_')
  end


  def guess_letter!(guess)
    guess_letter(guess)
    self.save
  end

  def guess_letter(guess)
    if letter_in_word?(guess)
      state = self.game_state.dup
      self.word.word.chars.each_with_index do |letter, idx|
        if letter == guess
          state[idx] == letter
        end
      end
      self.game_state = state # modify state
    end
  end


  def letter_in_word?(letter)
    self.word.word.include?(letter)
  end

  def complete?
    if game_state == self.word.word
    end
  end

end