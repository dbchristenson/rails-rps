CHOICES = ["Rock", "Paper", "Scissors"]
OUTCOMES = {
  "Rock" => "Scissors",
  "Scissors" => "Paper",
  "Paper" => "Rock"
}

def computer_choice
  choice = CHOICES.sample
  return choice
end

def get_outcome(player_choice, computer_choice)
  ws = "We won!"
  ls = "We lost!"
  ts = "We tied!"
  if player_choice == computer_choice
    return ts
  elsif OUTCOMES[player_choice].include?(computer_choice)
    return ws
  else
    return ls
  end
end

class PagesController < ApplicationController
  def index
    render({ :template => "pages_templates/index" })
  end

  def rock
    @player_choice = "Rock"
    @computer_choice = computer_choice()
    @outcome = get_outcome(@player_choice, @computer_choice)

    render({ :template => "pages_templates/play" })
  end

  def paper
    @player_choice = "Paper"
    @computer_choice = computer_choice()
    @outcome = get_outcome(@player_choice, @computer_choice)

    render({ :template => "pages_templates/play" })
  end

  def scissors
    @player_choice = "Scissors"
    @computer_choice = computer_choice()
    @outcome = get_outcome(@player_choice, @computer_choice)

    render({ :template => "pages_templates/play" })
  end
end
