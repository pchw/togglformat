'use strict';
document.addEventListener('DOMContentLoaded', function() {
  chrome.tabs.query({
    active: true,
    lastFocusedWindow: true
  }, function(tabs) {
      var tab = tabs[0];
      chrome.tabs.sendMessage(tab.id, {}, function(){
        var logs = chrome.extension.getBackgroundPage().logs;
        var $textarea = $('textarea');
        $textarea.text(logs).focus();
      });
  });
});

