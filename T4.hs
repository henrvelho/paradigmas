--Exercio 1

eleva :: [Int] -> [Int]
eleva [] = []
eleva (x:xs) = (x^2) : eleva  xs


