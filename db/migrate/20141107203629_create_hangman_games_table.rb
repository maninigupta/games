class CreateHangmanGamesTable < ActiveRecord::Migration
  def change
    create_table :hangman_games do |t|
      t.references :word
      t.references :user

      t.string :game_state, default: ''
      t.string :bad_guesses, default: ''

      t.timestamps
    end
  end
end
