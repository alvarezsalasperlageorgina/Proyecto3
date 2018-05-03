interface Pantalla 
{
  void display ();
}

class PInicio implements Pantalla 
{
  int x;
  int y;
  
  PInicio (int x_, int y_)
  {
    x = x_;
    y = y_;
  }
  
  void display ()
  {
    image (fondoInicio, 0, 0, 1080, 800);
    
    String titulo = "Not your average Rock, Paper, Scissors game";
    fill (255);
    textSize(66);
    textAlign(CENTER,CENTER);
    text (titulo, 90, 20, 800, 200);
    
    String historia = "Sheldon debe tomar una decisión: Seguir estudiando la teoría de cuerdas o cambiar de enfoque. Para eso usa este juego en el que las diferentes versiones de si mismo lo ayudarán a llegar a la elección correcta. Ayúdalo.";
    fill (255);
    textSize(20);
    textAlign(CENTER,CENTER);
    text (historia, 90, 200, 800, 200);
    
    String instrucciones = "Presiona 'a' para empezar el juego.";
    fill (255);
    textSize(36);
    textAlign(CENTER,CENTER);
    text (instrucciones, 150, 400, 700, 50);
    
    String cout = " <<Scissors cut paper. Paper covers rock, Rock crushes lizard. Lizard poisons Spock. Spock smashes scissors. Scissors decapitate lizard. Lizard eats paper. Paper disapproves Spock. Spock vaporizes rock. And as it always has been: rock crushes scissors.>>                     - Cooper, Sheldon.";
    fill (255);
    textSize (12);
    textAlign (RIGHT, CENTER);
    text (cout, 550, 600, 400, 200);
    
    keyPressed ();
    if (key == 'a')
    {
      contador += 1;
      effect1. play ();
      //Cut. display ();
    }
    
  }
}

class PSeleccion implements Pantalla 
{
  int x;
  int y;
  
  PSeleccion (int x_, int y_)
  {
    x = x_;
    y = y_;
  }
  
  void display ()
  {
    image (fondoSeleccion, 0, 0, 1080, 800);
    
    if (sj1 && sj2)
    {
      contador += 1;
      turno += 1;
      effect1.play ();
    }
    
    String instrucciones = "Seleccionen los luchadores";
    fill (255);
    textSize (66);
    textAlign (CENTER, BOTTOM);
    text (instrucciones, width/2, 100);
    
    String j1 = "JUGADOR 1";
    fill (255);
    textSize (20);
    textAlign (CENTER, TOP);
    text (j1, 250, 130);
    
    String j2 = "JUGADOR 2";
    fill (255);
    textSize (20);
    textAlign (CENTER, TOP);
    text (j2, 800, 130);
    
    piedra1. display (100, 190, 50, 60);
    papel1. display (80, 320, 70, 60);
    tijeras1. display (100, 430, 50, 60);
    lagarto1. display  (90, 560, 60, 80);
    spock1. display (90, 690, 50, 80);
    
    piedra2. display (650, 190, 50, 60);
    papel2. display (630, 320, 70, 60);
    tijeras2. display (650, 430, 50, 60);
    lagarto2. display  (640, 560, 60, 80);
    spock2. display (650, 690, 50, 80); 
    
    String piedra = "Vida: 9 \nAtaque: 1";
    String papel = "Vida: 7 \nAtaque: 3";
    String tijeras = "Vida: 8 \nAtaque: 1";
    String lagarto = "Vida: 9 \nAtaque: 2";
    String spock = "Vida: 10 \nAtaque: 3";
    
    fill (255);
    textSize (14);
    
    textAlign (LEFT, CENTER);
    
    text (piedra, 160, 210);
    text (papel, 160, 340);
    text (tijeras, 160, 460);
    text (lagarto, 160, 590);
    text (spock, 160, 720);
    
    text (piedra, 720, 210);
    text (papel, 720, 340);
    text (tijeras, 720, 460);
    text (lagarto, 720, 590);
    text (spock, 720, 720);
    
    fill (255, 0, 0);
    textSize (60);
    textAlign (LEFT, CENTER);
    
    text ("q", 280, 200);
    text ("w", 280, 330);
    text ("e", 280, 450);
    text ("r", 280, 580);
    text ("t", 280, 710);
    
    text ("p", 840, 200);
    text ("o", 840, 330);
    text ("i", 840, 450);
    text ("u", 840, 580);
    text ("y", 840, 710);
    
    keyPressed ();
      switch (key)
      {
        case 'q':
          jugador1 = piedra1;
          nombrej1 = piedra1.nombrep ();
          vidaj1 = piedra1.vidap ();
          ataquej1 = piedra1.ataquep ();
          
          sj1 = true;
          
          stroke (255);
          noFill ();
          rect (30, 170, 340, 100);        
        break;
        
        case 'w':
          jugador1 = papel1;
          nombrej1 = papel1.nombrep ();
          vidaj1 = papel1.vidap ();
          ataquej1 = papel1.ataquep ();
          
          sj1 = true;
          
          stroke (255);
          noFill ();
          rect (30, 280, 340, 110);
        break;
        
        case 'e':
          jugador1 = tijeras1;
          nombrej1 = tijeras1.nombrep ();
          vidaj1 = tijeras1.vidap ();
          ataquej1 = tijeras1.ataquep ();
          
          sj1 = true;
          
          stroke (255);
          noFill ();
          rect (30, 410, 340, 110);
        break;
        
        case 'r':
          jugador1 = lagarto1;
          nombrej1 = lagarto1.nombrep ();
          vidaj1 = lagarto1.vidap ();
          ataquej1 = lagarto1.ataquep ();
          
          sj1 = true;
          
          stroke (255);
          noFill ();
          rect (30, 540, 340, 110);
        break;
        
        case 't':
          jugador1 = spock1;
          nombrej1 = spock1.nombrep ();
          vidaj1 = spock1.vidap ();
          ataquej1 = spock1.ataquep ();
          
          sj1 = true;
          
          stroke (255);
          noFill ();
          rect (30, 670, 340, 110);
        break;
        
        case 'p':
          jugador2 = piedra2;
          nombrej2 = piedra2.nombrep ();
          vidaj2 = piedra2.vidap ();
          ataquej2 = piedra2.ataquep ();
          
          sj2 = true;
          
          stroke (255);
          noFill ();
          rect (560, 170, 340, 100);
        break;
        
        case 'o':
          jugador2 = papel2;
          nombrej2 = papel2.nombrep ();
          vidaj2 = papel2.vidap ();
          ataquej2 = papel2.ataquep ();
          
          sj2 = true;
          
          stroke (255);
          noFill ();
          rect (560, 280, 340, 110);
        break;
        
        case 'i':
          jugador2 = tijeras2;
          nombrej2 = tijeras2.nombrep ();
          vidaj2 = tijeras2.vidap ();
          ataquej2 = tijeras2.ataquep ();
          
          sj2 = true;
          
          stroke (255);
          noFill ();
          rect (560, 410, 340, 110);
        break;
        
        case 'u':
          jugador2 = lagarto2;
          nombrej2 = lagarto2.nombrep ();
          vidaj2 = lagarto2.vidap ();
          ataquej2 = lagarto2.ataquep ();
          
          sj2 = true;
          
          stroke (255);
          noFill ();
          rect (560, 540, 340, 110);
        break;
        
        case 'y':
          jugador2 = spock2;
          nombrej2 = spock2.nombrep ();
          vidaj2 = spock2. vidap ();
          ataquej2 = spock2.ataquep ();
          
          sj2 = true;
          
          stroke (255);
          noFill ();
          rect (560, 670, 340, 110);
        break;
        
      }
    
  }
}

class PJuego implements Pantalla 
{
  int x;
  int y;
  
  PJuego (int x_, int y_)
  {
    x = x_;
    y = y_;
  }
  
  void display ()
  {
    image (fondoJuego, 0, 0, 1080, 800);
    fill (255,255,255, 50);
    rect (0,0,1080,800);
    
    if (vidaj1 <= 0 || vidaj2 <=0)
    {
      contador += 1;
      effect1. play ();
    }
    
    String titulo = "Luchadores, ¡COMBATAN!";
    fill (255);
    textSize (60);
    textAlign (CENTER, CENTER);
    text (titulo, 500, 30);
    
    String Turno1 = "Jugador 1,\nPresiona la tecla: \nf";
    String Turno2 = "Jugador 2,\nPresiona la tecla: \nj";
   
    if (turno == 1)
    {
      fill (255, 0, 0);
      textSize (40);
      textAlign (CENTER, CENTER);
      text (Turno1, 50, 450, 300, 300);
    }
    
    if (turno == 2)
    {
      fill (255, 0, 0);
      textSize (40);
      textAlign (CENTER, CENTER);
      text (Turno2, 650, 450, 300, 300);
    }
    
    
    switch (turno)
  {
    case 1:
      keyPressed ();
      if (key == 'f')
      {
        vidaj2 -= ataquej1;
        turno = 2;
      }
    break;
    
    case 2:
      keyPressed ();
      if (key == 'j')
      {
        vidaj1 -= ataquej2;
        turno = 1;
      }
    break;
  }
    
    noStroke ();
    
    fill (200);
    
    rect (60, 120, 200, 10, 7);
    rect (700, 120, 200, 10, 7);
    
    fill (255, 255, 0);
    
    rect (60, 120, vidaj1*20, 10, 7);
    rect (700, 120, vidaj2*20, 10, 7);
    
    
    if (jugador1.nombrep() == "Rock")
    {
      jugador1.display(100, 200, 250, 250);
    }
    
    if (jugador2. nombrep () == "Rock")
    {
      jugador2.display(700, 200, 250, 250);
    }
    
    if (jugador1.nombrep () == "Paper") 
    {
      jugador1.display(50, 180, 400, 300);
    }
    
    if (jugador2. nombrep () == "Paper")
    {
      jugador2.display(650, 180, 400, 300);
    }
    
    if (jugador1.nombrep () == "Scissors") 
    {
      jugador1.display(100, 150, 250, 330);
    }
    
    if (jugador2.nombrep () == "Scissors")
    {
      jugador2.display(700, 150, 250, 330);
    }
    
    if (jugador1.nombrep () == "Lizard")
    {
      jugador1.display(100, 150, 300, 350);
    }
    
    if (jugador2. nombrep () == "Lizard")
    {
      jugador2.display(700, 150, 300, 350);
    }
    
    if (jugador1.nombrep () == "Spock")
    {
      jugador1.display(100, 140, 200, 350);
    }
    
    if (jugador2. nombrep () == "Spock")
    {
      jugador2.display(700, 140, 200, 350);
    }
    
  }
}

class PFinal implements Pantalla 
{
  int x;
  int y;
  
  PFinal (int x_, int y_)
  {
    x = x_;
    y = y_;
  }
  
  void display ()
  {
    image (fondoFinal, 0, 0, 1080, 800);
    fill (255,255,255, 50);
    rect (0,0,1080,800);
    
    String titulo = "Ganador:";
    fill (255);
    textSize (60);
    textAlign (CENTER, CENTER);
    text (titulo, 500, 100);
    
    if (vidaj1 <= 0)
    {
      String gj2 = "Jugador 2";
      fill (255, 0, 0);
      textSize (60);
      textAlign (CENTER, CENTER);
      text (gj2, 500, 200);
      
      switch (nombrej2)
      {
        case "Rock":
          jugador2.display (350, 250, 300, 350);
        break;
        
        case "Paper":
          jugador2.display (300, 250, 400, 300);
        break;
        
        case "Scissors":
          jugador2.display (350, 250, 300, 400);
        break;
        
        case "Lizard":
          jugador2.display (350, 250, 400, 450);
        break;
        
        case "Spock":
          jugador2.display (350, 220, 250, 450);
        break;
        
      }
      
    }
    
    if (vidaj2 <= 0)
    {
      String gj1 = "Jugador 1";
      fill (255, 0, 0);
      textSize (60);
      textAlign (CENTER, CENTER);
      text (gj1, 500, 200);
      
      switch (nombrej1)
      {
        case "Rock":
          jugador1.display (350, 250, 300, 350);
        break;
        
        case "Paper":
          jugador1.display (300, 250, 400, 300);
        break;
        
        case "Scissors":
          jugador1.display (350, 250, 300, 400);
        break;
        
        case "Lizard":
          jugador1.display (350, 250, 400, 450);
        break;
        
        case "Spock":
          jugador1.display (350, 220, 250, 450);
        break;
        
      }
      
    }
    
    String instruccion = "Presiona 'm' si quieres volver a jugar";
    fill (255);
    textSize (30);
    textAlign (CENTER, CENTER);
    text (instruccion, 500, 700);
    
    keyPressed ();
    if (key == 'm')
    {
      contador = 0;
      turno = 0;
      sj1 = false;
      sj2 = false;
      
      effect1. play ();
      
    }
    
    
  }
}

class PCorte implements Pantalla 
{
  int x;
  int y;
  
  PCorte (int x_, int y_)
  {
    x = x_;
    y = y_;
  }
  
  void display ()
  {
    image (fondoCorte, 0, 0, 1080, 800);
  }
  
}  

void Pantallas ()
{
  switch (contador)
  {
  case 0:
    Intro.display ();
  break;
  
  case 1:
    Selection.display ();
  break;
  
  case 2:
    Game.display ();
  break;
  
  case 3:
    End.display ();
  break;
  
  }
  
  if (contador > 3)
  {
    contador = 0;
  }
}