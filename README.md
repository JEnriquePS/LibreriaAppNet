# Diagrama Entidad Relación (Solo Aplicación Biblioteca)
![Diagrama Entidad Relación](DiagramaEntidadRelacion.png)

# Diagrama Arquitectura 
![Diagrama Arquitectura](DiagramaArquitectura.png)

# LibreriaDB (Solo Aplicación Biblioteca)
> Libreria.sql


# API - EndPoints
# Doc APIS [Swagger DOC](http://localhost:5067/swagger/index.html)

## Registro de Libros
```
POST:  api/libros/
```
## Registro de Prestamos de Libros
```
POST:  api/libros/prestamos/
Body:  libros: [{libroId: 33,
        userId: 43}, ...]
```
