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
   word.toLowerCase();
   String emp = "";
  for(int i=0; i < word.length();i++)
  if(!word.substring(i,i+1).equals(" "))
  emp = emp + word.substring(i,i+1);
  String back = reverse(emp);
  if( back.equals(emp)) 
  return true;
  else
  return false;
}
public String reverse(String str)
{
  String s = "";
  int last = str.length()-1;
  for(int i=last; i>=0; i--)
    s = s + str.substring(i, i+1);
  return s;
}
