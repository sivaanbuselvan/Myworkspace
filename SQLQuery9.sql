USE [demo1]
GO
/****** Object:  StoredProcedure [dbo].[Update_info]    Script Date: 8/26/2024 5:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Update_SignUp] 
@Loginid INT, 
@Password VARCHAR(15)

AS 
BEGIN
 UPDATE SignUp 
SET Password = @Password
WHERE Loginid = @Loginid

END;