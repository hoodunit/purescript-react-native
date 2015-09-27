module ReactNative.Components where

import Prelude
import React (ReactClass(), ReactElement())
import React.DOM.Props (Props())

foreign import data ListViewDataSource :: *

foreign import createElement :: forall props. ReactClass props -> props -> Array ReactElement -> ReactElement
foreign import viewClass :: forall props. ReactClass props
foreign import textClass :: forall props. ReactClass props
foreign import listViewClass :: forall props. ReactClass props
foreign import listViewDataSource :: Array String -> ListViewDataSource

view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass

text :: Array Props -> Array ReactElement -> ReactElement
text = createElement textClass

listView :: Array Props -> ReactElement
listView props = createElement listViewClass props []
