const int sensor=A5; // Assigning analog pin (middle) A5 to variable 'sensor' (right = ground, left = power)

float tempc; //variable to store temperature in degree Celsius

float tempf; //variable to store temperature in Fahreinheit

float vout; //temporary variable to hold sensor reading

void setup() {

pinMode(sensor,INPUT); // Configuring sensor pin as input

Serial.begin(9600);

}

void loop() {

vout=analogRead(sensor); //Reading the value from sensor

vout=(vout*500)/1023;

tempc=vout; // Storing value in Degree Celsius

tempf=(vout*1.8)+32; // Converting to Fahrenheit

Serial.print(tempc);
Serial.println();

//Serial.print(" ");

//delay(50); //Delay of 1 second for ease of viewing 
}
