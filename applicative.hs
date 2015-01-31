import Control.Applicative

main = do
    print $ (1 +) <$> [1]
    print $ (+)   <$> [1] <*> [1]
