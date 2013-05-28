class Tutoriel
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :titre, type: String
  slug :titre
  field :contenu, type: String
  field :id_categories, type: Integer

  belongs_to :category
end
