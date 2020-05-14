tic;

%HR (edit port and baudrate as needed)
s1=serial('/dev/tty.usbmodem1432301','Baudrate',115200);
fopen(s1);

% temp
s2=serial('/dev/tty.usbmodem1432201','Baudrate',9600);
fopen(s2);

% button
%s3=serial('/dev/tty.usbmodem1412301','Baudrate',57600);
%fopen(s3);

HRarray = []
Temparray = []
Fatarray = []
time = []



j = 1;

while(1<12)

    HRcurrent = str2num(fscanf(s1))
    %HRcurrent = fgetl(s1)
    HRarray = vertcat(HRarray, HRcurrent);
    
    Tempcurrent = fscanf(s2, "%f")
   % Tempcurrent = fgetl(s2)
    Temparray = vertcat(Temparray, Tempcurrent);  
    
   % fscanf(s3, "%f", 1);

    
   % Fatcurrent = fscanf(s3, "%f", 1)
   % Fatarray = vertcat(Fatarray, Fatcurrent);
    
    time = vertcat(time, toc);
    toc
end


str='';
j=1;

%fclose(instrfind);

while(j<1000)
    
    str=fscanf(s1) 
    
    j = j+1;

end;
 

