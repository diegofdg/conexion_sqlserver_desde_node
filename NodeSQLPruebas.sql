CREATE DATABASE NodeSQLPruebas
GO
USE NodeSQLPruebas
GO

CREATE TABLE test(
id int identity(1,1),
descripcion varchar(200),
fecha datetime
primary key (id)
)
GO

insert into test(descripcion, fecha) values('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', getdate())
insert into test(descripcion, fecha) values('Mauris sagittis, dolor vitae posuere sollicitudin, sem lorem euismod nunc, quis consectetur dolor augue ac turpis.', getdate())
insert into test(descripcion, fecha) values('Phasellus in dui vitae magna placerat aliquam eget nec velit.', getdate())
insert into test(descripcion, fecha) values('Praesent ut arcu in nunc eleifend aliquam vel id metus.', getdate())
insert into test(descripcion, fecha) values('Ut ac lectus fringilla felis imperdiet malesuada.', getdate())
insert into test(descripcion, fecha) values('Morbi at mattis turpis.', getdate())
insert into test(descripcion, fecha) values('Cras gravida diam in lorem venenatis fermentum. ', getdate())
insert into test(descripcion, fecha) values('Donec suscipit odio ut leo fermentum lacinia.', getdate())
insert into test(descripcion, fecha) values('Aenean laoreet feugiat nunc vel rutrum.', getdate())
insert into test(descripcion, fecha) values('Nam at tellus erat. In ante elit, imperdiet sit amet eleifend vitae, fermentum a urna.', getdate())
insert into test(descripcion, fecha) values('Phasellus pellentesque placerat pellentesque.', getdate())
insert into test(descripcion, fecha) values('Sed et sapien dignissim, lacinia arcu ac, suscipit elit.', getdate())
insert into test(descripcion, fecha) values('Fusce ullamcorper mi ut lorem cursus, sed euismod nunc auctor. ', getdate())
insert into test(descripcion, fecha) values('Mauris id massa eget ligula efficitur pellentesque.', getdate())
GO

CREATE PROC USP_Test_List
AS
BEGIN
    SELECT * FROM test
END
GO

CREATE PROC USP_Test_ListById (@id int)
AS
BEGIN
    SELECT * FROM test where id = @id
END