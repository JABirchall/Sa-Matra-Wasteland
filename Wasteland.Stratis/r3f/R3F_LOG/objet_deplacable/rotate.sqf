/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{private["_03v"];wgwa58=true;_03v=(getDir wgcty8-getDir player)+45;wgcty8 setDir _03v;if(!local wgcty8)then{wgbeie=[wgcty8,_03v];publicVariable "wgbeie";};sleep 0.50;wgwa58=false;};