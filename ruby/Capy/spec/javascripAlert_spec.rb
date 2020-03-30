

describe 'alertas de javasript', :alerts do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end

    it 'Alerta' do
        
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3

    end

    it 'Confirmar' do
        
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept
        sleep 3
        expect(page).to have_content 'Mensagem confirmada'

    end

    it 'Não Confirmar' do
        
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss
        sleep 3
        expect(page).to have_content 'Mensagem não confirmada'

    end

    it 'Prompt' do

        accept_prompt(with: 'Augusto') do
            click_button 'Prompt'
            sleep 2
        end
        sleep 5
        expect(page).to have_content 'Olá, Augusto'

    end

    it 'dismiss Prompt' do

        dismiss_prompt() do
            click_button 'Prompt'
            sleep 2
        end
        sleep 5
        expect(page).to have_content 'Olá, null'

    end


    after(:each) do
        sleep 3
    end
end