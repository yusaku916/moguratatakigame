$(function(){
  var gamescore = localStorage.getItem('score');
  localStorage.clear();
  console.log(gamescore);
  $.ajax({
    url: '/results/index',  
// 　　　　　#resultsコントローラーのindexアクションへのパス。
    type: 'GET',
// 　　　　　# getかpostか選択
    dataType: 'json',
// 　　　　　# htmlやjsonなど形式を選択。
    async: true,
// 　　　　　# 非同期ならtrue、同期ならfalse。
    data: {
      score: gamescore,
    },
// 　　　　　# 渡したいパラメータを定義。
    
  });

// 　　　#省略
});
