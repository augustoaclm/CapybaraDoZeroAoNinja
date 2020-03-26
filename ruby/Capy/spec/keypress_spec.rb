describe 'mouse hover', :key do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'simulado das teclas simbolo' do
        find('#campo-id').send_keys :space

    end

    #%i Array of Symbols
    #%q String
    #%r Regular Expression
    #%s Symbol
    #%w Array of Strings
    #%x Backtick (capture subshell result)

    it 'diversas teclas' do
        teclas = %i[tab escape enter]
        teclas.each do |t| 
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end 
    end

    it 'diversas teclas letras' do
        teclas = %w[a s d f g h j k l q w e r t y u i o p z x c v b n m]
        teclas.each do |t| 
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end 
    end


    after(:each) do
        sleep 3
    end
end