defmodule TextClient.Player do
  alias TextClient.{Mover, Prompter, State, Summary}

  # won ,lost, good, guess, bad guess, already used, initializing
  def play(%State{tally: %{game_state: :won}}) do
    exit_with_message("You've won!")
  end

  def play(%State{tally: %{game_state: :lost}}) do
    exit_with_message("Sorry, you've lost!")
  end

  def play(game = %State{tally: %{game_state: :good_guess}}) do
    continue_with_message(game, "Good guess!")
  end

  def play(game = %State{tally: %{game_state: :bad_guess}}) do
    continue_with_message(game, "Sorry, not in the word!")
  end

  def play(game = %State{tally: %{game_state: :already_used}}) do
    continue_with_message(game, "You have already used that letter")
  end

  def play(game = %State{tally: %{game_state: :guess_bad_length}}) do
    continue_with_message(game, "You can only guess one letter at a time")
  end

  def play(game = %State{tally: %{game_state: :guess_bad_range}}) do
    continue_with_message(game, "The guess has to be lower case and between a and z")
  end

  def play(game) do
    continue(game)
  end

  def continue(game) do
    game
    |> Summary.display()
    |> Prompter.accept_move()
    |> Mover.make_move()
    |> play()
  end

  def make_move(game) do
    game
  end

  defp continue_with_message(game, msg) do
    IO.puts(msg)
    continue(game)
  end

  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal)
  end
end
