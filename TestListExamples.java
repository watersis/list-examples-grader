import static org.junit.Assert.*;
import org.junit.*;

public class TestListExamples {
  // Write your grading tests here!
  class myStringChecker implements StringChecker{
    public boolean checkString(String s){
      if(s.length()>3){
        return true;
      }
      else{
        return false;
      }
    }
  }
  public void test1(){
    List<String> input = Arrays.asList("a","b","c");
    List<String> input2 = Arrays.asList("d","e");
     List<String> expect1 = Arrays.asList("a","b","c","d","e");
    assertEquals(expect1, ListExamples.merge(input1,input2));
  }
}
