-- Tabla Libro
CREATE TABLE Libro (
    LibroID INT IDENTITY(1,1) PRIMARY KEY,
    Título VARCHAR(255) NOT NULL,
    Autor VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    Editorial VARCHAR(255),
    AñoPublicación INT,
    Categoría VARCHAR(100),
    NúmeroCopias INT NOT NULL
);

-- Tabla Copia
CREATE TABLE Copia (
    CopiaID INT IDENTITY(1,1) PRIMARY KEY,
    CódigoBarra_QR VARCHAR(100) UNIQUE NOT NULL,
    Estado VARCHAR(50) CHECK (Estado IN ('Disponible', 'Prestado', 'Perdido', 'Deteriorado')) NOT NULL,
    LibroID INT NOT NULL,
    FOREIGN KEY (LibroID) REFERENCES Libro(LibroID)
);

-- Tabla Usuario
CREATE TABLE Usuario (
    UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
    Nombres VARCHAR(255) NOT NULL,
    Apellidos VARCHAR(255) NOT NULL,
    DocumentoIdentidad VARCHAR(20) UNIQUE NOT NULL,
    Teléfono VARCHAR(20),
    Email VARCHAR(255),
    Dirección VARCHAR(255),
    Ubigeo VARCHAR(6),
    ListaNegra BIT DEFAULT 0 -- 0: No en lista negra, 1: En lista negra
);

-- Tabla PrestamoLibro
CREATE TABLE PrestamoLibro (
    PrestamoID INT IDENTITY(1,1) PRIMARY KEY,
    FechaPrestamo DATE NOT NULL,
    FechaDevolucion DATE,
    Estado VARCHAR(50) CHECK (Estado IN ('En Curso', 'Devuelto', 'Retrasado')) NOT NULL,
    UsuarioID INT NOT NULL,
    CopiaID INT NOT NULL,
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
    FOREIGN KEY (CopiaID) REFERENCES Copia(CopiaID)
);

-- Tabla Auditoría
CREATE TABLE Auditoría (
    AuditoríaID INT IDENTITY(1,1) PRIMARY KEY,
    FechaAcción DATETIME DEFAULT GETDATE(),
    Acción VARCHAR(50) NOT NULL,
    UsuarioID INT NOT NULL,
    Entidad VARCHAR(50) NOT NULL,
    DetallesAcción TEXT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID)
);

-- Tabla Notificación
CREATE TABLE Notificación (
    NotificaciónID INT IDENTITY(1,1) PRIMARY KEY,
    FechaEnvio DATETIME DEFAULT GETDATE(),
    Mensaje TEXT NOT NULL,
    UsuarioID INT NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID)
);
