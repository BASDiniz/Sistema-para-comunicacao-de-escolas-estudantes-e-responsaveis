class EstudantesController < ApplicationController
  before_action :set_estudante, only: [:show, :edit, :update, :destroy]

  # GET /estudantes
  # GET /estudantes.json
  def index
    @estudantes = Estudante.all
  end

  # GET /estudantes/1
  # GET /estudantes/1.json
  def show
  end

  # GET /estudantes/new
  def new
    @estudante = Estudante.new
  end

  # GET /estudantes/1/edit
  def edit
  end

  # POST /estudantes
  # POST /estudantes.json
  def create
    @estudante = Estudante.new(estudante_params)

    respond_to do |format|
      if @estudante.save
        format.html { redirect_to @estudante, notice: 'Estudante was successfully created.' }
        format.json { render :show, status: :created, location: @estudante }
      else
        format.html { render :new }
        format.json { render json: @estudante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudantes/1
  # PATCH/PUT /estudantes/1.json
  def update
    respond_to do |format|
      if @estudante.update(estudante_params)
        format.html { redirect_to @estudante, notice: 'Estudante was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudante }
      else
        format.html { render :edit }
        format.json { render json: @estudante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudantes/1
  # DELETE /estudantes/1.json
  def destroy
    @estudante.destroy
    respond_to do |format|
      format.html { redirect_to estudantes_url, notice: 'Estudante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudante
      @estudante = Estudante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudante_params
      params.require(:estudante).permit(:nome, :cpf, :turma_id)
    end
end
