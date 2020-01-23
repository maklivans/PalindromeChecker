public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String onlyLett = "";
  for (int i=0; i<word.length(); i++) {
    if (Character.isLetter(word.charAt(i)))
      onlyLett+=word.charAt(i);
  }
  String lCase = onlyLett.toLowerCase();

  if (lCase.equals(reverse(word))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String onlyLett = "";
  for (int i=0; i<str.length(); i++) {
    if (Character.isLetter(str.charAt(i)))
      onlyLett+=str.charAt(i);
  }
  String lCase = onlyLett.toLowerCase();

  String sNew = "";
  for (int i=lCase.length()-1; i>=0; i--)
    sNew = sNew+lCase.substring(i,i+1);
  return sNew;
}


