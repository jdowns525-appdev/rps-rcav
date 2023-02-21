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
    render({ :template => "game_templates/user_paper.html.erb".html_safe })
  end
end
