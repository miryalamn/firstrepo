
Q. What is shell ?

	It is a small program, which is an interface between
	a user and operating system (os)

Q. What are the different types of shell ?

	/bin/bash
	/bin/sh
	/bin/csh
	/bin/tcsh
	/bin/ksh
	/bin/zsh

Q. What is the difference btwn each shell ?

	style of writing is different


	#bash script

	if [ $NUM -eq 20 ]; then
		echo "The $NUM is equal to 20"
	fi  <-- this is not typo


	#c script
	if ( $NUM == 20 ) {
		echo "The $NUM is equal to 20"
	}

Q. Why I need to write shell script ?
	
	To perform all basic OS related tasks.

	Backup
	Users Management
	Pkg Management
	Disk Management


Q. What is she-bang operator ?
	#!/path/shell

	e.g.	#!/bin/bash	<-- put this if you are writing bash script
	e.g.    #!/bin/csh	<-- put this if you are writing csh script

   The combination of # & ! is call she-bang operator
	It should be always at the first line of your script
	It will specify what shell you will use to run the script
	
Q. What is a comment ?
	Any thing starts after #(hash) mark is a comment
	except at first line

	# This is a comment
	echo "Print some thing" # This is a also comment

Q. What extension should I use to my script ?

	myscript.sh
	myscript.bash
	myscript.csh

	myscript.py
	myscript.pl
	myscript.rb

	Note: It is not mandatory to give any extension to a script
		in shell scripting

Q. How to run a script ?

	Method I) # Along with the shell spedified
		/bin/bash myscript.sh

		Permission: I do not need any execution permission on this

	Method II)# Along with full path
		/home/devops/myscript.sh

		Permission: I do need execution permission
		chmod 755 myscript.sh
		chmod +x myscript.sh

	Method III)# Along with short path
		cd /home/devops/
		./myscript.sh

		Permission: I do need execution permission
		chmod 755 myscript.sh
		chmod +x myscript.sh

Q. How to write my shell script ?
		
vi template.sh
#!/bin/bash
#######################
# Purpose  :
# Owner    : Support<info@tejoyasha.com>
# Version  :
# Input    :
# Output   :
# Copyright: Tejoyasha IT Solutions Pvt. Ltd.	
#######################
save and exit

		

VARIABLES
---------

Variable is a label given to a memory location, which may hold some value.

e.g. 

	VERSION=9

Note: no space is expected accross the equal sign


Q. Is the variable name is case sensitive ?

	Yes, its a case sensitive

	VERSION=9
	version=10
	VeRsIoN=11

  Note: try to use VARIABLE name always in cap letter

	shell has many key words e.g 

	if, then, while, for 

	to avoid conflict with those key words, define var name in cap

	then="ibm"   not good


	You will not able to add two variables directly 

	NUM1=5
	NUM2=10

	RESULT=NUM1+NUM2 <--- not possible
			illegal operation


Q. What are the different types of variables ?


	1. System Variables		PATH, SHELL
		when you install the OS, automcatically these variables
		are available

	2. User defined Variables	AGE, NAME
		when you will define the variables

	3. Special Shell Variables	$@, $$	
		These are used when we are working with shell scripting


Q. What are the proper names for the variables ?

	Valid Names

	COMP_NAME="ibm"
	COMP_NAME1="accenture"
	COMPNAME="infosys"
	_COMPNAME="wipro"

	1. You can have cap letter, small letters and underscore 

	Invalid Names

	1COMPANY="not valid"
	COMPANY!="illegal"
	COMP@NAME="not correct"

	1. You should not start variable name with number.
	2. You do not need to have any special character
		@,!,<space>

	
Q. To define a variable ?

	 i) in the shell script

		VERSION=9

	ii)on the command line

		export VERSION=9


Q. how to see or use the variable ?

		1) how to see defined variables

			env | less 		

		2) how to see then individually

			add $ in front of variable name

			echo $PATH
			echo $SHELL
			echo $HISTSIZE

Q. How to assign a value to a variable ?

		VERSION=9	<--- direct method
		read VERSION    <--- read the value from keyboard



Q. What is the effect of single quote, dobule quote and back-tick ?



	export COMMAND=/bin/ls

	1)Single Quotes
	--------------

	echo '$COMMAND'

		$COMMAND

	When we have some thing in single quote, it will litterally print
	the same thing

	2)Double Quotes
	---------------

	echo "$COMMAND"

		/bin/ls

	when we have some thing in double quotes, it will try to evaluate
	the variable value and then print it

	3)Backtick Quotes
	-----------------
	echo `$COMMAND`
		firstscript.sh variable.sh

	when we have some thing in back ticks, it will try to evaluate the
	variable value and execute it as a command



	VERSION='9'
	NEW_NAME="$COMP_NAME"
	WHOAMI=`/usr/bin/whoami`  OR WHOAMI=$(/usr/bin/whoami)

	

	STATEMENTS
	----------

	if statement
	------------

	Method I
	--------

	if [ condition ]; then
		#execute this block when condition is true
		command1
		command2
		....
		commandN
	fi

	Note: condition will always result either true/false.

	Method II
	---------

	if [ condition ]; 
	then
		#execute this block when condition is true
		command1
		command2
		....
		commandN
	fi

	Method III
	----------

	if [ condition ]; then
		#execute this block when condition is true
		command1
		command2
		....
		commandN
	else
		#execute this block when condition is false 
		commandx
		commandy
		....
		commandz
	fi

	Method IV
	---------

	if [ condition1 ]; then
		#execute this block if condition1 is true	
		command-1
		command-2
		#automatically jump to fi
	elif [ condition2 ];
		#execute this block if condition2 is true	
		command-a
		command-b
		#automatically jump to fi
	elif [ condition3 ];
		#execute this block if condition3 is true	
		command-i
		command-ii
		#automatically jump to fi
	else
		#execute this block if all above are false
		command-A
		command-B
	fi

		elif <-- correct word
		fi   <-- correct word

		
		command-i
		command-ii
		
		
	What are different types of condition/expression we can have ?

	1) File Test Condition
	2) Number Test Condition
	3) String Test Condition
	4) Logical Test Condition

	

	File Test
	---------

	-f 	it will check the file availability
	-d	it will check the dir availability
	-r	it will check the read permission on file/dir
	-w	it will check the write permission on file/dir
	-x	it will check the execute permission on file/dir
	-k	it will check special permission sticky bit
	-s	it will check the file size is not zero bytes


	if [ -f "/etc/passwd" ]; then
	  echo "Yes, the file /etc/passwd exists"
	else
	  echo "No, the file /etc/passwd does not exists"
	fi


	String Test
	-----------

	strings are equal
	string1 == string2

	strings are not equal
	string1 != string2

	
	Number Test
	------------

	Normal		Shell way
	=		-eq
	>		-gt
	<		-lt
	>=		-ge
	<=		-le


	Student Result

		65%    First Class
		55%    Second Class
		45%    Third Class
      less that 45%    Fail


      Passing the arguments to the script ?

                         0       1    2    3        9
		./scriptname.sh arg1 arg2 arg3 ... arg9

					  special shell variables
	position 0 = script name		$0
	postion  1 = arg1			$1
	...
	...
	position 				$9

	      $0         $1
	./numbertest1.sh 68

Homework: What if we have more than 10 arguments ?


	Logical Test
	------------

	AND	( -a )

		Input A		Input B		Output
		-------		-------		------
		False		False		False
		False		True		False
		True		False		False
		True		True		True

	OR	( -o )

		Input A		Input B		Output
		-------		-------		------
		False		False		False
		False		True		True
		True		False		True
		True		True		True
		
	NOT	( ! )

		Input A				Output
		-------				------
		False				True
		True				False


		
	

	



