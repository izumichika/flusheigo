$(document).ready(function(){
  $(window).bind("load", function(){
    if(document.URL.match("/flush/flush_tangos.")){
      $(function(){
        cnt = 5;
        $('#timer').text(cnt);
        cnDown = setInterval(function(){
          cnt--;
          if(cnt <= 0){
            clearInterval(cnDown);
          }
          $('#timer').text(cnt);
        },1000);
        // setInterval('location.reload()',cnt);
      });
      setTimeout('location.reload()',6000);
    }
  });
});