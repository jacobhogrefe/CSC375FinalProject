USE [SuperMarioMakerCourseData]
GO
/****** Object:  StoredProcedure [dbo].[difficultyMakeUpOfAllLevels]    Script Date: 5/6/2023 4:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[difficultyMakeUpOfAllLevels]
As

SELECT 
    c.gameStyle, 
    COUNT(CASE WHEN c.difficulty = 'easy' THEN 1 END) numberOfEasyLevels,
    COUNT(CASE WHEN c.difficulty = 'normal' THEN 1 END) numberOfNormalLevels,
    COUNT(CASE WHEN c.difficulty = 'expert' THEN 1 END) numberOfExpertLevels,
	COUNT(CASE WHEN c.difficulty = 'superExpert' THEN 1 END) numberOfSuperExpertLevels
FROM courses c
GROUP BY c.gameStyle
ORDER BY c.gameStyle;

