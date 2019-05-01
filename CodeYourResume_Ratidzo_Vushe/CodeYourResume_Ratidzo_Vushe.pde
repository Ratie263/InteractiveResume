// this is my interactive Game of Thrones Themed Resume

import processing.video.*;
import processing.sound.*;

// Song details
SoundFile song;

Capture vid;
int x;
int y;
int count;
PImage img101;
PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img15;
PImage img16;

Movie myMovie;
Movie myMovie1;
Movie myMovie2;
color myColor;

void setup() {
  size(1280, 960);
  background(0);
  count=0;
  vid = new Capture(this, width, height);
  vid.start();
  // all the pictures I will need
  img101=  loadImage("boarder.png");
  img=  loadImage("welcome.png");
  img1=loadImage("stark1.png");
  img2=loadImage("stark2.png");
  img3=loadImage("targaryen1.png");
  img4=loadImage("targaryen2.png");
  img5=loadImage("baratheon1.png");
  img6=loadImage("baratheon2.png");  
  img7=loadImage("whiteWalker1.png");  
  img8=loadImage("whiteWalker2.png");
  img9=loadImage("arryn1.png");
  img10=loadImage("arryn2.png");
  img11=loadImage("lannister1.png");
  img12=loadImage("lannister2.png");
  img13=loadImage("thankYou1.png");
  img14=loadImage("thankYou2.png");
  img15=loadImage("Final.png");
  img16=loadImage("info.png");
  //music
  song = new SoundFile(this, "GOT.mp3");
  song.loop();
  // playing = false;
  song.play();

  //video stuff

  myMovie = new Movie(this, "Video.mov");
  myMovie.loop();
  myMovie.filter(THRESHOLD);
  myMovie.play();

  myMovie.volume(0);
}


void draw() {
  //the video playing in the beginning
  if (count==0) {
    image( myMovie, 0, 0 );
     
  }

  //these are links to the "Learn More section that leads to my website
  if (mousePressed == true) {
    if (count==15) {
      if ((mouseX > 930) && (mouseX < 1060) &&
        (mouseY > 390) && (mouseY < 510)) {
        link("mailto:ratidzovushe@gmail.com");
      } else if ((mouseX > 930) && (mouseX < 1060) &&
        (mouseY > 540) && (mouseY < 660)) {
        link("https://www.linkedin.com/in/ratidzo-vushe/");
      } else  if ((mouseX > 930) && (mouseX < 1060) &&
        (mouseY > 690) && (mouseY < 810)) {
        link("https://github.com/Ratie263");
      } else  if ((mouseX > 930) && (mouseX < 1060) &&
        (mouseY > 840) && (mouseY < 960)) {
        link("https://smith.digication.com/raties-portfolio/contact");
      } else  if ((mouseX > 170) && (mouseX < 670) &&
        (mouseY > 600) && (mouseY < 740)) {
        link("https://docs.google.com/document/d/1ZcZEy0xjBsKvjITD2eOFCY2DkBfFg1SStXABRXt0oJE/edit?usp=sharing");
      }
    }
    if (count==2) {
      if (mousePressed == true) {
        if ((mouseX > 1050) && (mouseX < 1250) &&
          (mouseY > 890) && (mouseY < 930)) {
          link("https://smith.digication.com/raties-portfolio/about-me");
        }
      }
    }

    if (count==4) {
      if (mousePressed == true) {
        if ((mouseX > 1050) && (mouseX < 1250) &&
          (mouseY > 890) && (mouseY < 930)) {
          link("https://smith.digication.com/raties-portfolio/achievements-1");
        }
      }
    }

    if (count==6) {
      if (mousePressed == true) {
        if ((mouseX > 1050) && (mouseX < 1250) &&
          (mouseY > 890) && (mouseY < 930)) {
          link("https://smith.digication.com/raties-portfolio/work-experience");
        }
      }
    }

    if (count==8) {
      if (mousePressed == true) {
        if ((mouseX > 1050) && (mouseX < 1250) &&
          (mouseY > 890) && (mouseY < 930)) {
          link("https://smith.digication.com/raties-portfolio/my-co-curriculars");
        }
      }
    }

    if (count==10) {
      if (mousePressed == true) {
        if ((mouseX > 1050) && (mouseX < 1250) &&
          (mouseY > 890) && (mouseY < 930)) {
          link("https://smith.digication.com/raties-portfolio/achievements");
        }
      }
    }

    if (count==10) {
      if (mousePressed == true) {
        if ((mouseX > 1050) && (mouseX < 1250) &&
          (mouseY > 890) && (mouseY < 930)) {
          link("https://smith.digication.com/raties-portfolio/achievements");
        }
      }
    }
  }
  //uses count to keep track of what page we are on
  if (keyPressed) {
    if ((key == 'r') || (key == 'R')) {
      count=16;
    } else if ((key == 'c') || (key == 'C')) {
      count=2;
    } else if ((key == 'd') || (key == 'D')) {
      count=3;
    } else if ((key == 'e') || (key == 'E')) {
      count=4;
    } else if ((key == 'f') || (key == 'F')) {
      count=5;
    } else if ((key == 'g') || (key == 'G')) {
      count=6;
    } else if ((key == 'h') || (key == 'H')) {
      count=7;
    } else if ((key == 'i') || (key == 'I')) {
      count=8;
    } else if ((key == 'j') || (key == 'J')) {
      count=9;
    } else if ((key == 'k') || (key == 'K')) {
      count=10;
    } else if ((key == 'l') || (key == 'L')) {
      count=11;
    } else if ((key == 'm') || (key == 'M')) {
      count=12;
    } else if ((key == 'n') || (key == 'N')) {
      count=13;
    } else if ((key == 'p') || (key == 'P')) {
      count=14;
    } else if ((key == 'q') || (key == 'Q')) {
      count=15;
    }
      else if ((key == 'z') || (key == 'Z')) {
      count=1;
      

      //if clicking on icons send user to links
    }
  }

  loadPixels(); 

  //this section replaces all bright parts with the new picture by mapping pixels 
  vid.read();
  vid.loadPixels();
  loadPixels();
  for (int i=0; i<vid.pixels.length; i++) {
    if (brightness(vid.pixels[i])>200) {

      if (count==0) {
        color l= img.pixels[i];

        pixels[i]=l;
      } else if (count==1) {

        color l= img1.pixels[i];
        pixels[i]=l;
      } else if (count==2) {

        color l= img2.pixels[i];
        pixels[i]=l;
      } else if (count==3) {

        color l= img3.pixels[i];
        pixels[i]=l;
      } else if (count==4) {

        color l= img4.pixels[i];
        pixels[i]=l;
      } else if (count==5) {

        color l= img5.pixels[i];
        pixels[i]=l;
      } else if (count==6) {

        color l= img6.pixels[i];
        pixels[i]=l;
      } else if (count==7) {

        color l= img7.pixels[i];
        pixels[i]=l;
      } else if (count==2) {

        color l= img3.pixels[i];
        pixels[i]=l;
      } else if (count==8) {

        color l= img8.pixels[i];
        pixels[i]=l;
      } else if (count==9) {

        color l= img9.pixels[i];
        pixels[i]=l;
      } else if (count==10) {

        color l= img10.pixels[i];
        pixels[i]=l;
      } else if (count==11) {

        color l= img11.pixels[i];
        pixels[i]=l;
      } else if (count==12) {

        color l= img12.pixels[i];
        pixels[i]=l;
      } else if (count==13) {

        color l= img13.pixels[i];
        pixels[i]=l;
      } else if (count==14) {

        color l= img14.pixels[i];
        pixels[i]=l;
      } else if (count==15) {

        color l= img15.pixels[i];
        pixels[i]=l;
      } else if (count==16) {

        color l= img16.pixels[i];
        pixels[i]=l;
      

      
    }
  }
  }

  updatePixels();

     image( img101, -50,-50,1450,1200 );
   }

void movieEvent(Movie m) {
  m.read();
}
