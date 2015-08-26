-- Andrea Charao
-- trabalho 3 paradigmas 2015

-- Exercicio 1
-- a funcao recebe um int e retorna um bool
-- verifica se e par/impar

isEven :: Int -> Bool
isEven n = mod n 2 == 0

-- Exercicio 2
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

calclista :: [Double] -> [Double]
calclista lista = map (\n -> 3 * n ^ 2 + 2 / n + 1) lista

--Exercicio 8 idades

idade :: [Int] -> [Int]
idade lista = filter (> (2015 - 1970)) lista

--Exercicio 9 serie

serie :: Double -> [Double] -> Double
serie m n = sum (map (\n -> n/m) n)

--Exercicio 10 char
charFound :: Char -> String -> Bool
charFound c list = 0 < length (filter (c ==) list)

--Exercicio 12

--*Main> takeWhile(<5) [1,2,3,4,5]
--[1,2,3,4]
--*Main>

--*Main> takeWhile(/=' ') "eu sou lindo"
--"eu"
--*Main>
