import Text.Printf

type Point     = (Float,Float)
type Rect      = (Point,Float,Float)

-- Gera retangulo SVG
-- a partir de coordenadas+dimensoes e de uma string com atributos de estilo
writeRect :: (String,Rect) -> String
writeRect (style,((x,y),w,h)) =
  printf "<rect x='%.3f' y='%.3f' width='%.2f' height='%.2f' style='%s' />\n" x y w h style

-- Gera codigo-fonte de arquivo SVG
-- concatenando uma lista de retangulos e seus atributos de estilo
writeRects :: Float -> Float -> [(String,Rect)] -> String
writeRects w h rs =
  printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h
      ++ (concatMap writeRect rs) ++ "</svg>"

formaCordenada :: (Float, Float) -> Float -> Float -> [(Float,Float)]
formaCordenada (i,j) w h =  [(x,y) | y <- [0,(h)..((i-1)*h)] , x <- [0,(w)..((j-1)*w)] ]

geraposicao :: (Float,Float) -> [(Float, Float)]
geraposicao (i,j) = [(x,y) | x <-[0..(i-1)], y <- [0..(j-1)]]

--para valor
-- fst pega a primeira
-- snd pega a segunda, map para todo o resto para aplicar
gerastylevalor ::  [(Float,Float)] -> Float ->Float ->  [(Float,Float)] 
gerastylevalor position linha coluna = map (\m -> (100 - ((snd m)*(100 / (coluna -1))) , 100 - ((fst m)*(100/(linha -1))) ) ) position

-- para cor
gerastyle ::  [(Float,Float)] -> [String]
gerastyle str = map (\m -> "fill:hsl(230,"++ show (fst m) ++ "%," ++ show (snd m) ++"%);stroke:rgb(100,100,100)") str

main ::  IO ()
main = do
    let
        linha  = 10
        coluna   = 10
        width   = 20
        height  = 20
        (w,h) = ((linha * coluna)*width , ( linha *coluna)*height )
        style = gerastyle ( gerastylevalor (geraposicao(linha ,coluna)) linha coluna)
        cordenadas = formaCordenada(linha, coluna) width height
        styleCordenadas = zip style cordenadas
        rects = map (\m -> (fst m , (snd m,width, height))) styleCordenadas

    writeFile "colors.svg" $ writeRects w h rects
  -- o codigo acima eh equivalente a:
  -- writeFile "colors.svg" (writeRects w h rects)
