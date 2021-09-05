using System;
using RestSharp;
namespace HelloWorldApplication {
  class HelloWorld {
    static void Main(string[] args) {
      var client = new RestClient("https://api.ipengine.dev");
      client.Timeout = -1;
      var request = new RestRequest(Method.GET);
      var body = @"";
      request.AddParameter("text/plain", body,  ParameterType.RequestBody);
      IRestResponse response = client.Execute(request);
      Console.WriteLine(response.Content);
    }
  }
}
