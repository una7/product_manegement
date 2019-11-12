$(function(){
  $(".use_icon").on("keyup",function(e){
    e.preventDefault();
    var input = $(".use_icon").val();
    if (input == "") {
      $("#user-search-result").empty();
      return false
    }

    $.ajax({
      type: 'GET',
      url: '/ages/search',
      data: { keyword: input },
      dataType: "json"
    });
  });
});