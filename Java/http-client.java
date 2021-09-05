import com.mashape.unirest.http.*;
import java.io.*;
public class main {
  public static void main(String []args) throws Exception{
    Unirest.setTimeouts(0, 0);
    HttpResponse<String> response = Unirest.get("https://api.ipengine.dev")
      .body("")
      .asString();
    
    System.out.println(response.getBody());
  }
}
