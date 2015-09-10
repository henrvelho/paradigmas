-- Exercicio 1 
--Escreva uma função addSuffix :: String ­> [String] ­> [String]
--usando list comprehension, para adicionar um dado sufixo às strings
--contidas numa lista. Exemplo:
-- > addSuffix "@inf.ufsm.br" ["fulano","beltrano"]
--["fulano@inf.ufsm.br","beltrano@inf.ufsm.br

addSuffix :: String -> [String] -> [String]
addSuffix sufixo string =  [string ++ sufixo | string <- string ]

--Exercicio 2
--Reescreva a função do exercício acima, desta vez usando recursão

addSuffixRecu :: String -> [String] -> [String]
addSuffixRecu _ [] = []
addSuffixRecu str1 list2 = (head list2 ++ str1) : addSuffixRecu str1 (tail list2)

--Exercicio 3 
--Escreva uma função countShorts :: [String] ­> Int, que receba uma
--lista de palavras e retorne a quantidade de palavras dessa lista que
--possuem menos de 5 caracteres. Use recursão

countShorts :: [String] ->  Int
countShorts  [] = 0
countShorts str
    | length(head str) < 5 = 1 + countShorts (tail str)
    | otherwise = countShorts (tail str)

-- Exercicio 4 
-- Reescreva a função do exercício acima, desta vez usando list comprehension.

countShortsRecu :: [String] ->  Int
countShortsRecu str = length([x | x <- str , length(x) < 5])


-- Exercicio 5
--Escreva uma função ciclo :: Int ­> [Int] ­> [Int] que receba um
--número N e uma lista de inteiros, retornando uma nova lista com N
--repetições da lista original, conforme o exemplo abaixo:
-- ciclo 4 [1,3]
--[1,3,1,3,1,3,1,3]
-- Usar recursao

ciclo :: Int -> [Int] -> [Int]
ciclo 0 _ = []
ciclo n m = m ++ ciclo (n-1) m

-- Exercicio 6
--Escreva uma função recursiva combine   ::   [Int]   ­>   [String]   ­> [(Int,String)], 
--que receba duas listas e combine seus elementos em
--tuplas. Exemplo de uso:
-- combine [10,11,12] ["dez","onze","doze"]
--[(10,"dez"),(11,"onze"),(12,"doze")]

combine :: [Int] -> [String] -> [(Int, String)]
combine [] [] = []
combine (n:ns) (y:ys) = [(n, y)] ++ combine ns ys

-- Exercicio 7
--Escreva uma função numera :: [String] -> [(Int,String)], que receba uma
--lista de palavras e retorne outra lista contendo tuplas com as palavras
-- numeradas a partir de 1. Use recursão. Exemplo de uso da função:
-- numera ["abacaxi","mamao","banana"]
-- [(1,"abacaxi"),(2,"mamao"),(3,"banana")]

numera :: [String] -> [(Int,String)]
