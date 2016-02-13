$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

include <config.scad>

height = 10;

difference() {
    union() {
        difference() {
            box(h=height);
            scale([0.96,0.98,1.1]) box(h=height);
        }

        translate([0,-60,0]) cube([22,12,height], center=true);

        // Backplate
        difference() {
            union() {
                cylinder(d=58, h=height, center=true);
                for(i=[-1,0,1]) translate([0,i*50,0]) cube([74,1,height], center=true);
                cube([1,142,height], center=true);
                for(i=[1,-1]) rotate(a=i*45) cube([104,1,height], center=true);
                translate([0,-28,0]) cube([22,15,height], center=true);
                translate([0,-53,0]) cube([5,36,height], center=true);
            }
            cylinder(d=56, h=30, center=true);
        }
    }

    // Grove
    translate([0,-28,0]) cube([20,13,height+1], center=true);
    translate([0,-50,-1]) {
        translate([0,1.5,0]) cube([6,12,10]);
        rotate([90,0,0]) grove(h=60);
    }

    translate([0,-60,0]) {
        translate([0,0,3]) cube([10,10,10], center=true);
        translate([0,0,6]) cube([20,10,10], center=true);
        # for(i=[-1,1]) translate([i*7.5,0,0]) cylinder(d=1.2, h=4, center=true);
    }
}
