defmodule TextClient.Mover do
  alias TextClient.State

  def make_move(game = %State{guess: guess}) do
    tally = Hangman.make_move(game.game_service, guess)
    %State{game | tally: tally}
  end
end
