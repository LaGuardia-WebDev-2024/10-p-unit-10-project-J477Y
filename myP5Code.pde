setup = function() {
  size(400, 600); 
  background(220); // light gray background
  drawMehFace();
};

function drawMehFace() {
  // Loop #1: While loop to simulate drawing each part (still does work)
  var steps = 0;
  while (steps < 1) {
    drawHead();
    steps++;
  }

  // Loop #2: For loop for eyes (left and right)
  var eyeX = [150, 250];
  for (var i = 0; i < eyeX.length; i++) {
    drawEye(eyeX[i], 250);
  }

  // Loop #3: do-while style while loop for mouth
  var mouthDrawn = false;
  do {
    drawMouth();
    mouthDrawn = true;
  } while (!mouthDrawn);

  noLoop(); // Stops from redrawing
}

function drawHead() {
  fill(173, 216, 230); // light blue
  noStroke();
  ellipse(200, 300, 300, 300); 
}

function drawEye(x, y) {
  fill(0);
  ellipse(x, y, 20, 20); 
}

function drawMouth() {
  stroke(0);
  strokeWeight(4);
  line(150, 350, 250, 350);
}

