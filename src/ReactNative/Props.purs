module ReactNative.Props where

import Prelude
import Data.Function (mkFn4)
import React (ReactElement())
import React.DOM.Props (Props(), unsafeMkProps)
import ReactNative.Components (ListViewDataSource())


renderRow :: (String -> Int -> Int -> Int -> ReactElement) -> Props
renderRow fun = unsafeMkProps "renderRow" (mkFn4 fun)

dataSource :: ListViewDataSource -> Props
dataSource = unsafeMkProps "dataSource" 
