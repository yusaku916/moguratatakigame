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

document.addEventListener('DOMContentLoaded', () => {
  document.getElementById("now_score").style.display ="block";
  if(gon.rankInScore > localStorage.getItem('score')){
		// noneで非表示
		now_score.style.display ="none";
	}else{
		// blockで表示
    now_score.style.display ="block";
    document.getElementById("game_score").value = localStorage.getItem('score');
	}
  // localStorage.clear()
});


