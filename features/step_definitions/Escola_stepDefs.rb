
Given("Eu estou na pagina de cadastro de uma nova escola") do
    visit escolas_path
    expect(page).to have_content("Escolas")
    page.has_link?("New Escola")
    click_link ("New Escola")

end

When("Eu cadastro uma escola com o nome {string}, cpf do administrador {string}, numero de estudantes {string}, numero de series {string}, numero de turmas {string} e numero de professores {string}") do |string, string2, string3, string4, string5, string6|
    fill_in 'escola[nome]', :with => string
    fill_in 'escola[cpf_do_administrador]', :with => string2
    fill_in 'escola[numero_de_estudantes]', :with => string3
    fill_in 'escola[numero_de_series]', :with => string4
    fill_in 'escola[numero_de_turmas]', :with => string5
    fill_in 'escola[numero_de_professores]', :with => string6
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
    fill_in 'escola[cpf_do_administrador]', :with => '12345678910'
    fill_in 'escola[numero_de_estudantes]', :with => '1'
    fill_in 'escola[numero_de_series]', :with => '1'
    fill_in 'escola[numero_de_turmas]', :with => '1'
    fill_in 'escola[numero_de_professores]', :with => '5'
    click_button 'Create Escola'
    click_link 'Back'
    click_link 'Show'
end

Then("Eu visualizo a escola de nome {string}") do |string|
   expect(page).to have_content(string)
end

Given ("Eu estou na pagina de cadastro de uma escola nova") do
    visit escolas_path
    expect(page).to have_content("Escolas")
    page.has_link?("New Escola")
    click_link ("New Escola")
end

When("Eu faco o cadastro de uma escola com o nome {string}, cpf do administrador {string}, numero de estudantes {string}, numero de series {string}, numero de turmas {string} e numero de professores {string}") do |nome, cpf, num1, num2, num3, num4|
    fill_in 'escola[nome]', :with => nome
    fill_in 'escola[cpf_do_administrador]', :with => cpf
    fill_in 'escola[numero_de_estudantes]', :with => num1
    fill_in 'escola[numero_de_series]', :with => num2
    fill_in 'escola[numero_de_turmas]', :with => num3
    fill_in 'escola[numero_de_professores]', :with => num4
    click_button 'Create Escola'

end

Then("Eu vejo {string} mensagens de erro") do |string|
    assert_selector('div#error_explanation')
    expect(page).to have_content string
end
Given ("Eu estou na pagina que lista todas as escolas") do
  visit escolas_path
  expect(page).to have_content('Escolas')
end
Given("Eu clico para editar a escola de nome {string}") do |string|
    click_link 'New Escola'
    fill_in 'escola[nome]', :with => string
    fill_in 'escola[cpf_do_administrador]', :with => '12345678910'
    fill_in 'escola[numero_de_estudantes]', :with => '1'
    fill_in 'escola[numero_de_series]', :with => '1'
    fill_in 'escola[numero_de_turmas]', :with => '1'
    fill_in 'escola[numero_de_professores]', :with => '5'
    click_button 'Create Escola'
    click_link 'Back'
    click_link 'Edit'
end

When("Eu insiro o novo nome {string} e clico para atualizar a escola") do |string|
    fill_in 'escola[nome]', :with => string
    click_button 'Update Escola'
end

Then("Eu vejo que a escola de nome {string}foi atualizada corretamente") do |string|
    expect(page).to have_content string
end

