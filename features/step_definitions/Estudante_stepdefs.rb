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

Given ('Eu estou na pagina de listagem de todos os estudantes') do
  visit 'estudantes'
  expect(page).to have_current_path('/estudantes')
end

When ('Eu clico para visualizar o estudante que possui o cpf {string}') do |cpf|
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
  fill_in 'estudante[nome]', :with => 'Bruno'
  fill_in 'estudante[cpf]', :with => cpf
  select 'A', :from => 'estudante[turma_id]'
  click_button 'Create Estudante'
  click_link 'Back'
  click_link 'Show'
end

Then ('Eu vejo o estudante que possui o cpf {string}') do |cpf|
  expect(page).to have_content(cpf)
end

And ('Eu clico para editar o estudante que possui cpf {string}') do |cpf|
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
  fill_in 'estudante[nome]', :with => 'Bruno'
  fill_in 'estudante[cpf]', :with => cpf
  select 'A', :from => 'estudante[turma_id]'
  click_button 'Create Estudante'
  click_link 'Back'
  click_link 'Edit'
end

When ('Eu preencho o campo de turma com {string} e clico para salvar as alteracoes') do |turma|
  select turma, :from => 'estudante[turma_id]'
  click_button 'Update Estudante'
end

Then ('Eu vejo que a turma do estudante de cpf {string} foi atualizada corretamente para {string}') do |cpf, turma|
  expect(page).to have_content(cpf)
  expect(page).to have_content(turma)
end