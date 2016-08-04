$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

include <config.scad>

// % translate([0,0,-1.5]) import("inc_nexus_5.stl", convexity=3);
difference() {
    translate([0,0,1]) box(h=5);
    scale([1.06,1.03,1.03]) {
        translate([0,0,2.5]) scale([.89,.94,2]) box(h=3);
        translate([-13.5,65,4]) rotate([90,0,0]) cylinder(d=9, h=15, center=true);
        translate([17.6,49.2,0]) cylinder(d=18, h=4, center=true);
    }
}
