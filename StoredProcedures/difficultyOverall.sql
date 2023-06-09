USE [SuperMarioMakerCourseData]
GO
/****** Object:  StoredProcedure [dbo].[difficultyOverall]    Script Date: 5/6/2023 4:54:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[difficultyOverall]
As

Select c.difficulty, Sum(stars) TotalStars, Sum(players) TotalUniquePlayers, Sum(attempts) TotalAttempts
from [course-meta] cm
Inner Join courses c
On cm.id = c.id
Group by c.difficulty

