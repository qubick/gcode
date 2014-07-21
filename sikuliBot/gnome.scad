module thing() {
	//import("/Users/qubick/Downloads/Gnome/polysoup.stl");
	import("/Users/qubick/Downloads/Poopin_Gnome.stl");
}

thing();
projection() thing();

translate([100,0,0])
	for(i=[0:90]){
		rotate([i,0,0])
		//projection(cut=false)
		thing();
	} //should rotate x-,y-,z-axis by 360degrees each

//% thing();
