module ReactNative.Components where

import Prelude
import React (ReactClass(), ReactElement())
import React.DOM.Props (Props())

foreign import createElement :: forall props. ReactClass props -> props -> Array ReactElement -> ReactElement
foreign import textClass :: forall props. ReactClass props
foreign import viewClass :: forall props. ReactClass props

text :: Array Props -> Array ReactElement -> ReactElement
text = createElement textClass

view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass
