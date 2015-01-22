import Control.Monad.Identity
import Control.Monad.State

return' x = StateT $ \s -> Identity (1, s)
-- runState' st = return $ runIdentity $ runStateT st ()
runState' st = (return . runIdentity) $ runStateT st ()

main = do
    let st = return' 1
    print $ runState' st ()
