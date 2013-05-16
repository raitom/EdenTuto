# GIVEN

Given(/^un utilisateur$/) do
  @User = User.create(email: "test@test.com", password: "bikingzamelpind")
end

Given(/^un tutocenter pour cet utilisateur$/) do
  @User.tutocenters.create()
end

Given(/^une categorie pour cette utilisateur nommee "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

# WHEN

When(/^quand je visite la page d'index du tutocenter$/) do
  pending # express the regexp above with the code you wish you had
end

# THEN

Then(/^je devrais voir affiche la categorie "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end