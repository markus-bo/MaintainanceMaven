using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Http;
using FluentAssertions;
using ApiIsolated;
using Moq;

namespace Api_Test;

public class WeatherForecast_Tests
{
    [Fact]
    public void GetWeatherForecast_ShouldReturnRandomWheather_WhenCalled()
    {
        "test".Should().Be("whatever");
        //Arrange
     /*   var qc = new QueryCollection(new Dictionary<string, StringValues>{{"q", new StringValues(queryParam)}});
        var request = new Mock<HttpRequest>();
        
        request.Setup(x => x.Query)
                .Returns(() => qc);

        var logger = Mock.Of<ILogger>();

        //Act
        var response = await Function1.Run(request.Object, logger);
        
        //Assert
        Assert.True(response.GetType() == expectedResult);*/
    }
}