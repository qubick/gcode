/*
#define  c     3830    // 261 Hz 
#define  d     3400    // 294 Hz 
#define  e     3038    // 329 Hz 
#define  f     2864    // 349 Hz 
#define  g     2550    // 392 Hz 
#define  a     2272    // 440 Hz 
#define  b     2028    // 493 Hz 
#define  C     1912    // 523 Hz 
#define  R     0
*/
int speakerOut = 9;
int inputC = A0;
int inputD = A1;
int inputE = A2;
int inputF = A3;

int c = LOW;
int d = LOW;
int e = LOW;
int f = LOW;

int DEBUG = 1;

void setup(){
  pinMode(speakerOut, OUTPUT);
  pinMode(inputC, INPUT);
  pinMode(inputD, INPUT);
  pinMode(inputE, INPUT);
  pinMode(inputF, INPUT);
  
//  if(DEBUG){
    Serial.begin(9600);
//  }
}

void loop(){
  
  c = digitalRead(inputC);
  d = digitalRead(inputD);
  e = digitalRead(inputE);
  f = digitalRead(inputF);
  
  if(c == HIGH){
    analogWrite(speakerOut, 3830);
    delay(300);
    analogWrite(speakerOut, 0);
  }
  if(d == HIGH){
    analogWrite(speakerOut, 3400);
  }
  if(e == HIGH){
    analogWrite(speakerOut, 3038);
  }
  if(f == HIGH){
    analogWrite(speakerOut, 2864);
  }
  
  Serial.write(speakerOut);
}
