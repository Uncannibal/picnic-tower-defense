var side = random(2);
if (side >= 1){
	x = floor(choose(random_range(20, 180), random_range(1740, 1900)));  
    y = floor(random_range(20, 1061));									
} else {
    x = floor(random_range(20, 1901));             
    y = floor(choose(random_range(20, 160), random_range(920, 1061)));
}