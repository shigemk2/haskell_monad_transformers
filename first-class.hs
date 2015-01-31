import Control.Monad.State

f1 :: State s (Int -> Int)
f1 = return (1 +)                -- 関数をStateモナドに入れる

f2 :: State s (Int -> Int)
f2 = state $ \s -> ((1 +), s)    -- 内部関数が戻すタプルの値が関数

f3 :: [Int -> Int]
f3 = return (1 +)                -- 関数をリストモナドに入れる

main = do
    print $ (evalState f1 ()) 1  -- Stateモナドから取り出した関数を評価
    print $ (evalState f2 ()) 1  -- Stateモナドから取り出した関数を評価
    print $ (f3 !! 0) 1          -- リストモナドから取り出した関数を評価
