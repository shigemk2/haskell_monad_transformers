import Control.Monad

main = do
    print [(x , y) | x <- [0, 1], y <- [0, 2]]
    print [ x + y  | x <- [0, 1], y <- [0, 2]]
    print $ liftM2 (,) [0,1] [0,2]
    print $ liftM2 (+) [0,1] [0,2]
