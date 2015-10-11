module ReactNative.Styles where

import Prelude
import React.DOM.Props (Props(), unsafeMkProps)

foreign import data StyleSheet :: *
foreign import data StyleId :: *
foreign import createStyleSheet :: forall styles. styles -> StyleSheet
foreign import getStyleId :: StyleSheet -> String -> StyleId

style :: StyleId -> Props
style = unsafeMkProps "style"

styles :: Array StyleId -> Props
styles = unsafeMkProps "style"
