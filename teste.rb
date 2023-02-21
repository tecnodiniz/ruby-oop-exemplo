lista = [{code:1, message:'teste'},{code:2, message:'teste2'}]

lista.select do |item|
    if(item[:code] == 1)
        item[:message] = "Alterado"
    

        
    end
end
puts lista