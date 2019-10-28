
$(function(){
  $('.unit_priced_from').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
  $('.shipping_feed_from').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
    var unit = $('.unit_priced_from').val(); // val()でフォームのvalueを取得(数値)
    var shipping = $('.shipping_feed_from').val(); // val()でフォームのvalueを取得(数値)
    units = parseInt(unit)            // 文字列を数値化する
    shippings = parseInt(shipping)    // 文字列を数値化する
    var total = (units + shippings)   // 入力した数値から計算結果(profit)を引く｡それが手数料となる｡
    $('.total_price_from').html(total)     //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.shipping_feed_from').html(total)   //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.total_price_from').prepend('¥')    // 手数料の前に¥マークを付ける→出ない
    $('.total_price_from').val(total) // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
  })
})
})

// window.alert('こんにちは');  // アラートを表示
// console.log('ok');

// $(function(){
//   $(".product_button").click(function(){
//       $(this).css("background-color","red")
//   });
// });
//クリックすると青くなる
