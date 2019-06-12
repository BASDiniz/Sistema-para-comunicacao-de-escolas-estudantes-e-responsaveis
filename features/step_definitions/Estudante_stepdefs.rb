Given ('Eu estou na pagina de cadastro de um novo estudante') do
  visit 'estudantes/new'
  expect(page).to have_current_path('/estudantes/new')
end

And ('Eu preencho o campo de nome com {string}, o de cpf com {string} e o de turma com {string}') do |nome, cpf, turma|
  visit root_path
  visit 'escolas/new'
  fill_in 'escola_nome', :with => 'UAG'
  fill_in 'escola_cpfDoDiretor', :with => '70378876414'
  click_button 'Create Escola'
  visit root_path
  visit 'anos/new'
  select '8ª', :from => "ano[nome]"
  select "Tarde", :from => "ano[turno]"
  select "UAG", :from => "ano[escola_id]"
  click_button 'Create Ano'
  visit root_path
  visit 'turmas/new'
  select 'A', :from => "turma[nome]"
  select '8ª', :from => "turma[ano_id]"
  click_button 'Create Turma'
  visit root_path
  visit 'estudantes/new'
  fill_in 'estudante[nome]', :with => nome
  fill_in 'estudante[cpf]', :with => cpf
  select turma, :from => 'estudante[turma_id]'
end

When ('Eu clico no botao para cadastrar um novo estudante') do
  click_button 'Create Estudante'
end

Then ('Um novo estudante com cpf {string} eh criado') do |cpf|
  expect(page).to have_content(cpf)
  expect(page).to have_current_path(estudantes_path + '/' + Estudante.last.id.to_s)
end