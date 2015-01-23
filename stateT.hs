import Control.Monad.State

f :: s -> IO (Int, s)         -- 内部関数
f s = return (1, s)

a :: StateT s IO Int
a = StateT f                  -- 関数から生成

main = do
    print =<< f ()            -- 関数を評価
    print =<< runStateT a ()  -- StateTを評価
