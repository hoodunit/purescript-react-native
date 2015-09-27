'use strict';

// module ReactNative

exports.registerComponent = function(name){
  return function(component){
    return function(){
      require('react-native').AppRegistry.registerComponent(name, function(){ return component; });
    }
  }
}

exports.createStyleSheet = function(styles){
  return require('react-native').StyleSheet.create(styles);
}

exports.getStyleId = function(styleSheet){
  return function(key){
    return styleSheet[key];
  }
}
