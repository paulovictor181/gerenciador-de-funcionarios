class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: %i[ show edit update destroy ]

  # GET /funcionarios or /funcionarios.json
  def index
    @funcionarios = Funcionario.all

    # Filtros
    if params[:departamento_id].present?
      @funcionarios = @funcionarios.where(departamento_id: params[:departamento_id])
    end

    if params[:data_inicio].present? && params[:data_fim].present?
      @funcionarios = @funcionarios.where(data_contratacao: params[:data_inicio]..params[:data_fim])
    end
  end

  # GET /funcionarios/1 or /funcionarios/1.json
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit
  end

  # POST /funcionarios or /funcionarios.json
  def create
    @funcionario = Funcionario.new(funcionario_params)

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to funcionarios_url, notice: "Funcionario cadastrado com sucesso." }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcionarios/1 or /funcionarios/1.json
  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to funcionarios_url, notice: "Funcionario atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @funcionario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcionarios/1 or /funcionarios/1.json
  def destroy
    @funcionario.destroy!

    respond_to do |format|
      format.html { redirect_to funcionarios_url, notice: "Funcionario excluido com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funcionario_params
      params.require(:funcionario).permit(:nome_completo, :data_nascimento, :genero, :cpf, :rg, :endereco, :numero, :complemento, :bairro, :cidade, :estado, :cep, :telefone, :email, :cargo_id, :data_contratacao, :salario, :status)
    end
end
