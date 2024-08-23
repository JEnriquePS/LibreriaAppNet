using Libreria.Models;
using Libreria.Services;
using Microsoft.AspNetCore.Mvc;
namespace Libreria.Controllers;

[ApiController]
[Route("api/[controller]")]
public class LibroController : ControllerBase
{
    ILibroService libroService;
    
    public LibroController(ILibroService service)
    {
        libroService = service;
    }

    // POST
    [HttpPost]
    public IActionResult PostLibro([FromBody] Libro libro)
    {
        libroService.AddLibro(libro);
        return Ok();
    }
}
