--Exercio 1

eleva :: [Int] -> [Int]
eleva [] = []
eleva (x:xs) = (x^2) : eleva  xs

--Exercicio 2

contido :: Char -> String -> Bool
contido _ [] = False
contido caracter lista = if (head lista == caracter)
then True else contido caracter (tail lista)

--Exercicio 3

semVogais :: String -> String
semVogais "" = ""
semVogais lista = if(elem (head lista) "aeiouAEIOU") 
then semVogais (tail lista) else head lista : semVogais (tail lista)

--Exercicio 4

translate :: [(Double,Double)] -> [(Double,Double)]
translate [] = []


--Exercicio 5

geraTabela' :: Int -> [(Int,Int)]
geraTabela' 0 = []
geraTabela' j = geraTabela(j-1) ++ [(j,j^2)]
