# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    @usuario = Usuario.find_by(email: params[:email])
    if @usuario&.authenticate(params[:senha])
      session[:usuario_id] = @usuario.id
      redirect_to root_path, notice: "Login efetuado com sucesso!"
    else
      flash.now[:alert] = "Email ou senha inválidos"
      render :new
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to root_path, notice: "Logout efetuado com sucesso!"
  end
end
