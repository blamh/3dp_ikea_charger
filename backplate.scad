$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

include <config.scad>

box(h=1.5);

for (i=[-1,1]) for (j=[-1,1]) translate([i*28,j*62,(1.5+.8)/2]) {
    difference() {
        cylinder(d=14, h=.5, center=true);
        cylinder(d=12, h=1, center=true);
    }
}
