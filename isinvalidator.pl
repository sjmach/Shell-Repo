#!/usr/bin/perl
#############################
### ISIN Validator ##########
#Takes a user input and validates it whether it is valid ISIN number
# Sundeep Machado

use strict;
use warnings;

sub welcomeMessage()
{
	print "Welcome to ISIN validator perl program \n";
	print"Press y to continue or yes to continue\n";
	my $useroption = <STDIN>;
	chomp($useroption);
	if (($useroption eq "y") || ($useroption eq "yes"))
	{	
		validateInput();
	}
	else
	{
		print "The program will be terminated\n";
		sleep 5;
		#die;
	}
}
 
sub validateInput()
{	
	 print "Enter the code you want to validate\n";
         # Used a scalar instead of array as the perl executor hangs even if user has finished entering his input
	 my $usercode = <STDIN>;
	 chomp $usercode;
	# my @arrusercode;
	 # This pushes the usercode to arrusercode which is an array
	 #push @arrusercode, $usercode;
	
	 print "The code entered is $usercode\n";
	 #Passing the array to process
	 processInput($usercode);
		
}

sub processInput( )
{	 #Note this step of getting the first parameter correctly in an array
	 my $processcode= $_[0];
	 #Validation 1 : The length of ISIN string should be 12
	 my $codelength = length($processcode);
	 print " the code length is $codelength";
	 if($codelength != 12)
	 {
		print"The ISIN number should have exactly 12 characters";
	
	 }
	 else
	 {
		
	
	 print "The code entered iss $processcode \n";	
	 #Validation 2 : First two characters should be valid country code and remaining 10 characters should be numbers 
	 if ($processcode =~ /^(BE|BM|FR|BG|VE|DK|HR|DE|JP|HU|HK|JO|BR|XS|FI|GR|IS|RU|LB|PT|NO|TW|UA|TR|LK|LV|LU|TH|NL|PK|PH|RO|EG|PL|AA|CH|CN|CL|EE|CA|IR|IT|ZA|CZ|CY|AR|AU|AT|IN|CS|CR|IE|ID|ES|PE|TN|PA|SG|IL|US|MX|SK|KR|SI|KW|MY|MO|SE|GB|GG|KY|JE|VG|NG|SA|MU)([0-9]{9})([0-9])$/)
	 {
		#Validation 3 : The last digit is the checksum digit
		push @arrusercode, $processcode;
	 }
	 else
	 {
		print "In an ISIN code, the first two chracters should be valid country code and remaining 9 digits should be numbers"; 
	  }
	 
	  }
} 

sub isValid()
{	
	my $codecheck= @{$_[0]};
	print "The code is $codecheck"
}
welcomeMessage();


