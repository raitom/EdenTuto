class Tutoriel
  include Mongoid::Document

  field :titre, type: String
  field :idCategorie, type: String
  field :contenu, type: Text
end
