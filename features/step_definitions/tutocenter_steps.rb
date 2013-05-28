# GIVEN

Given(/^un utilisateur$/) do
  @User = User.create(email: "test@test.com", password: "bikingzamelpind")
end

Given(/^un tutocenter pour cet utilisateur$/) do
  @User.tutocenters.create(domaine: "cucumber")
end

Given(/^une categorie pour cette utilisateur nommee "(.*?)"$/) do |nomCategorie|
  @categorie =  @User.tutocenters.first.categories.create(nom: nomCategorie)
end

Given(/^un tutoriel dans cette categorie avec le titre "(.*?)" et contenu "(.*?)"$/) do |titre, contenu|
  @tutoriel = @categorie.tutoriels.create!(titre: titre, contenu: contenu)
end

# WHEN

When(/^quand je visite la page d'index du tutocenter$/) do
  visit root_path
end

When(/^je visite la page du tutoriel nomme "(.*?)"$/) do |tuto|
  visit "/#{tuto}"
end

# THEN

Then(/^je devrais voir afficher "(.*?)"$/) do |texte|
  page.should have_content texte
end

#Then /^show me the page$/ do
#  save_and_open_page
#end