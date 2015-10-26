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

data Position = Absolute | Relative

position :: Position -> StyleProp
position Absolute = unsafeMkStyleProp "position" "absolute"
position Relative = unsafeMkStyleProp "position" "relative"

data FlexDirection = Row | Column

flexDirection :: FlexDirection -> StyleProp
flexDirection Row = unsafeMkStyleProp "flexDirection" "row"
flexDirection Column = unsafeMkStyleProp "flexDirection" "column"

data WrapProp = Wrap | NoWrap

flexWrap :: WrapProp -> StyleProp
flexWrap Wrap = unsafeMkStyleProp "flexWrap" "wrap"
flexWrap NoWrap = unsafeMkStyleProp "flexWrap" "nowrap"

data JustifyContent = JustifyContentFlexStart 
                    | JustifyContentFlexEnd 
                    | JustifyContentCenter 
                    | JustifyContentSpaceBetween 
                    | JustifyContentSpaceAround

justifyContent :: JustifyContent -> StyleProp
justifyContent JustifyContentFlexStart = unsafeMkStyleProp "justifyContent" "flex-start"
justifyContent JustifyContentFlexEnd = unsafeMkStyleProp "justifyContent" "flex-end"
justifyContent JustifyContentCenter = unsafeMkStyleProp "justifyContent" "center"
justifyContent JustifyContentSpaceBetween = unsafeMkStyleProp "justifyContent" "space-between"
justifyContent JustifyContentSpaceAround = unsafeMkStyleProp "justifyContent" "space-around"

data AlignItems = AlignItemsFlexStart | AlignItemsFlexEnd | AlignItemsCenter | AlignItemsStretch

alignItems :: AlignItems -> StyleProp
alignItems AlignItemsFlexStart = unsafeMkStyleProp "alignItems" "flex-start"
alignItems AlignItemsFlexEnd = unsafeMkStyleProp "alignItems" "flex-end"
alignItems AlignItemsCenter = unsafeMkStyleProp "alignItems" "center"
alignItems AlignItemsStretch = unsafeMkStyleProp "alignItems" "stretch"

data AlignSelf = AlignSelfAuto | AlignSelfFlexStart | AlignSelfFlexEnd | AlignSelfCenter | AlignSelfStretch

alignSelf :: AlignSelf -> StyleProp
alignSelf AlignSelfAuto = unsafeMkStyleProp "alignSelf" "auto"
alignSelf AlignSelfFlexStart = unsafeMkStyleProp "alignSelf" "flex-start"
alignSelf AlignSelfFlexEnd = unsafeMkStyleProp "alignSelf" "flex-end"
alignSelf AlignSelfCenter = unsafeMkStyleProp "alignSelf" "center"
alignSelf AlignSelfStretch = unsafeMkStyleProp "alignSelf" "stretch"

flex :: Number -> StyleProp
flex = unsafeMkStyleProp "flex"


-- Text style prop types

color :: String -> StyleProp
color = unsafeMkStyleProp "color"

fontFamily :: String -> StyleProp
fontFamily = unsafeMkStyleProp "fontFamily"

fontSize :: Number -> StyleProp
fontSize = unsafeMkStyleProp "fontSize"

data FontStyle = FontNormal | FontItalic

fontStyle :: FontStyle -> StyleProp
fontStyle FontNormal = unsafeMkStyleProp "fontStyle" "normal"
fontStyle FontItalic = unsafeMkStyleProp "fontStyle" "italic"

data FontWeight = WeightNormal 
                | WeightBold 
                | Weight100 
                | Weight200 
                | Weight300 
                | Weight400 
                | Weight500 
                | Weight600 
                | Weight700 
                | Weight800 
                | Weight900

fontWeight :: FontWeight -> StyleProp
fontWeight WeightNormal = unsafeMkStyleProp "fontWeight" "normal"
fontWeight WeightBold = unsafeMkStyleProp "fontWeight" "bold"
fontWeight Weight100 = unsafeMkStyleProp "fontWeight" "100"
fontWeight Weight200 = unsafeMkStyleProp "fontWeight" "200"
fontWeight Weight300 = unsafeMkStyleProp "fontWeight" "300"
fontWeight Weight400 = unsafeMkStyleProp "fontWeight" "400"
fontWeight Weight500 = unsafeMkStyleProp "fontWeight" "500"
fontWeight Weight600 = unsafeMkStyleProp "fontWeight" "600"
fontWeight Weight700 = unsafeMkStyleProp "fontWeight" "700"
fontWeight Weight800 = unsafeMkStyleProp "fontWeight" "800"
fontWeight Weight900 = unsafeMkStyleProp "fontWeight" "900"

letterSpacing :: Number -> StyleProp
letterSpacing = unsafeMkStyleProp "letterSpacing"

lineHeight :: Number -> StyleProp
lineHeight = unsafeMkStyleProp "lineHeight"

data TextAlign = TextAlignAuto | TextAlignLeft | TextAlignRight | TextAlignCenter | TextAlignJustify

textAlign :: TextAlign -> StyleProp
textAlign TextAlignAuto = unsafeMkStyleProp "textAlign" "auto"
textAlign TextAlignLeft = unsafeMkStyleProp "textAlign" "left"
textAlign TextAlignRight = unsafeMkStyleProp "textAlign" "right"
textAlign TextAlignCenter = unsafeMkStyleProp "textAlign" "center"
textAlign TextAlignJustify = unsafeMkStyleProp "textAlign" "justify"

data TextDecorationLine = None | Underline | LineThrough | UnderlineLineThrough

textDecorationLine :: TextDecorationLine -> StyleProp
textDecorationLine None = unsafeMkStyleProp "textDecorationLine" "none"
textDecorationLine Underline = unsafeMkStyleProp "textDecorationLine" "underline"
textDecorationLine LineThrough = unsafeMkStyleProp "textDecorationLine" "line-through"
textDecorationLine UnderlineLineThrough = unsafeMkStyleProp "textDecorationLine" "underline line-through"

data TextDecorationStyle = TextSolid | TextDouble | TextDotted | TextDashed

textDecorationStyle :: TextDecorationStyle -> StyleProp
textDecorationStyle TextSolid = unsafeMkStyleProp "textDecorationStyle" "solid"
textDecorationStyle TextDouble = unsafeMkStyleProp "textDecorationStyle" "double"
textDecorationStyle TextDotted = unsafeMkStyleProp "textDecorationStyle" "dotted"
textDecorationStyle TextDashed = unsafeMkStyleProp "textDecorationStyle" "dashed"

textDecorationColor :: String -> StyleProp
textDecorationColor = unsafeMkStyleProp "textDecorationColor"

data WritingDirection = WritingDirectionAuto | WritingDirectionLtr | WritingDirectionRtl

writingDirection :: WritingDirection -> StyleProp
writingDirection WritingDirectionAuto = unsafeMkStyleProp "writingDirection" "auto"
writingDirection WritingDirectionLtr = unsafeMkStyleProp "writingDirection" "ltr"
writingDirection WritingDirectionRtl = unsafeMkStyleProp "writingDirection" "rtl"


-- TODO: Transform prop types


-- View style prop types

data Visibility = Visible | Hidden

backgroundVisibility :: Visibility -> StyleProp
backgroundVisibility Visible = unsafeMkStyleProp "backgroundVisibility" "visible"
backgroundVisibility Hidden = unsafeMkStyleProp "backgroundVisibility" "hidden"

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

data BorderStyle = BorderSolid | BorderDotted | BorderDashed

borderStyle :: BorderStyle -> StyleProp
borderStyle BorderSolid = unsafeMkStyleProp "borderStyle" "solid"
borderStyle BorderDotted = unsafeMkStyleProp "borderStyle" "dotted"
borderStyle BorderDashed = unsafeMkStyleProp "borderStyle" "dashed"

opacity :: Number -> StyleProp
opacity = unsafeMkStyleProp "opacity"

overflow :: Visibility -> StyleProp
overflow Visible = unsafeMkStyleProp "overflow" "visible"
overflow Hidden = unsafeMkStyleProp "overflow" "hidden"

shadowColor :: String -> StyleProp
shadowColor = unsafeMkStyleProp "shadowColor"

shadowOffset :: {width :: Number, height :: Number} -> StyleProp
shadowOffset = unsafeMkStyleProp "shadowOffset"

shadowOpacity :: Number -> StyleProp
shadowOpacity = unsafeMkStyleProp "shadowOpacity"

shadowRadius :: Number -> StyleProp
shadowRadius = unsafeMkStyleProp "shadowRadius"
