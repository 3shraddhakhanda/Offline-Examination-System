/*
SQLyog Community v12.3.3 (32 bit)
MySQL - 5.0.67-community-nt : Database - quizsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`quizsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `quizsystem`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `Admin_id` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`Admin_id`,`password`) values 
('nikita','nj123');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `c_id` int(20) NOT NULL auto_increment,
  `c_name` varchar(20) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`c_id`,`c_name`) values 
(1,'C++'),
(2,'Java'),
(3,'C'),
(4,'PYTHON');

/*Table structure for table `ques_c` */

DROP TABLE IF EXISTS `ques_c`;

CREATE TABLE `ques_c` (
  `q_id` int(30) NOT NULL,
  `ques` varchar(200) default NULL,
  `option1` varchar(100) default NULL,
  `option2` varchar(100) default NULL,
  `option3` varchar(100) default NULL,
  `option4` varchar(100) default NULL,
  `correct_ans` varchar(100) default NULL,
  PRIMARY KEY  (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ques_c` */

insert  into `ques_c`(`q_id`,`ques`,`option1`,`option2`,`option3`,`option4`,`correct_ans`) values 
(1,'The format identifier ‘%i’ is also used for _____ data type?','char','int ','float','double','2'),
(2,' Which data type is most suitable for storing a number 65000 in a 32-bit system?\r\n','signed short','unsigned short','long','int','2'),
(3,' What is short int in C programming?\r\n','Basic datatype of C','qualifier','short is the qualifier and int is the bas datatype\r\n','All of the above','3'),
(4,'enum types are processed by\r\n','compiler','preprocessor','linker','assembler','1'),
(5,'Which of the following cannot be used as LHS of the expression in for (exp1;exp2; exp3) ?','variable','function','typedef','macros','4'),
(6,'Which keyword can be used for coming out of recursion?\r\n','break','return','exit','both a and b','2'),
(7,'The keyword ‘break’ cannot be simply used within:\r\n','do-while','if-else','for','while','2'),
(8,'#include <stdio.h> is called','Preprocessor directive\r\n','Inclusion directive','File inclusion directive\r\n','None of the mentioned\r\n','1'),
(9,'C preprocessors can have compiler specific features.\r\n','true','false','Depends on the standard\r\n','Depends on the platform\r\n','1'),
(10,'Preprocessor feature that supply line numbers and filenames to compiler is called?\r\n','Selective inclusion','macro substitution\r\n','Concatenation\r\n','line control','4'),
(11,'A preprocessor is a program\r\n','That processes its input data to produce output that is used as input to another program\r\n','That is nothing but a loader\r\n','That links various source files','All of the above','1'),
(12,' Which of the following uses structure?\r\n','Array of structures\r\n','Linked Lists','Binary tree','All of above','4'),
(13,'What is the correct syntax to declare a function foo() which receives an array of structure in     function?\r\n','void foo(struct *var);\r\n','void foo(struct *var[]);\r\n','void foo(struct var);\r\n','None of these','1'),
(14,'Within main, return expr statement is equivalent to.\r\n','abort(expr)\r\n','exit(expr)\r\n','ferror(expr)\r\n','None of the above','2'),
(15,'stderr is similar to?\r\n','stdin','stdout','both a nad b','none of above','1'),
(16,'Which of the following function can be used to terminate the main function from another function safely?','return(expr);','exit(expr);\r\n','abort()','both b and c','2'),
(17,'Which is the best way to generate numbers between 0 to 99?\r\n','-99.812808637333','0.39106011706503','0.17353134804734','srand(100)','2'),
(18,'What is the return type of rand() function?','short','int','long','double','2'),
(19,'Which among the following is never possible as an output for float?','3.666666','3.666','3','None of above','4'),
(20,'The function ____ obtains block of memory dynamically.','calloc','malloc','both a and b','free','3');

/*Table structure for table `ques_cpp` */

DROP TABLE IF EXISTS `ques_cpp`;

CREATE TABLE `ques_cpp` (
  `q_id` int(10) NOT NULL,
  `ques` varchar(100) default NULL,
  `option1` varchar(70) default NULL,
  `option2` varchar(70) default NULL,
  `option3` varchar(70) default NULL,
  `option4` varchar(70) default NULL,
  `correct_ans` varchar(70) default NULL,
  PRIMARY KEY  (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ques_cpp` */

insert  into `ques_cpp`(`q_id`,`ques`,`option1`,`option2`,`option3`,`option4`,`correct_ans`) values 
(1,'Inline functions are invoked at the time of\r\n','Run time','Compile tme','Depends on how it is invoked','none of these','2'),
(2,'What is the index number of the last element of an array with 9 elements?\r\n','9','8','0','programmer defined','2'),
(3,'Which of the following gives the memory address of the first element in array?\r\n','array[0]','array[1]','array(2)','array','4'),
(4,'Which of the following type of class allows only one object of it to be created?\r\n','Virtual class','abstract class','singleton class','None of these','3'),
(5,'Which of the following statements is correct?\r\n','Base class pointer can\'t point to derived class.\r\n','Derived class pointer cannot point to base class.\r\n','Pointer to derived class cannot be created.\r\n','Pointer to base class cannot be created.\r\n','2'),
(6,'How many kinds of classes are there in c++?\r\n','1             ','2','3','4','2'),
(7,'Which other keywords are also used to declare the class other than class?\r\n','struct','union','object','both a and b','4'),
(8,'How many instances of an abstract class can be created?\r\n','1','0','5','13','2'),
(9,'Which of the following cannot be friend?\r\n','function','class','object','opertaor function','3'),
(10,'Which of the following concepts of OOPS means exposing only necessary information to client?\r\n','encapsulation','abstraction','data hiding','data binding','3'),
(11,'cout is a/an __________ .\r\n','operator','function','object','macro','3'),
(12,'which keyword is used to define the macros in c++?\r\n','macro','define ','#define','none of these','3'),
(13,'Which symbol is used to declare the preprocessor directives?\r\n','#','$','*','^','1'),
(14,'Which of the following is an abstract data type?\r\n','int ','double','string','class','4'),
(15,'What does inheriatance allows you to do?\r\n','create a class','create a hierarchy of classes','access methods','none of these','2'),
(16,'Which of the following cannot be used with the keyword virtual?','class\r\n','member functions','constructor','destructor','3'),
(17,'Which of the following functions are performed by a constructor?\r\n','Construct a new class','Construct a new object','Construct a new function','Initialize objects','4'),
(18,'Which of the following operators cannot be overloaded?\r\n','[]','->','?:','*','3'),
(19,'Which operator is used to signify the namespace?\r\n','conditional operator','ternary operator','scope operator','none of these','3'),
(20,'What is the use of Namespace?\r\n','To encapsulate the data','To structure a program into logical units.','Both a and b','none of these','2');

/*Table structure for table `ques_java` */

DROP TABLE IF EXISTS `ques_java`;

CREATE TABLE `ques_java` (
  `q_id` int(2) NOT NULL,
  `ques` varchar(200) default NULL,
  `option1` varchar(30) default NULL,
  `option2` varchar(30) default NULL,
  `option3` varchar(30) default NULL,
  `option4` varchar(30) default NULL,
  `correct_ans` varchar(40) default NULL,
  PRIMARY KEY  (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ques_java` */

insert  into `ques_java`(`q_id`,`ques`,`option1`,`option2`,`option3`,`option4`,`correct_ans`) values 
(1,'Which of the following options is the best for generating random integer 0 or 1?\r\n','(int)Math.random()','(int)Math.random() + 1','(int)(Math.random() + 0.5)','(int)(Math.random() + 0.2)','3'),
(2,'When you pass an array to a method, the method receives ________ .\r\n','A copy of the array','Copy of the 1st element','Refrence of array','Length of array','3'),
(3,'The variables declared in a class for the use of all methods of the class are called\r\n','Refrence Variables','objects','instance variables','None of these','3'),
(4,'In which area of memory, the system stores parameters and local variables whenever a method is invoked?\r\n','Heap','Storage area','Stack','Array','3'),
(5,'How many primitive data types are there in Java?','6','7','8','9','3'),
(6,'A package is a collection of\r\n','Classes','Interfaces','Editing Tools','Classes and interfaces','4'),
(7,'Select from among the following character escape code which is not available in Java.\r\n','\\t','\\r','\\a','\\\\','3'),
(8,'The object is created with new keyword\r\n','At compile time','At run time','Depends on code','None of these','2'),
(9,'What is System in System.out.println();','Class','Object','method','None of above','1'),
(10,'The String method compareTo() returns\r\n','True','False','an int value','1','3'),
(11,'What will be the return type of a method that not returns any value?\r\n','Void ','int ','double','none of the above','1'),
(12,'In Java arrays are\r\n','Objects','Object Refrences','Primitive data types','None of these','1'),
(13,'Which of the modifier can\'t be used for constructors?\r\n','public','private','static','protected','3'),
(14,'Which of the following for loops will be an infinite loop?\r\n','for(; ;)','for(i=0 ; i<1; i--)','for(i=0; ; i++)','All of above','4'),
(15,'Exception generated in try block is caught in ........... block.','catch','throw','throws','finally','1'),
(16,'The class at the top of exception class hierarchy is .................','ArithmeticException','throwable','object','exception','2'),
(17,'In Java byte, short, int and long all of these are','Signed','Unsigned','Botha and b','None Of these','1'),
(18,'toString() method is defined in\r\n','java.lang.String','java.lang.Object','java.lang.util','None of these','2'),
(19,'In which of the following package Exception class exist?\r\n','java.util','java.lang','java.io','None of these','2'),
(20,'In java, ............ can only test for equality, where as .......... can evaluate any type of the Boolean expression.\r\n','switch, if','if,switch','if,break','continue,if','2');

/*Table structure for table `ques_python` */

DROP TABLE IF EXISTS `ques_python`;

CREATE TABLE `ques_python` (
  `q_id` int(30) NOT NULL,
  `ques` varchar(100) default NULL,
  `option1` varchar(100) default NULL,
  `option2` varchar(100) default NULL,
  `option3` varchar(100) default NULL,
  `option4` varchar(100) default NULL,
  `correct_ans` varchar(100) default NULL,
  PRIMARY KEY  (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ques_python` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` varchar(15) NOT NULL,
  `name` varchar(20) default NULL,
  `gender` varchar(7) default NULL,
  `qualification` varchar(10) default NULL,
  `DOB` varchar(15) default NULL,
  `email` varchar(20) default NULL,
  `mobile` int(20) default NULL,
  `address` varchar(40) default NULL,
  `password` varchar(15) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`gender`,`qualification`,`DOB`,`email`,`mobile`,`address`,`password`) values 
('123','nik','Male','B.tech','3/3/1984','nj@gmail.com',888888888,'barkat nagar','nj123'),
('1234','dolly','Female','B.tech','1/4/1999','dolly@gmail.com',90123465,'36 china town					','jjjjj');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
