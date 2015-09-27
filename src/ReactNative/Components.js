'use strict';

// module ReactNative.Components

exports.textClass = require('react-native').Text;
exports.viewClass = require('react-native').View;

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

exports.text = function(text) {
    return text;
};
