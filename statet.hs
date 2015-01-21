import Control.Monad.Identity
import Control.Monad.State

main = do
    let st = StateT $ \s -> Identity (1, s)  -- 関数から生成
    print $ runIdentity $ runStateT st ()    -- StateTとして評価
    print $ runState st ()                   -- Stateとして評価
