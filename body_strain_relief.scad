$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

include <config.scad>

mirror([0,0,1]) difference() {
    translate([0,0,-0.5]) {
        translate([0,0,4.25]) cube([19,9,1.5], center=true);
        translate([0,0,1.8]) cube([5,9,6.2], center=true);
    }
    for(i=[-1,1]) translate([i*7.5,0,4.5]) {
        cylinder(d=2.5, h=4, center=true);
        translate([0,0,1.4]) cylinder(d=4.5, h=4, center=true);
    }
}
