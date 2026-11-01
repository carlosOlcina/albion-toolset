using Microsoft.AspNetCore.Mvc;

namespace api.Controllers;

[ApiController]
[Route("[controller]")]
public class StatusController : ControllerBase
{
    [HttpGet]
    public IActionResult GetStatus()
    {
        var response = new
        {
            Status = "Online",
            Tipestamp = DateTime.UtcNow,
            Version = "1.0.0"
        };
        
        return Ok(response);
    }
}