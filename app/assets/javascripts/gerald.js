var ThanksGeraldApp = {

  onReady: function(){
      //target h1 tag
      //click event listener
      //change text to "Hey Gerald"
      $("h1").on("click", ThanksGeraldApp.changeText)
    },
        
  changeText: function(){ 
    var dataInput = $(this).text();    
        $.ajax({
          url: "/reverse",
          type: "POST",
          dataType: "json",
          //The data values are the key value
          //pairs in the params hash in the
          //controller
          data: { dataInput: dataInput },
          context: this
        }).done(function(response){
          console.log(response);
        })
      }
}

$(document).ready(ThanksGeraldApp.onReady);