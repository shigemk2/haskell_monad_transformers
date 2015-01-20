import Control.Monad.Identity
import Control.Monad.State

main = do
    let st = return 1 :: StateT s Identity Int
    print $ runIdentity $  runStateT st ()      -- (値, 状態)
    print $ runIdentity $ evalStateT st ()      --  値
    print $ runIdentity $ execStateT st ()      --      状態
