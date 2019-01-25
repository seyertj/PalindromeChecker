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
  String backwards = reverse(word);
  if (onlyLetters(backwards.toLowerCase()).equals(onlyLetters(word.toLowerCase())))
    return true;
  else
    return false;
}
public String onlyLetters(String s)
{
  String str = "";
  for (int i = 0; i < s.length(); i++)
     if (Character.isLetter(s.charAt(i)) == true)
      str = str + s.substring(i,i+1);
  return str;
}
public String reverse(String str)
{
  String sNew = new String("");
  int last = str.length()-1;
    for (int i = last; i >= 0; i--)
      sNew = sNew + str.substring(i,i+1);
  return sNew;
}
