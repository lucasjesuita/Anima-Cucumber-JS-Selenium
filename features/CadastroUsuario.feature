
Feature: Cadastro de Usuário
    Sendo um usuário do site
    Posso acessar o site de Automação
    Para realizar cadastros de um novo usuário
    
Scenario: Cadastro com sucesso
  Given que estou na pagina de cadastro
  And "Fenanda" no campo "user_name"
  And "Teixeira" no campo "user_lastname"
  And "fernanda12456@gmail.combr" no campo "user_email"
  And "Rua X, 1234" no campo "user_address"
  And "Unibh" no campo "user_university"
  And "QA" no campo "user_profile"
  And "Ferminino" no campo "user_gender"
  And "26" no campo "user_age"
When realizo o cadastro do usuario
Then visualizo a mensagem de sucesso "Usuário Criado com sucesso"