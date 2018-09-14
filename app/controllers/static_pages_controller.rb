class StaticPagesController < ApplicationController
  def index
    @suscription = Suscription.new
  end
end
