class SuscriptionsController < ApplicationController
  def create
    @suscription = Suscription.new(suscription_params)
    if @suscription.save
      flash[:notice] = '¡Te haz suscripto satisfactoriamente! ¡Esperanos!'
    else
      flash[:alert] = 'Parece que tu correo no es válido, intenta nuevamente'
    end
    redirect_to root_path
  end

private

  def suscription_params
    params.require(:suscription).permit(:email)
  end
end
