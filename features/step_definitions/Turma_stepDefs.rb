Given("Eu estou na pagina de cadastro de uma nova turma") do
    visit 'turmas/new'
end

When("Eu cadastro uma turma com o nome {string} e com o ano {string}") do |string, string2|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select string2, :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'

    visit root_path
    visit 'turmas/new'
    select string, :from => "turma[nome]"
    select string2, :from => "turma[ano_id]"
    click_button 'Create Turma'

end

Then("Eu vejo que a turma com o nome {string} foi cadastrada corretamente") do |
string|
    expect(page).to have_content(string)
end

Given("Eu estou na pagina de listagem de turmas") do
    visit '/turmas'
end

When("Eu clico para visualizar a turma {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select '4ª', :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'

    visit root_path
    visit 'turmas/new'
    select string, :from => "turma[nome]"
    select '4ª', :from => "turma[ano_id]"
    click_button 'Create Turma'
    click_link 'Back'
    click_link 'Show'
end

Then("Eu visualizo a turma de nome {string}") do |string|
    expect(page).to have_content(string)
end


Given("Eu estou na pagina de cadastro de uma nova turma da escola") do
    visit 'turmas/new'
end

When("Eu tento fazer o cadastro de uma turma com o nome {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select '4ª', :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'

    visit root_path
    visit 'turmas/new'
    select string, :from => "turma[nome]"
    select '4ª', :from => "turma[ano_id]"
    click_button 'Create Turma'
end

Then("Eu vejo {string} mensagem de erro referente a turma") do |string|
    expect(page).to have_content(string)
end

Given("Eu estou na pagina de cadastro de uma turma da escola") do
    visit 'turmas/new'
end

When("Eu tento fazer o cadastro de uma turma com o ano {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select '4ª', :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'

    visit root_path
    visit 'turmas/new'
    select 'A', :from => "turma[nome]"
    select string, :from => "turma[ano_id]"
    click_button 'Create Turma'
end

Then("Eu vejo {string} mensagem de erro sobre a turma") do |string|
    expect(page).to have_content(string)
end


Given("Eu estou na pagina de listagem das turmas") do
    visit 'turmas/new'
end

When("Eu deleto a turma de nome {string}") do |string|
    visit root_path
    visit 'escolas/new'
    fill_in 'escola_nome', :with => 'UAG'
    fill_in 'escola_cpfDoDiretor', :with => '70378876414'
    click_button 'Create Escola'

    visit root_path
    visit 'anos/new'
    select '4ª', :from => "ano[nome]"
    select "Tarde", :from => "ano[turno]"
    select "UAG", :from => "ano[escola_id]"
    click_button 'Create Ano'

    visit root_path
    visit 'turmas/new'
    select string, :from => "turma[nome]"
    select '4ª', :from => "turma[ano_id]"
    click_button 'Create Turma'
    click_link 'Back'
    click_link 'Destroy'
end

Then("Eu vejo que a turma de nome {string} foi deletada") do |string|
    expect(page).to have_content("successfully")
end