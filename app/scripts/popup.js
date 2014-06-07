'use strict';
var logs = chrome.extension.getBackgroundPage().logs;
$(function(){
  var $textarea = $('textarea');
  $textarea.text(logs).focus();
});
  