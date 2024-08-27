USE [demo1]
GO
/****** Object:  StoredProcedure [dbo].[insert_into]    Script Date: 8/26/2024 5:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[insert_into]
 @employee_name VARCHAR(50),
 @employee_id INT,
 @date_of_join DATE,
 @salary DECIMAL,
 @department VARCHAR(20)
 
 AS
 BEGIN
 BEGIN TRAN
 
  INSERT INTO employeetable
  values(@employee_name, @employee_id, @date_of_join, @salary,@department)
 COMMIT END 