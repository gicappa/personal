Dato /^un utente studente$/ do
end

Quando /^viene mostrato il verbo "([^"]*)"$/ do |arg1|
  visit irregular_verbs_path
  page.contains arg1
end

Quando /^lo studente inserisce "([^"]*)" per il presente$/ do |arg1|
pending
  fill_in :simple_present, arg1
end

Quando /^"([^"]*)" per il passato$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Quando /^"([^"]*)" per il participio passato$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Allora /^viene mostrata un messaggio di successo$/ do
  pending # express the regexp above with the code you wish you had
end

Allora /^passa al verbo successivo$/ do
  pending # express the regexp above with the code you wish you had
end

Quando /^lo studente non inserisce "([^"]*)" per il presente$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Allora /^viene mostrata un messaggio di errore$/ do
  pending # express the regexp above with the code you wish you had
end

Allora /^viene riproposto lo stesso verbo$/ do
  pending # express the regexp above with the code you wish you had
end

Quando /^lo studente non inserisce "([^"]*)" per il passato$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Quando /^lo studente non inserisce "([^"]*)" per il participio passato$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Quando /^viene termina di rispondere a tutti i verbi$/ do
  pending # express the regexp above with the code you wish you had
end

Allora /^viene mostrata la statistica$/ do
  pending # express the regexp above with the code you wish you had
end
