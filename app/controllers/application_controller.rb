class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end
  def play_rock
    render({ :template => "game_templates/user_rock.html.erb".html_safe })
  end
  def play_paper
    <% comp_move = ["rock", "paper", "scissors"].sample %>

    <% if comp_move == "paper" %>
      <h2>We tied!</h2>
    <% elsif comp_move == "scissors" %>
      <h2>We lost!</h2>
    <% elsif comp_move == "rock" %>
      <h2>We won!</h2>
    <% end %>

    render({ :template => "game_templates/user_paper.html.erb".html_safe })
  end
  def play_scissors
    render({ :template => "game_templates/user_scissors.html.erb".html_safe})
  end
end
