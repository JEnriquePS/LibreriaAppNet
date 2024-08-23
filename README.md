# Diagrama Entidad Relación (Solo Aplicación Biblioteca)
![Diagrama Entidad Relación](DiagramaEntidadRelacion.png)

# Diagrama Arquitectura 
![Diagrama Arquitectura](DiagramaArquitectura.png)

# LibreriaDB (Solo Aplicación Biblioteca)
> Libreria.sql


# API - EndPoints

## Registro de Libros
```
POST:  v1/libros/
```
## Registro de Prestamos de Libros

```
POST:  v1/libros/prestamos/
Body:  {libroId: 33,
        userId: 43}
```
