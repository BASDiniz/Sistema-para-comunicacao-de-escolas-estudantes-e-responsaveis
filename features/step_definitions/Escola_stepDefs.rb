Given("Eu estou na pagina de cadastro de uma nova escola") do
  visit escolas_path
  expect(page).to have_content("Escolas")
  page.has_link?("New Escola")
  click_link ("New Escola")
end

When("Eu cadastro uma escola com o nome {string} e com cpf do diretor {string}") do |string, string2|
  fill_in 'escola[nome]', :with => string
  fill_in 'escola[cpfDoDiretor]', :with => string2
  click_button 'Create Escola'
end

Then("Eu vejo que a escola com o nome {string} foi cadastrada corretamente") do |string|
  expect(page).to have_content(string)
end

