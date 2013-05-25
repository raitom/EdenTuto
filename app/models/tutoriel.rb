class Tutoriel
  include Mongoid::Document

  field :titre, type: String
  field :contenu, type: String
  field :id_categories, type: Integer

  belongs_to :category
end
