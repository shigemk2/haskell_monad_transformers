import Control.Monad.State

a :: StateT s IO ()
a = lift $ print "hello"     -- IOをStateTの上に持ち上げ

main = do
    print =<< runStateT a 1  -- 評価結果はIOで返る
