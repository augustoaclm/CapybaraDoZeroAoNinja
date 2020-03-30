

describe 'login', :escopo do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end
    it 'login com sucesso' do

        #padrao de coo mapear
        #expect(page.title).to eql 'Training Wheels Protocol'
        #login = find('#login')
        #login.find('input[name=username]').set 'stark'
        #login.find('input[name=password   ]').set 'jarvis!'
        #click_button 'Entrar'
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #mapeia o pai do html
        within('#login') do
            
            find('input[name=username]').set 'stark'
            find('input[name=password   ]').set 'jarvis!'
            click_button 'Entrar'
      

        end

    end

    it 'Form dois' do
        within('#signup') do
            
            find('input[name=username]').set 'Augusto'
            find('input[name=password]').set '12345'
            click_link 'Criar Conta'
            sleep 3
            

        end
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'


    end
 


    after(:each) do
        sleep 3
    end
end