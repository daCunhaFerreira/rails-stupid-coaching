class QuestionsController < ApplicationController
 X = "I am going to work"
 Y = "Great!"
 Z = "Silly question, get dressed and go to work!"
 XY = "I don't care, get dressed and go to work!"
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(b)
    ifquestion?(b) ? Z : ((b === X) ? Y : XY)
  end

  def ifquestion?(a)
    (a === nil) ? false : a.end_with?("?")
  end


end
