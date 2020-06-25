$(function(){
	let path = window.location.pathname;
	let folder1 = path.substring(0, path.lastIndexOf("/"));
	let folder2 = folder1.substring(0, folder1.lastIndexOf("/"));
	
	folder1 = folder1.substring(folder1.lastIndexOf("/"), folder1.length);
	folder2 = folder2.substring(folder2.lastIndexOf("/"), folder2.length);
	//folder1 = 현재 위치
	//folder2 = 부모 위치
	
	if(folder1 == "/user"){
		$('header').load('../common/header');
		$('footer').load('../common/footer');
	}else if(folder1 == "/admin") {
		$('header').load('../admin/common/header');
		$('nav').load('../admin/common/nav');
		$('footer').load('../common/footer');
	}else {
		$('header').load('common/header');
		$('footer').load('common/footer');
	}
});