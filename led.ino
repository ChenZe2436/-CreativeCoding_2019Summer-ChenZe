void setup() {
   for(int i=2;i<=7;i++){
  pinMode(i,OUTPUT);
   }
}

void loop() {
  for(int x=2;x<=7;x++){
    digitalWrite(x,HIGH);
    delay(1000);
    }
   for(int y=2;y<=7;y++){
    digitalWrite(y,LOW);
    }
    delay(1000);
  for(int x=2;x<=7;x++){
    digitalWrite(x,HIGH);
    }
    delay(1000);
    
   for(int y=2;y<=7;y++){
    digitalWrite(y,LOW);
    delay(1000);
    }
  
   
  
  }
 
