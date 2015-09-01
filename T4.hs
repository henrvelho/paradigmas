--Exercio 1

eleva :: [Int] -> [Int]
eleva [] = []
eleva (x:xs) = (x^2) : eleva  xs

--Exercicio 2

contido :: Char -> String -> Bool
contido _ [] = False
contido caracter lista = if (head lista == caracter)
	then True else contido caracter (tail lista)
	
