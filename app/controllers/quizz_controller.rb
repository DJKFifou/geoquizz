class QuizzController < ApplicationController
  # GET /questions or /questions.json
  def index
    @quizz = Quizz.all
  end
end
