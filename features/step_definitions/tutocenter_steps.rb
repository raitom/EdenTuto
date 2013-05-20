# GIVEN

Given(/^un utilisateur$/) do
  @User = User.create(email: "test@test.com", password: "bikingzamelpind")
end

Given(/^un tutocenter pour cet utilisateur$/) do
  @User.tutocenters.create(domaine: "cucumber")
end

Given(/^une categorie pour cette utilisateur nommee "(.*?)"$/) do |nomCategorie|
  @User.tutocenters.first.categories.create(nom: nomCategorie)
end

# WHEN

When(/^quand je visite la page d'index du tutocenter$/) do
  visit root_path
end

# THEN

Then(/^je devrais voir afficher "(.*?)"$/) do |texte|
  page.should have_content texte
end