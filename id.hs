g x = x + 99
f g x = g x

main = do
    print 1
    print $ id 1
    print $ f g 1  -- 注目
    print $ f id 1  -- 注目
