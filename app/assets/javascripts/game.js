// $(function(){
//   var gamescore = localStorage.getItem('score');
//   console.log(gamescore);
//   $.ajax({
//     url: '/games/new',  
// // 　　　　　#gamesコントローラーのアクションへのパス。
//     type: 'GET',
// // 　　　　　# getかpostか選択
//     dataType: 'html',
// // 　　　　　# htmlやjsonなど形式を選択。
//     async: true,
// // 　　　　　# 非同期ならtrue、同期ならfalse。
//     data: {
//       score: gamescore,
//     },
// // 　　　　　# 渡したいパラメータを定義。
//   });
// });