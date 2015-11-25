$(document).ready(function() {
  // leetSpeakHandler();
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});


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
