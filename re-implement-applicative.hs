f <$> m = do
    a <- m        -- モナドから値を取り出す
    return $ f a  -- 値を関数に適用してモナドに入れて返す

main = do
    print $ (1 +) <$> [1]
