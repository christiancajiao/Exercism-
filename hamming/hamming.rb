=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming 


    def self.compute(str1, str2)
        arr1 = str1.split('')
        arr2 = str2.split('')
        arr_diferencias = []
        if arr1.length == arr2.length
            
           arr_diferencias = []

            for i in arr1 do 
                for n in arr2

                   if arr1.index(i) == arr2.index(n)
                     
                     if i != n
                        arr_diferencias.push(i)
                     end
                   end
                  #comprobar si i y n tienen el mismo index en su respectivos arrays
                  #si tienen tienen el mismo indice en su respectivo array, comprobar si  el valor de i es  igual a n 
                  #si son iguales, crear un array donde se van a pushear 
                  #al final de todas las interacciones retornar el length del array que acabamos de crear.
                end
            end
        else
      
        end
       puts arr_diferencias.length
    end
end




