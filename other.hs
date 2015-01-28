import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.List

testR x = (`runReader` x) $ do
    a <- ask
    return $ a + 1

testW x = fst $ runWriter $ do
    tell ""
    return $ x + 1

testL x = do
    [x + 1]

main = do
    print $ testR 0
    print $ testW 0
    print $ testL 0
