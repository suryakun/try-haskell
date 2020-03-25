class Frobber a where
    frob :: a -> (String, Int)

data A = A { aValue :: Int }
instance Frobber A where
    frob a = let value = aValue a in (show value, value)

printFrobResult :: Frobber a => a -> IO ()
printFrobResult = print . frob

main = printFrobResult (A 100)
