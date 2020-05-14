int d=2;// to store on or off value
int e=2;
int f=2;

int x=0;

void setup()
{
pinMode(2,INPUT);
pinMode(3,INPUT);
pinMode(4,INPUT);
pinMode(13,OUTPUT);
pinMode(12,OUTPUT);
pinMode(11,OUTPUT);
Serial.begin(57600);

}
void loop(){
  
d=digitalRead(2);
f=digitalRead(3);
e=digitalRead(4);

if(d==0)
{digitalWrite(13,HIGH);
digitalWrite(12,LOW);
digitalWrite(11,LOW);
x = 1;
}

if(e==0)
{digitalWrite(11,HIGH);
digitalWrite(13,LOW);
digitalWrite(12,LOW);
x = 2;
}

if(f==0)
{digitalWrite(12,HIGH);
digitalWrite(13,LOW);
digitalWrite(11,LOW);
x = 3;
}

Serial.print(x);
delay(500); 

}
