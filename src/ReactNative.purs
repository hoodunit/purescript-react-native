module ReactNative where

import Prelude
import Control.Monad.Eff (Eff())
import React (ReactClass())

type AppKey = String
foreign import registerComponent :: forall e props. AppKey -> ReactClass props -> Eff e Unit

foreign import data StyleSheet :: *
foreign import data StyleId :: *
foreign import createStyleSheet :: forall styles. styles -> StyleSheet
foreign import getStyleId :: StyleSheet -> String -> StyleId
