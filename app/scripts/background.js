'use strict';

chrome.runtime.onInstalled.addListener(function (details) {
    console.log('previousVersion', details.previousVersion);
});

chrome.tabs.onUpdated.addListener(function (tabId) {
    chrome.pageAction.show(tabId);
});

var logs = 'defaults';

chrome.runtime.onMessage.addListener(
    function(request, sender, sendResponse) {
      logs = request.logs;
      sendResponse('finish');
    }
);

console.log('\'Allo \'Allo! Event Page for Page Action');
