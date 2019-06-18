Given("Eu estou na pagina de cadastro de um novo Ano") do
    visit 'anos/new'
end

When("Eu cadastro um ano com o nome {string}, turno {string} e escola {string}") do |string, string2, string3|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select string, :from => "ano[nome]"
    select string2, :from => "ano[turno]"
    select string3, :from => "ano[escola_id]"
    click_button 'Create Ano'

end

Then("Eu vejo que o ano com o nome {string} foi cadastrado corretamente") do |string|
    expect(page).to have_content(string)
end


Given("Eu estou na pagina de listagem de Anos") do
    visit '/anos'
end

When("Eu clico para visualizar o ano {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select string, :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'
    click_link 'Back'
    click_link 'Show'
end

Then("Eu visualizo o ano de nome {string}") do |string|
    expect(page).to have_content(string)
end
Given("Eu estou na pagina de cadastro de um novo Ano da Escola") do
    visit 'anos/new'
end
When("Eu tento fazer o cadastro de um ano com o nome {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select string, :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'

end

Then("Eu vejo {string} mensagem de erro referente ao Ano") do |string|
    expect(page).to have_content(string)
end


Given("Eu estou na pagina de cadastro de um Ano") do
    visit 'anos/new'
end

When("Eu tento fazer o cadastro de um Ano com o turno {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select '4ª', :from => "ano[nome]"
    select string, :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'
end

Then("Eu vejo {string} mensagem de erro sobre o Ano") do |string|
  expect(page).to have_content(string)
end


Given("Eu estou na pagina de listagem dos anos") do
    visit '/anos'
end

When("Eu deleto o ano de nome {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select string, :from => "ano[nome]"
    select 'Tarde', :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'
    click_link 'Back'
    click_link 'Destroy'
end

Then("Eu vejo que o Ano de nome {string} foi deletado") do |string|
    expect(page).to_not have_content(string)
    expect(page).to have_content('successfully')
end
