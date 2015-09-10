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
addSuffixRecu str1 list2 = (head list2 ++ str1) : addSuffix2 str1 (tail list2)

--Exercicio 3 
--Escreva uma função countShorts :: [String] ­> Int, que receba uma
--lista de palavras e retorne a quantidade de palavras dessa lista que
--possuem menos de 5 caracteres. Use recursão

countShorts  :: [String] ->  Int



-- Exercicio 4 
-- Reescreva a função do exercício acima, desta vez usando list comprehension.

countShortsRecu :: [String] ->  Int
countShortsRecu _ = 5


-- Exercicio 5
--Escreva uma função ciclo :: Int ­> [Int] ­> [Int] que receba um
--número N e uma lista de inteiros, retornando uma nova lista com N
--repetições da lista original, conforme o exemplo abaixo:
--> ciclo 4 [1,3]
--[1,3,1,3,1,3,1,3]
