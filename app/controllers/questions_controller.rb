class QuestionsController < ApplicationController
  def question# Store the question as a string
  end

  def answer
    @question = params[:question]
    @answer = case @question
    when "I am going to work"
      "Great!"
    when /.*\?.*/
      "Silly question, get dressed and go to work!."
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
