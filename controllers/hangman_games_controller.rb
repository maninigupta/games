class HangmanGamesController < ApplicationController

  get '/' do
    erb :'hangman_games/index'
  end

  # "/hangman/new"
  post '/new' do
    content_type :json
    game = HangmanGame.create()
    {
      word: game.word.word,
      game_id: game.id,
      game_state: game.game_state,
      bad_guesses: game.bad_guesses,
      }.to_json
  end

  # accent_sent_from_client = params[:accentFromClient]
  # sentence_sent_from_client = params[:sentenceFromClient]

  # case accent_sent_from_client
  #   when 'daffy'
  #     sentence_processed_by_server = sentence_sent_from_client.gsub(/s/i, 'th')
  #   when 'elmer'
  #     sentence_processed_by_server = sentence_sent_from_client.gsub(/r/i, 'w')
  #   else
  #     sentence_processed_by_server = sentence_sent_from_client
  # end

  #   {
  #     accent_from_server: accent_sent_from_client,
  #     sentence_from_server: sentence_processed_by_server
  #   }.to_json
  # end
end