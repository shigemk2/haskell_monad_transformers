import Control.Monad.Identity

main = do
    let a = return 1 :: Identity Int  -- 生成
    print $ runIdentity a             -- 値の取り出し（評価）

    let a = return 1  -- 生成
    print $ runIdentity a             -- 値の取り出し（評価）

    -- print $ runIdentity =<< 1         -- 値の取り出し（評価） -- エラー
