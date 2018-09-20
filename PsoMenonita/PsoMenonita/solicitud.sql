SELECT Top 10 * 
FROM Solicitudes 
WHERE 1 = 1
	and id = '258'
	--and numContrato = 'PSM000019838500'
Order By ID Desc
;
--Update Solicitudes 
Set numContrato = 'PSM000019396300',
numgrupo = '3007',
tipoSolicitud = 1
WHERE 1 = 1
	and id = 258
;


--=======Rollback=====
--Update Solicitudes 
Set numContrato = '',
numgrupo = '',
tipoSolicitud = 2
WHERE 1 = 1
	and id = '246'
;
--=======Rollback=====



SELECT * 
FROM Usuarios 
WHERE 1 = 1
	--and npi <> ''
	--and Email Like '%medico%'
	--and Email Like '%ivanRepServ@gmail.com%'--'%ivan1@mail.com%'--'ivanProv@mail.com'--
	--and email = 'ivanAdministrador@gmail.com'--'ivanRepServ@gmail.com'--'ivan1@mail.com'--
	--and tipoCuenta = 2--medico
	and nombre Like '%tania%'
;

--===============tipoCuenta====================
--Paciente: 1
--Proveedor: 2
--Empleado PSM: 3
--===============tipoCuenta====================

--===============rolesInternos====================
--procesador: 1
--coordinador: 2
--administrador: 3
--supervisor: 4
--medico evaluador: 5
--Representante de servicio: 6
--===============rolesInternos====================

--===============rolesExternos====================
--Externo: 0
--===============rolesExternos====================

--Update Usuarios
Set IsLoggedIn = 0
Where 1 = 1
	and email = 'ivanProv@mail.com'--'ivanProcesador@gmail.com'--
;

--==============RepServ========================
--Update Usuarios
Set tipoCuenta = 6,
	roleId = 6
Where email = 'ivanRepServ@gmail.com'--'ivan1@mail.com'--
;
--==============RepServ========================


--==============admin========================
--Update Usuarios
Set tipoCuenta = 3,
	roleId = 3
Where email = 'ivanAdministrador@gmail.com'--'ivanRepServ@gmail.com'--'ivan1@mail.com'--
;
--==============admin========================

--==============coordinador========================
--Update Usuarios
Set tipoCuenta = 3,
	roleId = 2,
	isTempCoord = 1
Where email = 'ivanCoordinador@gmail.com'--'ivanAdministrador@gmail.com'--'ivanRepServ@gmail.com'--'ivan1@mail.com'--
;
--==============coordinador========================

--==============medicoEvaluador========================
--Update Usuarios
Set tipoCuenta = 3,
	roleId = 5
Where email = 'ivanMedicoEvaluador@gmail.com'--'ivanCoordinador@gmail.com'--'ivanAdministrador@gmail.com'--'ivanRepServ@gmail.com'--'ivan1@mail.com'--
;
--==============medicoEvaluador========================

--==============procesador========================
--Update Usuarios
Set tipoCuenta = 3,
	roleId = 1
Where email = 'ivanProcesador@gmail.com'--'ivanCoordinador@gmail.com'--'ivanAdministrador@gmail.com'--'ivanRepServ@gmail.com'--'ivan1@mail.com'--
;
--==============procesador========================


Select Top 100 *
From Solicitudes
Where email = 'ivanRepServ@gmail.com'--'ivanProv@mail.com'--'ivan1@mail.com'--
;

Select Top 100 *
From [dbo].[Roles]
Where id = 3
;


SELECT * 
FROM Roles 
WHERE 1 = 1
	--and RoleType = @RoleType
;

Select *
From Cosmetics
;

Select *
From documentos
;


