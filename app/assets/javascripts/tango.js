$(document).ready(function(){
  $(window).bind("load", function(){
    if(document.URL.match("/tangos/1")){
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