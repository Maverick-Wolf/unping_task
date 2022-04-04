# Unping Task

## Features
- Easy to navigate UI/UX.
- Efficient state management using provider.
- Use of Hive data boxes so users can continue the signUp from the same point whever they want.
- Link of video recoding -> **[Link](https://drive.google.com/file/d/1XyweFDw-SWhwAv5WwOceFcEZ9Irw_5Dt/view?usp=sharing)**

## Tech and Packages used
- Dart - Dart is a programming language designed for client development
- Flutter - Flutter is an open-source UI software development kit created by Google
- Provider Package - for efficient state management
- Http Package - A composable, Future-based library for making HTTP requests.
- Hive Package - for storing data so user can continue the singUp from the same point. 

## Possible Optimizations and Things I Would do Differently
  - Instead of using Provider for state management we can use Riverpod.
  - Use of "consumer widget" whenever possible while using Provider to make sure the whole widget tree is not rebuilt. 
  - Struture the code better, using functions to make use of common code and using better comments throughout the codebase.

## Databse structure used
The website currently uses JSON structure to store the user data, the current format of the JSON structure is  
<pre>
{  
   "users":{  
      "uniqueUserID1": _userData1,  
      "uniqueUserID2": _userData2  
   }  
}
</pre>  
- Images of data structure  
<img src="https://imgur.com/gj6KjpV.jpg" width="450" height="300"> <img src="https://imgur.com/3EdkiRK.jpg" width="450" height="300">
