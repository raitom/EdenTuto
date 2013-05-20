class Category
  include Mongoid::Document

  field :nom, type: String

  embedded_in :tutocenter, :inverse_of => :categories

  def nouveauTutoriel titre
    Tutoriel.create!(titre: titre, idCategorie: self.id)
  end

  def listeTutoriels
    Tutoriel.where(idCategorie: self.id)
  end

end
