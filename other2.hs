import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.List

testR x = (`runReaderT` x) $ do
    a <- ask
    lift $ print $ a + 1

testW x = runWriterT $ do
    tell $ show x
    lift $ print $ x + 1

testL x = runListT $ do
    lift $ print [x + 1]

main = do
    testR 0
    testW 0
    testL 0
