describe 'Campos randomicos', :randomico do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/login2'
    end
    it 'login com sucesso' do

        expect(page.title).to eql 'Training Wheels Protocol'
         fill_in 'userId', with: 'stark'
         fill_in 'passId', with: 'jarvis!'

        login = find('#login')

        case login.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end

         click_button 'Login'

        # expect(find('#flash').visible?).to be true
         #expect(page.title).to eql 'Olá, Tony Stark. Você acessou a área logada!
         #×'

         #dois tipos de contem.
         expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
         expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

 


    after(:each) do
        sleep 3
    end
end