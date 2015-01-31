import Control.Applicative

main = do
    print $ return (1 +) <*> [1]
    print $ return   (+) <*> [1] <*> [1]
