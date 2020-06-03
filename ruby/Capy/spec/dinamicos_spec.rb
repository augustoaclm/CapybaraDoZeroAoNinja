describe 'mouse hover', :idDinamicos do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access#'
    end

    it 'Cadastro' do
        #find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'fernando'
        #find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
        #find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click

        # Caractere $ = termina com
        find('input[id$=UsernameInput').set 'fernando'
        # Caractere ^ = comeca com
        find('input[id^=PasswordInput').set '123456'
        # Caractere * = contem
        find('a[id*=wtGetStartedButton').click

        
        
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
            



        end


    after(:each) do
        sleep 3
    end
end