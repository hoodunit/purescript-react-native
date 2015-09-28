module ReactNative.Props where

import Prelude
import Control.Monad.Eff (Eff())
import Data.Function (mkFn0, mkFn3, mkFn4)
import React (ReactElement())
import React.DOM.Props (Props(), unsafeMkProps)
import ReactNative.Components (ListViewDataSource())

type RenderRowFn = forall rowData highlightFn. rowData -> String -> String -> highlightFn -> ReactElement
type RenderSeparatorFn = String -> String -> Boolean -> ReactElement
type RenderHeaderFn = forall eff. Eff eff ReactElement

foreign import renderHeaderFn :: ReactElement -> (Unit -> ReactElement)

renderRow :: forall rowData highlightFn. (rowData -> String -> String -> highlightFn -> ReactElement) -> Props
renderRow = unsafeMkProps "renderRow" <<< mkFn4

renderSeparator :: RenderSeparatorFn -> Props
renderSeparator fun = unsafeMkProps "renderSeparator" (mkFn3 fun)

renderHeader :: ReactElement -> Props
renderHeader elem = unsafeMkProps "renderHeader" (renderHeaderFn elem)

dataSource :: ListViewDataSource -> Props
dataSource = unsafeMkProps "dataSource" 
