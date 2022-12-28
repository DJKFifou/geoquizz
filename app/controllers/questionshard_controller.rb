class QuestionshardController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  # GET /questions or /questions.json
  def index
    @questionshard = Questionhard.all
  end

  # GET /questions/1 or /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @questionhard = Questionhard.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions or /questions.json
  def create
    @questionhard = Questionhard.new(question_params)

    respond_to do |format|
      if @questionhard.save
        format.html { redirect_to question_url(@questionhard), notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @questionhard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @questionhard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    respond_to do |format|
      if @questionhard.update(question_params)
        format.html { redirect_to question_url(@questionhard), notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @questionhard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @questionhard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    @questionhard.destroy

    respond_to do |format|
      format.html { redirect_to questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionhard
      @questionhard = Questionhard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionhard_params
      params.require(:questionhard).permit(:text, :correct_answerhard, :wrong_answerhard_1, :wrong_answerhard_2, :wrong_answerhard_3)
    end
end
