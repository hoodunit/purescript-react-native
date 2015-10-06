'use strict';

// module ReactNative.Props

exports.unitFn = function(data){
  return function(){
    return data;
  }
}

exports.selectableBackground = require('react-native').TouchableNativeFeedback.SelectableBackground();
exports.selectableBackgroundBorderless = require('react-native').TouchableNativeFeedback.SelectableBackgroundBorderless();
