comp_height = 10;
backplate_height = 4;
thin_layer_height = .5;

module box(h)
{
    hull() for (i=[-1,1]) for (j=[-1,1]) translate([j*(6+69-10)/2,i*(6+138-10)/2,0]) cylinder(d=10, h=h, center=true);
}

module grove(h=60)
{
    hull() {
        cylinder(d=3.5, h=h, center=true);
        translate([0,10,0]) cylinder(d=3.5, h=h, center=true);
    }
}
