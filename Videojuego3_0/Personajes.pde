interface Luchador 
{
  void display (int x, int y, int t1, int t2);
  String nombrep ();
  int vidap ();
  int ataquep ();
  int pxp ();
}

class LPiedra implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  LPiedra (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
    
    
    
  }
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    switch (p)
    {
      case 0:
        
        image (ShPiA, px, y, t1, t2);
        
      break;
      
      case 1:
        image (ShPiB, px, y, t1, t2);
        
      break;
    }
  }
  
  
}

class LPapel implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  LPapel (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
    
  }
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    
    switch (p)
    {
      case 0:
        image (ShPaA, px, y, t1, t2);
        
      break;
      
      case 1:
        image (ShPaB, px, y, t1, t2);
        
      break;
    }
    
  } 
  
}

class LTijeras implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  LTijeras (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
    
  }
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    
    switch (p)
    {
      case 0:
        image (ShTiA, px, y, t1, t2);
        
      break;
      
      case 1:
        image (ShTiB, px, y, t1, t2);
        
      break;
    }
  }
  
}

class LLagarto implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  LLagarto (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
  }
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    switch (p)
    {
      case 0:
        image (ShLaA, px, y, t1, t2);
        
      break;
      
      case 1:
        image (ShLaB, px, y, t1, t2);
        
      break;
    }
  }
 
  
}

class LSpock implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  LSpock (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
    
  }
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    switch (p)
    {
      case 0:
        image (ShSpA, px, y, t1, t2);
        
      break;
      
      case 1:
        image (ShSpB, px, y, t1, t2);
        
      break;
    }
  }
  
}

class LJ1 implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  LJ1 (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
    
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    switch (nombre)
    {
      case "Rock":
        if (p == 0)
        {
          image (ShPiA, px, y, t1, t2);
          
        }
        
        if (p == 1)
        {
          image (ShPiB, px, y, t1, t2);
          
        }
      break;
      
      case "Paper":
        if (p == 0)
          {
            image (ShPaA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShPaB, px, y, t1, t2);
            
          }
      break;
      
      case "Scissors":
        if (p == 0)
          {
            image (ShTiA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShTiB, px, y, t1, t2);
            
          }
      break;
      
      case "Lizard":
        if (p == 0)
          {
            image (ShLaA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShLaB, px, y, t1, t2);
            
          }
      break;
      
      case "Spock":
        if (p == 0)
          {
            image (ShSpA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShSpB, px, y, t1, t2);
            
          }
      break;
      
    }
  }
  
  
  
}

class LJ2 implements Luchador
{
  String nombre;
  int vida;
  int ataque;
  int p;
  int px;
  
  LJ2 (String nombre_, int vida_, int ataque_, int p_) 
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    p = p_;
    
  }
  
  String nombrep ()
  {
    return nombre;
  }
  
  int vidap ()
  {
    return vida;
  }
  
  int ataquep ()
  {
    return ataque;
  }
  
  int pxp ()
  {
    return px;
  }
  
  void display (int x, int y, int t1, int t2)
  {
    px = x;
    switch (nombre)
    {
      case "Rock":
        if (p == 0)
        {
          image (ShPiA, px, y, t1, t2);
          
        }
        
        if (p == 1)
        {
          image (ShPiB, px, y, t1, t2);
          
        }
      break;
      
      case "Paper":
        if (p == 0)
          {
            image (ShPaA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShPaB, px, y, t1, t2);
            
          }
      break;
      
      case "Scissors":
        if (p == 0)
          {
            image (ShTiA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShTiB, px, y, t1, t2);
            
          }
      break;
      
      case "Lizard":
        if (p == 0)
          {
            image (ShLaA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShLaB, px, y, t1, t2);
            
          }
      break;
      
      case "Spock":
        if (p == 0)
          {
            image (ShSpA, px, y, t1, t2);
            
          }
          
          if (p == 1)
          {
            image (ShSpB, px, y, t1, t2);
            
          }
      break;
      
    }
  }
  
  
  
}