class TutocenterController < ApplicationController
  layout "tutocenter"

  def index
  end

  def afficherTuto
    begin
      @tuto = Tutoriel.find(params[:slug])
    rescue Mongoid::Errors::DocumentNotFound
      render 'layouts/tutocenter/erreur_404'
    end
  end
end
