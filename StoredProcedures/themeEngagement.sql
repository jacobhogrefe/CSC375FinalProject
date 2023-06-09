USE [SuperMarioMakerCourseData]
GO
/****** Object:  StoredProcedure [dbo].[themeEngagement]    Script Date: 5/6/2023 4:54:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[themeEngagement] @difficulty nvarchar(50)
As

Select c.gameStyle, Sum(stars) TotalStars, Sum(players) TotalUniquePlayers
from [course-meta] cm
Inner Join courses c
On cm.id = c.id
Where c.difficulty = @difficulty
Group by c.gameStyle

