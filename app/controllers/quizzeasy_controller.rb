class QuizzeasyController < ApplicationController
  def index
    @question = Question.all.sample
    @answers = []
    @answers << { label: @question.correct_answer, correct: true }
    @answers << { label: @question.wrong_answer_1, correct: false }
    @answers << { label: @question.wrong_answer_2, correct: false }
    @answers << { label: @question.wrong_answer_3, correct: false }
    @answers.shuffle!
  end
end