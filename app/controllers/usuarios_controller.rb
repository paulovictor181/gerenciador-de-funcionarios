# app/controllers/usuarios_controller.rb
class UsuariosController < ApplicationController
  before_action :authenticate_user!
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.nivel_acesso = Usuario.niveis[:admin] if Usuario.count == 0

    if @usuario.save
      redirect_to root_path, notice: "Usuário cadastrado com sucesso!"
    else
      render :new
    end
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nome, :email, :senha, :nivel_acesso, departamento_ids: [])
  end
end
