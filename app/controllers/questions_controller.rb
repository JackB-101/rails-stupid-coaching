class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    if @questions == "hello"
      @answers = "get to work"
    elsif params[:question].end_with?("?")
      @answers = "silly questions get to work"
    else
      @answers = "stop being lazy"
    end
  end
end
