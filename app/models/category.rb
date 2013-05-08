class Category
  include Mongoid::Document

  field :nom, type: String


  def nouveauTutoriel nom
    Tutoriel.create!(titre: nom, idCategorie: self.id)
  end

  def listeTutoriels
    Tutoriel.where(idCategorie: self.id)
  end

end
