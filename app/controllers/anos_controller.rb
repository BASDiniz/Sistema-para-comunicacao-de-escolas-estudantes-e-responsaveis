class AnosController < ApplicationController
  before_action :set_ano, only: [:show, :edit, :update, :destroy]

  # GET /anos
  # GET /anos.json
  def index
    @anos = Ano.all
  end

  # GET /anos/1
  # GET /anos/1.json
  def show
  end

  # GET /anos/new
  def new
    @ano = Ano.new
  end

  # GET /anos/1/edit
  def edit
  end

  # POST /anos
  # POST /anos.json
  def create
    @ano = Ano.new(ano_params)

    respond_to do |format|
      if @ano.save
        format.html { redirect_to @ano, notice: 'Ano was successfully created.' }
        format.json { render :show, status: :created, location: @ano }
      else
        format.html { render :new }
        format.json { render json: @ano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anos/1
  # PATCH/PUT /anos/1.json
  def update
    respond_to do |format|
      if @ano.update(ano_params)
        format.html { redirect_to @ano, notice: 'Ano was successfully updated.' }
        format.json { render :show, status: :ok, location: @ano }
      else
        format.html { render :edit }
        format.json { render json: @ano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anos/1
  # DELETE /anos/1.json
  def destroy
    @ano.destroy
    respond_to do |format|
      format.html { redirect_to anos_url, notice: 'Ano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ano
      @ano = Ano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ano_params
      params.require(:ano).permit(:nome, :turno, :escola_id)
    end
end
