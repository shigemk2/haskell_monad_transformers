import Control.Applicative
import Control.Monad

main = do
    print $ liftM (1 +) [1]
    print $ (<$>) (1 +) [1]          -- <$>を関数化

    print $ (1 +)   <$>   [1]
    print $ (1 +) `liftM` [1]        -- liftMを演算子化

    print $ (+)   <$>   [1] <*> [1]
    print $ (+) `liftM` [1] <*> [1]  -- liftMと<*>の組み合わせ

    print $ liftM (+) [1] <*> [1]    -- こんなこともできるが
    print $ (<$>) (+) [1] <*> [1]    -- あまり意味はない
