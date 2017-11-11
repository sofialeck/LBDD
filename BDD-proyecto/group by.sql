
USE Escolar_Horario
go

select A.NomAlu as 'Nombre', A.Edad
from Alumno as A
group by A.NomAlu, A.Edad
order by A.Edad desc

select count(M.NumFrecuencia) as 'Cantidad de Materias', M.NumSemestre as 'Semestre'
from  Materia as M
group by M.NumSemestre

select top 3 Ma.NomMaestro
from Maestro as Ma
group by Ma.NomMaestro

select  Sum(Salon.Capacidad) as 'capacidad de salon mayor a 30', AVG(IdSalon) as 'identificador de salon'
from Salon
group by Salon.Capacidad
having(Salon.Capacidad) >29
select * from Salon


select  a.IdSalon,  Count(Salon.Capacidad) as 'Cantidad de grupos por salon'
from Salon as Salon 
join Grupo as a on a.IdSalon= Salon.IdSalon
group by a.IdSalon