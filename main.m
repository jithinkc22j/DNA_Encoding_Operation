
% Main fuction - Perform DNA_Encoding operation
%-------------------------------------------------------------------------
web('https://docs.google.com/document/d/1AbCxFoUhdOCppM8novgCdOv0F9mqYe7HlBU7yX7Svx0/edit?usp=sharing')
web('published_work.html')
%-------------------------------------------------------------------------

% DEMO:
%  a=imread('lena.png');
%-------------------------------------------------------------------------

% Input your Image here to perform DNA encoding operation:

  a=imread(' ');
  a=rgb2gray(a);
  a=reshape(a,[1,65536]);
   mn=1; 
   out=string();
%-------------------------------------------------------------------------
 while true 
  disp(' DNA Encoding operation:');
  disp(' ----------------------------');
  disp('1. DNA Encoding rule 01');
  disp('2. DNA Encoding rule 02');
  disp('3. DNA Encoding rule 03');
  disp('4. DNA Encoding rule 04');
  disp('5. DNA Encoding rule 05');
  disp('6. DNA Encoding rule 06');
  disp('7. DNA Encoding rule 07');
  disp('8. DNA Encoding rule 08');
  
  prompt= 'Enter your choice:  ';
  ch=input(prompt);
  switch(ch)
      case 1
          for j=1:65536
          out(j)=DNA_encode_rule01(a(j),mn);
          end
      case 2
          for j=1:65536
           out(j)=DNA_encode_rule02(a(j),mn);
          end
      case 3
          for j=1:65536
           out(j)=DNA_encode_rule03(a(j),mn);
          end
      case 4
          for j=1:65536
           out(j)=DNA_encode_rule04(a(j),mn);
          end
      case 5
          for j=1:65536
           out(j)=DNA_encode_rule05(a(j),mn);
          end
      case 6
          for j=1:65536
           out(j)=DNA_encode_rule06(a(j),mn);
          end
      case 7
          for j=1:65536
           out(j)=DNA_encode_rule07(a(j),mn);
          end
      case 8
          for j=1:65536
           out(j)=DNA_encode_rule08(a(j),mn);
          end
      otherwise
          disp('Error!!!!!!');
          
  end
   prompt='Do you want to continue y/n:';
   i=input(prompt,'s');
   if (i=='n')
       break;
   end
 end
%-------------------------------------------------------------------------
 % Output
   an=reshape(out,[256,256]);
%-----------------------------------------------------------------------
