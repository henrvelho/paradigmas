-- trabalho 3

-- a funcao recebe um int e retorna um bool
-- verifica se e par/impar

isEven :: Int -> Bool
isEven n = mod n 2 == 0


-- funcao calcular a soma dos quadrados de dois inteiros
somaquad :: Int -> Int -> Int
somaquad x y = (x * x) + (y * y)

--lista Exercicio 3

doubleFirst :: [Int] -> Int
doubleFirst lista = head lista * head lista

-- Exercicio 4 

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lista lista1 = head lista == head lista1

--Exercicio 5 

addmr :: [String] -> [String]
addmr lista =  map ("Mr " ++) lista

-- Exercicio 6 contar espaços

contespacos :: String -> Int
contespacos lista = length  (filter (== ' ')  lista)

--Exercicio 7 calcular na lista

calclista :: String -> String
calclista lista = map 3*^2 + 2/n + 1