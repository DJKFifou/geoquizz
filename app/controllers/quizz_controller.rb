class QuizzController < ApplicationController
  def index
    @question = Question.all.sample
    @answers = []
    @answers << { label: @question.correct_answer, correct: true }
    @answers << { label: @question.wrong_answer_1, correct: false }
    @answers << { label: @question.wrong_answer_2, correct: false }
    @answers << { label: @question.wrong_answer_3, correct: false }
    @answers.shuffle!
  end
  def hard
    @questionhard = Questionhard.all.sample
    @answershard = []
    @answershard << { label: @questionhard.correct_answer, correct: true }
    @answershard << { label: @questionhard.wrong_answer_1, correct: false }
    @answershard << { label: @questionhard.wrong_answer_2, correct: false }
    @answershard << { label: @questionhard.wrong_answer_3, correct: false }
    @answershard.shuffle!
  end
end