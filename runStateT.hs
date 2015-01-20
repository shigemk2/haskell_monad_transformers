import Control.Monad.Identity
import Control.Monad.State

st = return 1 :: State s Int     -- Stateを生成

f1 :: s -> (Int, s)
f1 = runState st                 -- 加工された内部関数を取り出し

f2 :: s -> Identity (Int, s)
f2 = runStateT st                -- 生の内部関数を取り出し

main = do
    print $ f1 ()                -- (値, 状態)
    print $ runIdentity $ f2 ()  -- Identityで包まれている
