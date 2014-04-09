
// SETUP ============================================
// Set up speaker on a PWM pin (digital 9, 10 or 11)
int speakerOut = 9;

int inputC = A0;
int inputD = A1;
int inputE = A2;
int inputF = A3;

int ledC = 12;
int ledD = 5;
int ledE = 6;
int ledF = 7;

int c = LOW;
int d = LOW;
int e = LOW;
int f = LOW;
// Do we want debugging on serial out? 1 for yes, 0 for no
int DEBUG = 1;

void setup() { 
  pinMode(speakerOut, OUTPUT);
//  if (DEBUG) { 
    Serial.begin(9600); // Set serial out if we want debugging
//  }
 
 pinMode(inputC, INPUT); 
 pinMode(inputD, INPUT); 
 pinMode(inputE, INPUT); 
 pinMode(inputF, INPUT); 
 
 pinMode(ledC, OUTPUT);
}

// MELODY and TIMING  =======================================
//  melody[] is an array of notes, accompanied by beats[], 
//  which sets each note's relative length (higher #, longer note) 
//int beats[]  = { 16, 16, 16,  8,  8,  16, 32, 16, 16, 16, 8, 8 }; 
//int MAX_COUNT = sizeof(melody) / 2; // Melody length, for looping.

// Set overall tempo
long tempo = 10000;
// Set length of pause between notes
int pause = 1000;
// Loop variable to increase Rest length
int rest_count = 100; //<-BLETCHEROUS HACK; See NOTES

// Initialize core variables
int tone_ = 0;
int beat = 100;
long duration  = 0;

// PLAY TONE  ==============================================
// Pulse the speaker to play a tone for a particular duration
void playTone() {
  long elapsed_time = 0;
  
  if (tone_ > 0) { // if this isn't a Rest beat, while the tone has 
    //  played less long than 'duration', pulse speaker HIGH and LOW
    while (elapsed_time < duration) {

      digitalWrite(speakerOut,HIGH);
      delayMicroseconds(tone_ / 2);

      // DOWN
      digitalWrite(speakerOut, LOW);
      delayMicroseconds(tone_ / 2);

      // Keep track of how long we pulsed
      elapsed_time += (tone_);
    } 
  }
  else { // Rest beat; loop times delay
    for (int j = 0; j < rest_count; j++) { // See NOTE on rest_count
      delayMicroseconds(duration);  
    }                                
  }  
  digitalWrite(ledC, LOW);  
}

// LET THE WILD RUMPUS BEGIN =============================
void loop() {

  c = digitalRead(inputC);
  d = digitalRead(inputD);
  e = digitalRead(inputE);
  f = digitalRead(inputF);
  
  if(c == HIGH){
    digitalWrite(ledC, c);
    
    tone_ = 3830;
    duration = 18 * tempo;
    playTone();
    delayMicroseconds(pause);
  }
  if(d == HIGH){
    tone_ = 3400;
    playTone();
  }
  if(e == HIGH){
    tone_ = 3038;
    playTone();
  }
  if(f == HIGH){
    tone_ = 2864;
    playTone();
  }
  
  //Serial.write(speakerOut);
}
