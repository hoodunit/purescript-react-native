'use strict';

// module ReactNative.Styles

exports.createStyleSheet = function(styles){
  console.log('stylesArray:', styles);
  var stylesObj = {};
  styles.forEach(function(s) { 
    var elemStyles = s.value1;
    var elemObj = {};
    elemStyles.forEach(function(e){ elemObj[e[0]] = e[1]; });
    stylesObj[s.value0] = elemObj;
  });
  console.log('stylesObj:', stylesObj);
  return require('react-native').StyleSheet.create(stylesObj);
}

exports.getStyleId = function(styleSheet){
  return function(key){
    return styleSheet[key];
  }
}

exports.unsafeMkStyleProp = function(key) {
    return function(value) {
      return [key, value];
    };
};
