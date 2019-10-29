document.addEventListener("turbolinks:load", function() {
  $(function(){
    $('.proceeds_from').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
    console.log('ok');
    $('.sales_place_from').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
    console.log('ok');
    $('.stock_price_from').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
    console.log('ok');  
      var proceed = $('.proceeds_from').val(); // val()でフォームのvalueを取得(数値)
      var ales_place = $('.sales_place_from').val(); // val()でフォームのvalueを取得(数値)
      var stock_price = $('.stock_price_from').val(); // val()でフォームのvalueを取得(数値)
      proceeds = parseInt(proceed)            // 文字列を数値化する
      ales_places = parseInt(ales_place)    // 文字列を数値化する
      stock_prices = parseInt(stock_price)    // 文字列を数値化する
      var total_profit = (proceeds - ales_places - stock_prices )   // 入力した数値から計算結果(profit)を引く｡それが手数料となる｡
      $('.total_profit_from').html(total_profit)     //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
      $('.sales_place_from').html(total_profit)   //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
      $('.stock_price_from').html(total_profit)   //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
      $('.total_profit_from').prepend('¥')    // 手数料の前に¥マークを付ける→出ない
      $('.total_profit_from').val(total_profit) // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
    })
  })
  })
  })
})