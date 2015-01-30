import Control.Monad.State
import Control.Monad.Reader

test1 x = (`runStateT` x) $ do  -- StateT
    modify (+ 1)
    a <- get
    (`runReaderT` a) $ do       -- ReaderT（ネスト）
        b <- ask
        lift $ print $ b + 1    -- エラー

main = do
    test1 1
