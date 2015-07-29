var miArray = new Array();
var ints= new Array();
function area_de_interseccion($blx1,$bly1,$trx1,$try1,  $blx2,$bly2,$trx2,$try2){
	if($blx1>$blx2){
		miArray[0]=$blx1;
	}
	else miArray[0]=$blx2;
	if($bly1>$bly2){
		miArray[1]=$bly1
	}
	else miArray[1]=$bly2;
	if($trx1<$trx2){
		miArray[2]=$trx1;
	}
	else miArray[2]=$trx2;
	if ($try1<$try2){
		miArray[3]=$try1;
	}
	else miArray[3]=$try2;
	for (var i=0; i < miArray.length; i++) {
        		ints[i] = parseInt(miArray[i]);
    	}
    	
}
area_de_interseccion(0,2,5,10,  3,1,20,15) ;
var xa=ints[2]-ints[0];
var ya=ints[3]-ints[1];
var area= xa *ya;
if (!xa||!ya){
	console.log("0");
}
else{
	console.log("area: "+area);
}
if(area >2147483647){
	console.log(" -1");
}
