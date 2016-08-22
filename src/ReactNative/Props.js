'use strict';

// module ReactNative.Props

var RN = require('react-native');
var TouchableNativeFeedback = RN.TouchableNativeFeedback;
var Platform = RN.Platform;

exports.unitFn = function(data){
  return function(){
    return data;
  }
}

var isAndroid = Platform.OS === 'android';

exports.selectableBackground = isAndroid ? TouchableNativeFeedback.SelectableBackground() : null;
exports.selectableBackgroundBorderless = isAndroid ? TouchableNativeFeedback.SelectableBackgroundBorderless() : null;
exports.ripple = function (color) {
  return function (borderless) {
    return TouchableNativeFeedback.Ripple(color, borderless);
  }
};
