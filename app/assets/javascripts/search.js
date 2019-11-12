$(function() {
  $(".use_icon").on("keyup", function() {
    var input = $(".use_icon").val();
    console.log(input)
    $.ajax({
      type: 'GET',
      url: '/ages/index',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(ages) {
      console.log(ages);
    })
  });
});