describe 'upload de arquivos', :upload do
    before(:each) do

        #metodo que retorna o caminho do diretorio do projeto
        @arquivo = Dir.pwd + '/spec/fixtures/teste txt.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
        #puts arquivo
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
    end

    it 'upload com arquivo texto' do
        puts @arquivo
        #existe um problema com o firefox, esta funcionando smente no chrome
      attach_file('file-upload', @arquivo)
      click_button 'Upload'

     msg =  find('#uploaded-file')
     expect(msg.text).to eql 'teste txt.txt'
    end

    it 'upload com imagem' do
        puts @imagem
        #existe um problema com o firefox, esta funcionando smente no chrome
      attach_file('file-upload', @imagem)
      click_button 'Upload'
        sleep 5
     msg =  find('#new-image')
     expect(msg[:src]).to include 'imagem.jpg'
    end

   


    after(:each) do
        sleep 3
    end
end