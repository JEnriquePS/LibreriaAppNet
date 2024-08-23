using Microsoft.EntityFrameworkCore;
using Libreria.Models;
namespace Libreria.Data;

public class LibroContext: DbContext
{
    public LibroContext(DbContextOptions<LibroContext> options) : base(options)
    {
    }
    public DbSet<Libro> Libros { get; set; }
}
