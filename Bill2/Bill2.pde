public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509"; 
ArrayList <String> func = new ArrayList <String>();
public void setup()  
{ 
for(int i=2; i<e.length()-10;i++){
    String digits = e.substring(i, i+10);
    if(sum10(digits) == 49){
      //System.out.println(i-1+". "+digits);
      func.add(digits);
    }
  }
for(int i=0; i<func.size(); i++) 
  System.out.println("f("+(i+1)+")= "+func.get(i));
}
public void draw()  
{   
  //not needed for this assignment
}  
/*public boolean sum10(String num)  
{   
  for(int i=0; i<e.length()-10;i++){
    String digits = e.substring(i, i+10);
  double dnum = Double.parseDouble(digits);
    if(num<2)
  return false;
  for(int i=2; i<=Math.sqrt(num); i++)
   if(num%i==0)
     return false;
   return true;
} 
}*/
public final static int sum10(String num){
  char[] ten = num.toCharArray();
  int sum = 0;
  for(int i=0; i<num.length(); i++){
    sum = sum+Integer.parseInt(ten[i]+"");
  }
  return sum;
}