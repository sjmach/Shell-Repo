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
	 my @arrusercode;
	 # This pushes the usercode to arrusercode which is an array
	 push @arrusercode, $usercode;
	 print "The code entered is @arrusercode\n";
	 #Passing the array to process
	 processInput(\@arrusercode);
		
}

sub processInput( )
{	 #Note this step of getting the first parameter correctly in an array
	 my @processcode= @{$_[0]};
	 print "The code entered iss @processcode \n";	
	 if (@processcode =~ /U/)
	 {
		print "It matches";	
	 }
	 else
	 {
		print "It does not match"; 
	  }	
	 
} 

sub isValid()
{	
	my $codecheck= @{$_[0]};
	print "The code is $codecheck"
}
welcomeMessage();

