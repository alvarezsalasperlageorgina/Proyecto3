Luchador piedra1;
Luchador papel1;
Luchador tijeras1;
Luchador lagarto1;
Luchador spock1;

Luchador piedra2;
Luchador papel2;
Luchador tijeras2;
Luchador lagarto2;
Luchador spock2;

Luchador jugador1;
Luchador jugador2;

Pantalla Intro;
Pantalla Selection;
Pantalla Game;
Pantalla End;
Pantalla Cut;

PImage ShPiA;
PImage ShPaA;
PImage ShTiA;
PImage ShLaA;
PImage ShSpA;

PImage ShPiB;
PImage ShPaB;
PImage ShTiB;
PImage ShLaB;
PImage ShSpB;

PImage fondoInicio;
PImage fondoSeleccion;
PImage fondoJuego;
PImage fondoFinal;
PImage fondoCorte;

import processing.sound.*;

SoundFile music;
SoundFile effect1;

int contador;
int turno;
boolean sj1, sj2;

String nombrej1, nombrej2;
int vidaj1, vidaj2;
int ataquej1, ataquej2;
int imagenj1a, imagenj2a;
int imagenj1b, imagenj2b;

void setup ()
{
  size (1080, 800);
  
  piedra1 = new LPiedra ("Rock",9,1,0);
  papel1 = new LPapel ("Paper",7,3,0);
  tijeras1 = new LTijeras ("Scissors",8,1,0);
  lagarto1 = new LLagarto ("Lizard",9,2,0);
  spock1 = new LSpock ("Spock",10,3,0);
  
  piedra2 = new LPiedra ("Rock",9,1,1);
  papel2 = new LPapel ("Paper",7,3,1);
  tijeras2 = new LTijeras ("Scissors",8,1,1);
  lagarto2 = new LLagarto ("Lizard",9,2,1);
  spock2 = new LSpock ("Spock",10,3,1);
  
  jugador1 = new LJ1 (nombrej1,vidaj1, ataquej1, 0);
  jugador2 = new LJ2 (nombrej2,vidaj2, ataquej2, 1);
  
  Intro = new PInicio (0,0);
  Selection = new PSeleccion (0,0);
  Game = new PJuego (0,0);
  End = new PFinal (0,0);
  Cut = new PFinal (0,0);
  
  ShPiA = loadImage ("sheldon-piedra-a.png");
  ShPaA = loadImage ("sheldon-papel-a.png");
  ShTiA = loadImage ("sheldon-tijeras-a.png");
  ShLaA = loadImage ("sheldon-lagarto-a.png");
  ShSpA = loadImage ("sheldon-spock-a.png");
  
  ShPiB = loadImage ("sheldon-piedra-b.png");
  ShPaB = loadImage ("sheldon-papel-b.png");
  ShTiB = loadImage ("sheldon-tijeras-b.png");
  ShLaB = loadImage ("sheldon-lagarto-b.png");
  ShSpB = loadImage ("sheldon-spock-b.png");
  
  fondoInicio = loadImage ("fondo3.jpg");
  fondoSeleccion = loadImage ("fondo4.jpg");
  fondoJuego = loadImage ("fondo5.jpg");
  fondoFinal = loadImage ("fondo7.jpg");
  fondoCorte = loadImage ("fondo1.jpg");
  
  music = new SoundFile (this, "TBBTIntro.mp3");
  effect1 = new SoundFile (this, "transicion.mp3");
  
  music.play ();
  
}

void draw ()
{
  Pantallas ();
}