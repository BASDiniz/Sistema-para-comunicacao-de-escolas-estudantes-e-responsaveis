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