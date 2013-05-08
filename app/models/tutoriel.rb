class Tutoriel
  include Mongoid::Document

  field :titre, type: String
  field :idCategorie, type: String
end
