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

Given("Eu estou na pagina de listagem de escolas") do
  visit escolas_path
  expect(page).to have_content("Escolas")
end

When("Eu clico para visualizar a escola de nome {string}") do |string|
  click_link 'New Escola'
  fill_in 'escola[nome]', :with => string
  fill_in 'escola[cpfDoDiretor]', :with => '12345678910'
  click_button 'Create Escola'
  click_link 'Back'
  click_link 'Show'
end

Then("Eu visualizo a escola de nome {string}") do |string|
  expect(page).to have_content(string)
end

When("Eu faco o cadastro de uma escola com o nome {string} e cpf do diretor {string}") do |nome, cpf|
  fill_in 'escola[nome]', :with => nome
  fill_in 'escola[cpfDoDiretor]', :with => cpf
  click_button 'Create Escola'
end

Then("Eu vejo {string} mensagens de erro") do |string|
  assert_selector('div#error_explanation')
  expect(page).to have_content string
end

Given("Eu clico para editar a escola de nome {string}") do |string|
  click_link 'New Escola'
  fill_in 'escola[nome]', :with => string
  fill_in 'escola[cpfDoDiretor]', :with => '12345678910'
  click_button 'Create Escola'
  click_link 'Back'
  click_link 'Edit'
end

When("Eu insiro o novo nome {string} e clico para atualizar a escola") do |string|
  fill_in 'escola[nome]', :with => string
  click_button 'Update Escola'
end

Then("Eu vejo que o nome da escola foi atualizado corretamente para {string}") do |string|
  expect(page).to have_content string
end