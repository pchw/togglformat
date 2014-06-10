'use strict';
jQuery.noConflict();

chrome.runtime.onMessage.addListener(
  function(request, sender, sendResponse) {
    var txt = create_text_log();
    chrome.runtime.sendMessage(
      {"logs": txt,},
      function(response) {
    });
    sendResponse('finish');
  }
);
var create_text_log = (function(w,d,$){
  return function(){
    var val = '';
    var $main = $('#time-entry-list');
    if(!$main.length) return;

    $('#time-entry-list').find('.time-entries-day').each(function(i, elm) {
      var $e = $(elm),
          $header = $e.find('.timer-entries-group-header'),
          $list = $e.find('.time-entries-list'),
          date = $header.find('.checkbox-container div.button').data('date'),
          total = $header.find('.date-container .super').text(),
          arg = [];

      val += "---------------------------\n" + moment(date, "YYYYMMDD").format("MM/DD") + ' : ' + total + "\n";
      $list.find('.entry').each(function(j, entry) {
        var $li = $(entry),
            times = $li.find('.entry-time').text(),
            description = $li.find('.js-description span').text(),
            projectName = $li.find('.js-project span.project-project').text(),
            duration = $li.find('.js-duration .entry-duration').text(),
            entryVal = '  ', l;

        times = times.split('–');
        l = times.length;
        if(l>0) {
          for(var n=0; n<l; n+=1) {
            var time = times[n].trim();
            times[n] = moment(time, "h:mm a").format("HH:mm");
          }
          entryVal += times.join(' – ') + '  ';
        }
        entryVal += description + ' (' + duration + ')';
        if(projectName) {
          entryVal += ' - ' + projectName;
        }
        arg[arg.length] = entryVal;
      });
      val += arg.reverse().join("\n") + "\n";
    });

    val += "---------------------------";
    return val;
  };
})(window,document,jQuery);

