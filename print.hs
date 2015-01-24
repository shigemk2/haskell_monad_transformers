import Control.Monad.State

f :: s -> IO ((), s)         -- StateTの内部関数
f s = do
    a <- print "hello"       -- 副作用により文字表示
    return (a, s)            -- IOモナドを返す

a :: StateT s IO ()
a = StateT f                 -- 生成

main = do
    print =<< f 1            -- 関数を評価
    print =<< runStateT a 1  -- StateTを評価
