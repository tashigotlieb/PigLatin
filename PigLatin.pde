int j =0;
public void setup() 

{

  	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  for(int j = 0; j<word.length(); j++) {
    if((word.charAt(j) == 'a') || word.charAt(j) == 'o' || word.charAt(j) == 'u' || word.charAt(j) == 'e' || word.charAt(j) == 'i'){
      return j;
    }
  }return -1;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1) // no vowels
	{
		return sWord + "ay";
	} else if(findFirstVowel(sWord) == 0) {
  return sWord +"way";
}
	else if(sWord.substring(0,2).equals("qu")) { // qu at start 
  return sWord.substring(2)+"quay";
	} else if(findFirstVowel(sWord) == 1) {
return sWord.substring(j+1) + sWord.substring(0,j+1) + "ay";   
} 
	else if (findFirstVowel(sWord) == 2){ 
  return sWord.substring(j+2) + sWord.substring(0,j+2) + "ay";
} else {
  return sWord.substring(j+3) + sWord.substring(0,j+3) + "ay";
 }
}
