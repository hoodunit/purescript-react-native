module Main where

import Prelude
import Control.Monad.Eff (Eff())
import Control.Monad.Eff.Console (log)
import React (Render(), createClass, spec)
import ReactNative (StyleId(), StyleSheet(), registerComponent, createStyleSheet, getStyleId)
import ReactNative.Components (text, view)

import qualified React.DOM as D
import qualified React.DOM.Props as P

appStyleSheet :: StyleSheet
appStyleSheet = createStyleSheet {
  "container": {
     flex: 1,
     justifyContent: "center",
     alignItems: "center",
     backgroundColor: "#F5FCFF"
     },
  "welcome": {
     fontSize: 20,
     textAlign: "center",
     margin: 10
     },
  "instructions": {
     textAlign: "center",
     color: "#333333",
     marginBottom: 5
     }
  }
  
appStyle :: String -> P.Props
appStyle key = P.unsafeMkProps "style" $ getStyleId appStyleSheet key

render :: forall props state eff. Render props state eff
render ctx = pure (view [(appStyle "container")] [
  (text [(appStyle "welcome")] [D.text "Welcome to React Native (in PureScript)!"]),
  (text [(appStyle "instructions")] [D.text "To get started, edit src/Main.purs"]),
  (text [(appStyle "instructions")] [D.text "Shake or press menu button for dev menu"])])
  

main = do
  log "Running app"
  registerComponent "ReactNativePureScript" component
  where
    component = createClass viewSpec
    viewSpec = (spec unit render)
