$fn = 64;

/*
    all units are in millimeters
*/

// set these to true or false depending on wheter you want to have the tube the lid or both
create_tube = true;
create_lid = true;

//the vertical space inside of the lid
lid_inner_height = 20.0;

//the vertical space inside of the tube
tube_inner_height = 50.0;

//the inner diameter of the tube and lid
inner_diameter = 10.0;

/*
the length of the thread 
15mm should be good for most scenarios
make sure that the thread length is always less than the length of the tube and lid.
*/
thread_length = 15.0;


/*
    If you change anything below here the program might stop working (correctly).
*/

assert(tube_inner_height > thread_length, "The tubes's inner height needs to be greater than the thread length.");
assert(lid_inner_height > thread_length, "The lid's inner height needs to be greater than the thread length.");


module tube() {
    //outer tube
    cylinder(d=inner_diameter, h=10, center = true);
    //thread

    //inner space
}

module lid(){
    //outer hull
    cylinder(d=inner_diameter, h=10, center = true);
    //thread

    //inner space
}

if(create_tube){
    tube();
}

if(create_lid){
    translate([0, 0, 0]) lid();
}