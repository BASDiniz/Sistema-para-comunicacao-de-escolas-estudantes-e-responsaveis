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