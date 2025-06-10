class Flat < ApplicationRecord
  # Assure que le nom est toujours présent et qu'il est unique,
  # ou juste présent selon les besoins de ton application.
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true, numericality: { greater_than: 0 }
  validates :number_of_guests, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 10 } # Exemple, tu peux ajuster la limite
  # Tu peux aussi ajouter des validations pour les autres attributs si ce n'est pas déjà fait
  # par exemple:
  # validates :address, presence: true
  # validates :description, presence: true
  # validates :price_per_night, presence: true, numericality: { only_integer: true, greater_than: 0 }
  # validates :number_of_guests, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
