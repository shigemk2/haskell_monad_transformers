import Control.Monad

main = do
  print $ liftM2 (,) [0,1] [1]
  -- print $ liftM2 (++) [1] [1]

