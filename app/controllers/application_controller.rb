class ApplicationController < ActionController::Base
  layout()

  # Add your actions below this line
  # ================================
  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end
#this is rock
  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

     if @comp_move == "rock" 
      @outcome = "tied"
    elsif @comp_move == "paper" 
      @outcome = "lost"
    elsif @comp_move == "scissors" 
      @outcome = "won"
    end 

    render({ :template => "game_templates/user_rock.html.erb", :layout => "wrapper.html.erb" })
  end
#this is paper
  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

     if @comp_move == "rock" 
      @outcome = "won"
    elsif @comp_move == "paper" 
      @outcome = "tied"
    elsif @comp_move == "scissors" 
      @outcome = "lost"
    end 

    render({ :template => "game_templates/user_paper.html.erb" })
  end
#this is scissors
  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample

     if @comp_move == "rock" 
      @outcome = "lost"
    elsif @comp_move == "paper" 
      @outcome = "won"
    elsif @comp_move == "scissors" 
      @outcome = "tied"
    end 

    render({ :template => "game_templates/user_scissors.html.erb" })
  end

  def rules
    render({ :template => "game_templates/rules.html.erb" })
  end

end
