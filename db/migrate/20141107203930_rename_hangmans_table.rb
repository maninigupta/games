class RenameHangmanTable < ActiveRecord::Migration
  def change
    rename_table :hangman, :hangman_games
  end
end
