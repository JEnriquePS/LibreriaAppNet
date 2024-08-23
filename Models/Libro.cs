namespace Libreria.Models;

public class Libro
{
    public int Id { get; set; }
    public string titulo { get; set; }
    public string autor { get; set; }
    public string ISBN { get; set; }
    public string editorial { get; set; }
    public DateTime fechaPublicacion { get; set; }
    public string categoria { get; set; }
    public int numCopias { get; set; }
}