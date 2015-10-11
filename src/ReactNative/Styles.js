'use strict';

// module ReactNative.Styles

exports.createStyleSheet = function(styles){
  return require('react-native').StyleSheet.create(styles);
}

exports.getStyleId = function(styleSheet){
  return function(key){
    return styleSheet[key];
  }
}
