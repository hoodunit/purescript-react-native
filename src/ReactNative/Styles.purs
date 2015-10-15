module ReactNative.Styles where

import Prelude hiding (bottom, top)
import React.DOM.Props (Props(), unsafeMkProps)

foreign import data StyleSheet :: *
foreign import data StyleProp :: *
type StyleId = Int
data Style = Style String (Array StyleProp)

foreign import createStyleSheet :: Array Style -> StyleSheet
foreign import getStyleId :: StyleSheet -> String -> StyleId
foreign import unsafeMkStyleProp :: forall val. String -> val -> StyleProp

style :: StyleId -> Props
style = unsafeMkProps "style"

styles :: Array StyleId -> Props
styles = unsafeMkProps "style"

-- Layout prop types

width :: Number -> StyleProp
width = unsafeMkStyleProp "width"

height :: Number -> StyleProp
height = unsafeMkStyleProp "height"

top :: Number -> StyleProp
top = unsafeMkStyleProp "top"

left :: Number -> StyleProp
left = unsafeMkStyleProp "left"

right :: Number -> StyleProp
right = unsafeMkStyleProp "right"

bottom :: Number -> StyleProp
bottom = unsafeMkStyleProp "bottom"

margin :: Number -> StyleProp
margin = unsafeMkStyleProp "margin"

marginVertical :: Number -> StyleProp
marginVertical = unsafeMkStyleProp "marginVertical"

marginHorizontal :: Number -> StyleProp
marginHorizontal = unsafeMkStyleProp "marginHorizontal"

marginTop :: Number -> StyleProp
marginTop = unsafeMkStyleProp "marginTop"

marginBottom :: Number -> StyleProp
marginBottom = unsafeMkStyleProp "marginBottom"

marginLeft :: Number -> StyleProp
marginLeft = unsafeMkStyleProp "marginLeft"

marginRight :: Number -> StyleProp
marginRight = unsafeMkStyleProp "marginRight"

padding :: Number -> StyleProp
padding = unsafeMkStyleProp "padding"

paddingVertical :: Number -> StyleProp
paddingVertical = unsafeMkStyleProp "paddingVertical"

paddingHorizontal :: Number -> StyleProp
paddingHorizontal = unsafeMkStyleProp "paddingHorizontal"

paddingTop :: Number -> StyleProp
paddingTop = unsafeMkStyleProp "paddingTop"

paddingBottom :: Number -> StyleProp
paddingBottom = unsafeMkStyleProp "paddingBottom"

paddingLeft :: Number -> StyleProp
paddingLeft = unsafeMkStyleProp "paddingLeft"

paddingRight :: Number -> StyleProp
paddingRight = unsafeMkStyleProp "paddingRight"

borderWidth :: Number -> StyleProp
borderWidth = unsafeMkStyleProp "borderWidth"

borderTopWidth :: Number -> StyleProp
borderTopWidth = unsafeMkStyleProp "borderTopWidth"

borderRightWidth :: Number -> StyleProp
borderRightWidth = unsafeMkStyleProp "borderRightWidth"

borderBottomWidth :: Number -> StyleProp
borderBottomWidth = unsafeMkStyleProp "borderBottomWidth"

borderLeftWidth :: Number -> StyleProp
borderLeftWidth = unsafeMkStyleProp "borderLeftWidth"

position :: String -> StyleProp
position = unsafeMkStyleProp "position"

flexDirection :: String -> StyleProp
flexDirection = unsafeMkStyleProp "flexDirection"

flexWrap :: String -> StyleProp
flexWrap = unsafeMkStyleProp "flexWrap"

justifyContent :: String -> StyleProp
justifyContent = unsafeMkStyleProp "justifyContent"

alignItems :: String -> StyleProp
alignItems = unsafeMkStyleProp "alignItems"

alignSelf :: String -> StyleProp
alignSelf = unsafeMkStyleProp "alignSelf"

flex :: Number -> StyleProp
flex = unsafeMkStyleProp "flex"


-- Text style prop types

color :: String -> StyleProp
color = unsafeMkStyleProp "color"

fontFamily :: String -> StyleProp
fontFamily = unsafeMkStyleProp "fontFamily"

fontSize :: Number -> StyleProp
fontSize = unsafeMkStyleProp "fontSize"

fontStyle :: String -> StyleProp
fontStyle = unsafeMkStyleProp "fontStyle"

fontWeight :: String -> StyleProp
fontWeight = unsafeMkStyleProp "fontWeight"

letterSpacing :: Number -> StyleProp
letterSpacing = unsafeMkStyleProp "letterSpacing"

lineHeight :: Number -> StyleProp
lineHeight = unsafeMkStyleProp "lineHeight"

textAlign :: String -> StyleProp
textAlign = unsafeMkStyleProp "textAlign"

textDecorationLine :: String -> StyleProp
textDecorationLine = unsafeMkStyleProp "textDecorationLine"

textDecorationStyle :: String -> StyleProp
textDecorationStyle = unsafeMkStyleProp "textDecorationStyle"

textDecorationColor :: String -> StyleProp
textDecorationColor = unsafeMkStyleProp "textDecorationColor"

writingDirection :: String -> StyleProp
writingDirection = unsafeMkStyleProp "writingDirection"


-- TODO: Transform prop types


-- View style prop types

backgroundVisibility :: String -> StyleProp
backgroundVisibility = unsafeMkStyleProp "backgroundVisibility"

backgroundColor :: String -> StyleProp
backgroundColor = unsafeMkStyleProp "backgroundColor"

borderColor :: String -> StyleProp
borderColor = unsafeMkStyleProp "borderColor"

borderTopColor :: String -> StyleProp
borderTopColor = unsafeMkStyleProp "borderTopColor"

borderRightColor :: String -> StyleProp
borderRightColor = unsafeMkStyleProp "borderRightColor"

borderBottomColor :: String -> StyleProp
borderBottomColor = unsafeMkStyleProp "borderBottomColor"

borderLeftColor :: String -> StyleProp
borderLeftColor = unsafeMkStyleProp "borderLeftColor"

borderRadius :: Number -> StyleProp
borderRadius = unsafeMkStyleProp "borderRadius"

borderTopLeftRadius :: Number -> StyleProp
borderTopLeftRadius = unsafeMkStyleProp "borderTopLeftRadius"

borderTopRightRadius :: Number -> StyleProp
borderTopRightRadius = unsafeMkStyleProp "borderTopRightRadius"

borderBottomLeftRadius :: Number -> StyleProp
borderBottomLeftRadius = unsafeMkStyleProp "borderBottomLeftRadius"

borderBottomRightRadius :: Number -> StyleProp
borderBottomRightRadius = unsafeMkStyleProp "borderBottomRightRadius"

borderStyle :: String -> StyleProp
borderStyle = unsafeMkStyleProp "borderStyle"

opacity :: Number -> StyleProp
opacity = unsafeMkStyleProp "opacity"

overflow :: Number -> StyleProp
overflow = unsafeMkStyleProp "overflow"

shadowColor :: String -> StyleProp
shadowColor = unsafeMkStyleProp "shadowColor"

shadowOffset :: {width :: Number, height :: Number} -> StyleProp
shadowOffset = unsafeMkStyleProp "shadowOffset"

shadowOpacity :: Number -> StyleProp
shadowOpacity = unsafeMkStyleProp "shadowOpacity"

shadowRadius :: Number -> StyleProp
shadowRadius = unsafeMkStyleProp "shadowRadius"
