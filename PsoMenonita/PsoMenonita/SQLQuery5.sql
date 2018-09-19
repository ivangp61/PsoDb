SELECT email,NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
(Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada 
FROM Solicitudes 
WHERE (Status < 4 AND Email = 'ivanProv@mail.com' or (Status > 5 AND Email = 'ivanProv@mail.com')
          or (Status = 4 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997')  
		  or Status = 5 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997')

SELECT email,NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
(Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada 
FROM Solicitudes 
WHERE (Status < 4 AND Email = 'ivanProv@mail.com' or (Status > 5 AND Email = 'ivanProv@mail.com')
          or (Status = 4 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' AND Email = 'ivanProv@mail.com')  
		  or Status = 5 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' AND Email = 'ivanProv@mail.com')



SELECT NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
(Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada 
FROM Solicitudes 
WHERE (Status < 4 AND Email = 'ivanProv@mail.com' or (Status > 5 AND Email = 'ivanProv@mail.com')
          or (Status = 4 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' and Email = 'ivanProv@mail.com')
		  or (Status = 5 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' and Email = 'ivanProv@mail.com'))
;

SELECT NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
         (Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada 
FROM Solicitudes 
WHERE (Status < 4 AND Email = 'ivanProv@mail.com' or (Status > 5 AND Email = 'ivanProv@mail.com')) or 
         (Status = 4 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' AND Email = 'ivanProv@mail.com')  
		 or (Status = 5 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' AND Email = 'ivanProv@mail.com')


SELECT NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
         (Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada 
FROM Solicitudes 
WHERE CONCAT(Nombre, ' ', ApellidoPaterno, ' ', ApellidoMaterno) LIKE '%ivan%' 
                                                        AND (Status < 4 AND Email = 'ivanProv@mail.com' or (Status > 5 AND Email = 'ivanProv@mail.com')
                                                        or  (Status = 4 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997')  
		                                                or Status = 5 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997')





--==================================PRUEBAS=============================
--Nombre
SELECT NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
         (Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada FROM Solicitudes WHERE CONCAT(Nombre, ' ', ApellidoPaterno, ' ', ApellidoMaterno) LIKE '%Registro%' 
                                                        AND (Status < 4 AND Email = 'ivanProv@mail.com' or (Status > 5 AND Email = 'ivanProv@mail.com')
                                                        or  (Status = 4 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' AND Email = 'ivanProv@mail.com')  
		                                                or Status = 5 AND DATEDIFF(day, FechaTrabajado, GETDATE() ) <= 30 AND FechaTrabajado != '9999-12-31 23:59:59.997' AND Email = 'ivanProv@mail.com')
--Estatus
SELECT NumContrato, NumeroSolicitud, TipoSolicitud, Pueblo,
         (Nombre + ' '+ ApellidoPaterno + ' ' + ApellidoMaterno) AS Nombre, Celular,  FechaTramitada FROM Solicitudes WHERE Email = 'ivanProv@mail.com' AND (Status = 1  OR Status = 2 OR Status = 3)
--==================================PRUEBAS=============================