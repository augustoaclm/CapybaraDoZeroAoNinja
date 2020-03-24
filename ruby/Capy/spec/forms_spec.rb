

describe ' forms' do
    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        expect(page.title).to eql 'Training Wheels Protocol'
         fill_in 'username', with: 'stark'
         fill_in 'password', with: 'jarvis!'
         click_button 'Login'

         expect(find('#flash').visible?).to be true
         #expect(page.title).to eql 'Olá, Tony Stark. Você acessou a área logada!
         #×'

    end

end