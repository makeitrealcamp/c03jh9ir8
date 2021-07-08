$(document).on("click", ".checkbox", check);

function check() {
   if($(".checkbox").is(':checked')){
      console.log("hide");
      $(".alive").hide();
    } else {
      console.log("show");
      $(".alive").show();
    }
};