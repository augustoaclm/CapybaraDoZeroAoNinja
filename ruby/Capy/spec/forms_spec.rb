

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

         #dois tipos de contem.
         expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
         expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

end