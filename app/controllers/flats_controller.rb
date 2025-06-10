class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  # Nouvelle action : Affiche le formulaire pour un nouvel appartement
  def new
    @flat = Flat.new # Crée une instance vide de Flat pour le formulaire
  end

  def show
    @flat = Flat.find(params[:id])
  end

  # Nouvelle action : Traite la soumission du formulaire
  def create
    @flat = Flat.new(flat_params) # Crée un appartement avec les données du formulaire
    if @flat.save # Tente de sauvegarder l'appartement (les validations seront exécutées ici)
      redirect_to flat_path(@flat), notice: 'Appartement créé avec succès !' # Redirige vers la page de détails du nouvel appartement
    else
      render :new, status: :unprocessable_entity # Réaffiche le formulaire 'new' avec les erreurs si échec
    end
  end

  def edit
    # @flat est déjà défini par before_action :set_flat
  end

  # Nouvelle action : Traite la soumission du formulaire de modification
  def update
    if @flat.update(flat_params) # Tente de mettre à jour l'appartement
      redirect_to flat_path(@flat), notice: 'Appartement mis à jour avec succès !'
    else
      render :edit, status: :unprocessable_entity # Réaffiche le formulaire 'edit' avec les erreurs si échec
    end
  end

  def destroy
    @flat.destroy # Supprime l'appartement de la base de données
    redirect_to flats_path, notice: 'Appartement supprimé avec succès !', status: :see_other # Redirige vers la liste des appartements
  end

  private # Les méthodes en dessous sont des méthodes auxiliaires, non des actions publiques

  # Trouve l'appartement par son ID avant les actions spécifiées
  def set_flat
    @flat = Flat.find(params[:id])
  end

  # Méthode privée pour sécuriser les paramètres reçus du formulaire (Strong Parameters)
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url) # <-- AJOUTEZ :picture_url
  end
end
