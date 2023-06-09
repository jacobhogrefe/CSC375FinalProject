USE [SuperMarioMakerCourseData]
GO
/****** Object:  StoredProcedure [dbo].[difficultyAndLevelTheme]    Script Date: 5/6/2023 4:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[difficultyAndLevelTheme] @difficulty nvarchar(50)
As

SELECT 
    c.difficulty, 
    COUNT(CASE WHEN c.gameStyle = 'marioBros' THEN 1 END) numberOfSuperMarioBrosLevels,
    COUNT(CASE WHEN c.gameStyle = 'marioBros3' THEN 1 END) numberOfSuperMarioBros3Levels,
    COUNT(CASE WHEN c.gameStyle = 'marioWorld' THEN 1 END) numberOfSuperMarioWorldLevels,
	COUNT(CASE WHEN c.gameStyle = 'marioBrosU' THEN 1 END) numberOfNewSuperMarioBrosULevels
FROM courses c
Where c.difficulty = @difficulty
GROUP BY c.difficulty

