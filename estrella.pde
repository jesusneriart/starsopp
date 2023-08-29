//clase estrella

class Estrella{
  //atributos
  color colorin;
  float tam,tam2;
  float x;
  float y;
  boolean creciendo;
  
  
  //constructor: el orden sintactico con el que el programador va creando los objetos y determina los valores del os atributos
  Estrella(float ttam, color tcolorin){
    colorin = tcolorin;
    tam = ttam;
    x = random(0,displayWidth);
    y = random(0,displayHeight);
    tam2  = tam*2;
    creciendo =false;
  }
  
  
  //metodos
  
  
  //metodo para 
  void nacer(){
    noStroke();
    fill(colorin);
    ellipse(x,y, tam, tam);
    fill(colorin, 150);
    ellipse(x,y,tam2,tam2);
  
  }
  
  
  
  //metodo para hacerlo brillar
  void brillo(){
    if (creciendo){
      tam2 = tam2+1;
      if (tam2>=tam*2){
        creciendo = false;
      }
    }
    else{
      tam2 = tam2-1;
      if (tam2<=tam){
        creciendo = true;
      }
     
      
    }
  }
  

  boolean mouseIn(){
    //funcion dist para calcular la distancia entre dos puntos, en este caso la x y la y con respecto a la posicion del mouse.
    if (dist(x, y, mouseX, mouseY) < tam2){
      return true;
    }
    else{
      return false;
    }

  }
    


  
  
  
}
