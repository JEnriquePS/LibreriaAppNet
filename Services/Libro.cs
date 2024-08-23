using Libreria.Models;
using Libreria.Data;
namespace Libreria.Services;

public class LibroService : ILibroService
{
    LibroContext context;

    public LibroService(LibroContext dbcontext)
    {
        context = dbcontext;
    }
    public async Task<Libro> AddLibro(Libro libro)
    {
        context.Add(libro);
        await context.SaveChangesAsync();
        return libro;
    }
    
}

public interface ILibroService
{
    //Task<List<Libro>> GetAllLibros();
    //Task<Libro> GetLibro(int id);
    Task<Libro> AddLibro(Libro libro);
    //Task<Libro> UpdateLibro(Libro libro);
    //Task DeleteLibro(int id);
}