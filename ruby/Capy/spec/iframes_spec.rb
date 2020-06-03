describe 'iframess', :frames do

    describe 'Freme bom', :bom do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/nice_iframe'
        end  

        it 'Adicionar ao carrinho' do

            within_frame('burgerId') do

                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5

            end
        end
    end

    describe 'ruim', :bad_iframe do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/bad_iframe'
        end  

        it 'Carrinho deve estar vazio' do
            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)


            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio'


            end

        end

    end

end