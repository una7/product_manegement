document.addEventListener("turbolinks:load", function() {
  $(function(){
    $('.proceeds_from').on('input', function(){          //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
      var proceed = $('.proceeds_from').val();           // val()でフォームのvalueを取得(数値)
      proceeds = parseInt(proceed)                       // 文字列を数値化する
      console.log(proceeds);
    })

    $('.sales_place_from').on('input', function(){      //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
      var ales_place = $('.sales_place_from').val();    // val()でフォームのvalueを取得(数値)
      ales_places = parseInt(ales_place)               // 文字列を数値化する
      console.log(ales_places);
    })

    var input = $(".stock").text()
    stocks_prices = parseInt(input)    // 文字列を数値化する
    console.log(stocks_prices);

    $(".sales_place_from").keyup(function(){
      var total_profit = (proceeds - stocks_prices - ales_places)  // 入力した数値から計算結果(profit)を引く｡それがとなる｡
      $('.total_profit_from').val(total_profit)                    // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
    })
    $(".proceeds_from").keyup(function(){
      var total_profit = (proceeds - stocks_prices - ales_places)  // 入力した数値から計算結果(profit)を引く｡それがとなる｡
      $('.total_profit_from').val(total_profit)                    // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
    })
    
    // $('.sales_place_from').html(total_profit)                    // 利益の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.proceeds_from').html(total_profit)                   // 利益の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.stock').html(total_profit)                               // 利益の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.total_profit_from').prepend('¥')                         // 利益の前に¥マークを付ける→出ない
  })
})