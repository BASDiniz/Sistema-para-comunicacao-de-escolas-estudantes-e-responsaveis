Given ('Eu estou na pagina de cadastro de um novo estudante') do
    visit 'estudantes/new'
    expect(page).to have_current_path('/estudantes/new')
end

And ('Eu preencho o campo de nome com {string}, o de cpf com {string}, o de serie com {string} e o de turma com {string}') do |nome, cpf, serie, turma|
    fill_in 'estudante[nome]', :with => nome
    fill_in 'estudante[cpf]', :with => cpf
    fill_in 'estudante[serie]', :with => serie
    fill_in 'estudante[turma]', :with => turma
end

When ('Eu clico no botao para cadastrar um novo estudante') do
    click_button 'Create Estudante'
end

Then ('Um novo estudante com cpf {string} eh criado') do |cpf|
    expect(page).to have_content(cpf)
    expect(page).to have_current_path(estudantes_path + '/' + Estudante.last.id.to_s)
end

Given ('Eu estou na pagina de listagem de todos os estudantes') do
    visit 'estudantes'
    expect(page).to have_current_path('/estudantes')
end

When ('Eu clico para visualizar o estudante que possui o cpf {string}') do |cpf|
    click_link 'New Estudante'
    fill_in 'estudante[nome]', :with => 'Teste'
    fill_in 'estudante[cpf]', :with => cpf
    fill_in 'estudante[serie]', :with => '8ª'
    fill_in 'estudante[turma]', :with => 'A'
    click_button 'Create Estudante'
    click_link 'Back'
    click_link 'Show'
end

Then ('Eu vejo o estudante que possui o cpf {string}') do |cpf|
    expect(page).to have_content(cpf)
end

And ('Eu clico para editar o estudante que possui cpf {string}') do |cpf|
    click_link 'New Estudante'
    fill_in 'estudante[nome]', :with => 'Teste'
    fill_in 'estudante[cpf]', :with => cpf
    fill_in 'estudante[serie]', :with => '8ª'
    fill_in 'estudante[turma]', :with => 'A'
    click_button 'Create Estudante'
    click_link 'Back'
    click_link 'Edit'
end

When ('Eu preencho o campo da nova serie com {string} e clico para salvar as alteracoes') do |serie|
    fill_in 'estudante[serie]', :with => serie
    click_button 'Update Estudante'
end

Then ('Eu vejo que a serie do estudante de cpf {string} foi atualizada corretamente para {string}') do |cpf, serie|
    expect(page).to have_content(cpf)
    expect(page).to have_content(serie)
end