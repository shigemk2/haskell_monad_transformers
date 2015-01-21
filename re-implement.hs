import Control.Monad.State

main = do
    let st = return 1
    print $ runState st ()
