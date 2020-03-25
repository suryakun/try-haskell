-- Pattern matching data colour
data Colour = RGB Int Int Int | CMYK Float Float Float Float deriving Show

getred :: Colour -> Int
getred \(RGB r _ _) -> r

getgreen :: Colour -> Int
getgreen (RGB _ g _) = g

getblue :: Colour -> Int
getblue (RGB _ _ b) = b

colourModel :: Colour -> String
colourModel (RGB _ _ _) = "RGB"
colourModel (CMYK _ _ _ _) = "CMYK"

main :: IO ()
main = do
    let c = RGB 10 20 30
    let y = CMYK 1.0 2.0 3.0 4.0
    putStrLn $ colourModel y
    print $ getred c
    print $ getgreen c
    print $ getblue c

