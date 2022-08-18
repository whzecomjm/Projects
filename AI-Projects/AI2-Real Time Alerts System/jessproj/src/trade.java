import jess.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class trade {
public static void input(String filePath) throws JessException{ 
	Rete engine = new Rete();
	engine.reset();
	engine.batch("pro.clp");
	double closeprice = (double) 10.17; 
	double currentprice = (double) 10.32; 
	engine.executeCommand("(assert(closeprice "+closeprice+"))");
	engine.executeCommand("(assert(currentprice "+currentprice+"))");
	
	int timeorder,volume;
	double price; 
    try {
    	String encoding="GBK"; 
         File file=new File(filePath); 
         if(file.isFile() && file.exists()){
           InputStreamReader read = new InputStreamReader( 
           new FileInputStream(file),encoding); 
           BufferedReader bufferedReader = new BufferedReader(read); 
           String lineTxt = null; 
           while((lineTxt = bufferedReader.readLine()) != null){ 
                String[] trade = lineTxt.split("\t");
                timeorder =  Integer.valueOf(trade[0]);
                price = Double.valueOf(trade[1]);
                volume = Integer.valueOf(trade[2]);
                engine.executeCommand("(assert(trade(timeorder "+timeorder+") (price "+price+") (volume "+volume+")))");} 
           engine.executeCommand("(facts)");
           engine.run();
           read.close();              }      
         else{System.out.println("Can't find file!");} 
         } 
    catch (Exception e) { 
    System.out.println("Read file Wrong!"); 
    e.printStackTrace(); }   
} 

public static void main(String[] args) throws JessException{input("C:\\Users\\Administrator\\workspace\\jessproj\\1.txt");}
}