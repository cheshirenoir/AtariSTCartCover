module cartshell()
{
	translate([0,28,0])
		cube([16.55,4,23.22],center=true);
	translate([0,-28,0])
		cube([16.55,4,23.22],center=true);
	translate([18.55/2,0,0])
		cube([2,60,23.22],center=true);
	translate([0,0,21.22/2])
		cube([20.55,60,2],center=true);
	translate([0,0,-21.22/2])
		cube([16.55,60,2],center=true);
	translate([20.55/2-4,0,23.22/2-4])
		cube([4,60,4],center=true);
	translate([0,-15,0])
		cube([20.55,2,23.22],center=true);
	translate([0,15,0])
		cube([20.55,2,23.22],center=true);
}

module cartcover()
{
	//top is narrower. 58.4
	//cube([20.55,60,23.22], center=true);
	difference()
	{
		cartshell();
		translate([11.05,0,12.22])
			rotate([0,45,0])
				cube([5,61,5],center=true);
		translate([-11.05,0,0])
			rotate([0,45,0])
				cube([12,50,12],center=true);
		translate([-2,0,-1.02])
			cube([20.55,50,10],center=true);
		translate([0,-59.2/2-0.6
		,0])
			rotate([3.942,0,0])
				cube([22,3,25],center=true);
		translate([0,59.2/2+0.6,0])
			rotate([-3.942,0,0])
				cube([22,3,25],center=true);
	}
}
//11.65 to the front edge of the cart connector

//cartshell();
cartcover();
//Hi Atari ST fans. I did this mostly with love and only a little bit to troll.