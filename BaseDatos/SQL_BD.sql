Create database estiloumca;
GO
use estiloumca;
GO
CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(255) NOT NULL,
    FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
    FechaModificacion DATETIME NULL,
    UsuarioCreacion NVARCHAR(50) NOT NULL,
    UsuarioModificacion NVARCHAR(50) NULL
);
GO

-- Procedimiento para agregar una categoría
CREATE PROCEDURE sp_AgregarCategoria
    @Nombre NVARCHAR(100),
    @Descripcion NVARCHAR(255),
    @UsuarioCreacion NVARCHAR(50)
AS
BEGIN
    INSERT INTO Categorias (Nombre, Descripcion, UsuarioCreacion)
    VALUES (@Nombre, @Descripcion, @UsuarioCreacion);
END;
GO
EXEC sp_AgregarCategoria 'Ropa', 'Intima', 'kbrenesc';

Select *
from Categorias;