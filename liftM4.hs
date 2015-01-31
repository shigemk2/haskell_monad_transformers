import Control.Monad

f = liftM (+ 1)    -- 関数の持ち上げ

main = do
    print $ f [1]  -- モナドを直接評価
