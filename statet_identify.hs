import Control.Monad.Identity
import Control.Monad.State

main = do
    let a = return 1 :: StateT s Identity Int  -- StateTとして生成
    print $ evalState a ()                     -- Stateとして評価
