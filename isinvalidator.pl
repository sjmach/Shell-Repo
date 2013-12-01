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
	  my $usercode = <STDIN>;
	  chomp $usercode;
	  print "The code entered is $usercode\n";
	  
		
}

sub processInput( &)
{
	
} 

welcomeMessage();
processInput();
