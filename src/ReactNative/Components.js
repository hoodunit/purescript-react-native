'use strict';

// module ReactNative.Components

exports.viewClass = require('react-native').View;
exports.textClass = require('react-native').Text;
exports.listViewClass = require('react-native').ListView;
exports.touchableHighlightClass = require('react-native').TouchableHighlight;
exports.touchableNativeFeedbackClass = require('react-native').TouchableNativeFeedback;

exports.listViewDataSource = function(items){
  var ReactNative = require('react-native');
  var ListView = ReactNative.ListView;
  return new ListView.DataSource({
    rowHasChanged: function(r1, r2){ return r1 !== r2; }
  }).cloneWithRows(items);
}

function mkProps(props) {
    var result = {};

    for (var i = 0, len = props.length; i < len; i++) {
        var prop = props[i];

        for (var key in prop) {
            if (prop.hasOwnProperty(key)) {
                result[key] = prop[key];
            }
        }
    }

    return result;
};

exports.createElement = function(clazz) {
    return function(props) {
        return function(children) {
            return React.createElement(clazz, props.length > 0 ? mkProps(props) : null, children);
        }
    }
};

exports.createElementOneChild = function(clazz) {
    return function(props) {
        return function(child) {
            return React.createElement(clazz, props.length > 0 ? mkProps(props) : null, child);
        }
    }
};

exports.text = function(text) {
    return text;
};
