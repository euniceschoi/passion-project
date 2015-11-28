$(document).ready(function() {
  yodaSpeakHandler();
});


var yodaSpeakHandler = function(){
  $("body").on("submit", "#yoda_translator", function(event) {
    event.preventDefault();
    console.log("YES!!");

    var message = $(this).serialize();
    var that = $(this);
    var request = $.ajax({
      url: '/messages',
      method: "POST",
      data: message
    });
    request.done(function(message) {
      // console.log(message);
      // console.log("Here");

      $(".messages-container ul").append(message);
    })
    request.fail(function(message){
      console.log("FUCK");
      console.log(message);
    })
  })
}





// var leetSpeakHandler = function(){
//   $("#leet_speak_translator").on("submit", function(event){
//     event.preventDefault();
//     console.log("THIS WORKED");
//     // debugger
//     var rawMessage = $("#message_content").val();
//     var request = $.ajax({
//       url: 'https://montanaflynn-l33t-sp34k.p.mashape.com/encode',
//       method: "GET",
//       datatype: 'json',
//       data: {text: rawMessage},
//       success: function(data){
//         alert(data);
//       },
//       beforeSend: function(xhr){
//         xhr.setRequestHeader("X-Mashape-Authorization","JTCWKL8KaUmshvRLqWdCoWethkvyp1cw2v9jsnJCSmAKMPb5bM");
//       }
//     })
//   });

// }
