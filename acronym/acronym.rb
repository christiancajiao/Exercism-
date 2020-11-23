=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

module Acronym 
    def self.abbreviate(frase)
        #frase es un string ejem "compu mundo-hiper mega red"
        withoutdash = frase.gsub(/-/, " ")
        acronimo = []
        x = ""
        for x in withoutdash.split(' ')
          
            #por cada uno separar la primera letra
            acronimo.push(x[0])
        
            #agregar cada letra a un nuevo array 
            x = acronimo.join
            #convertir el array a string en mayusculas
            #remplazar el guion con espacio
        
        end
        return x.upcase
    end
end
