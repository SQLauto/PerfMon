SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Times](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[TheTime] [time](0) NOT NULL,
	[HourInDay] [tinyint] NOT NULL,
	[MinuteInHour] [tinyint] NOT NULL,
	[EveryHour_2] [tinyint] NOT NULL,
	[EveryHour_4] [tinyint] NOT NULL,
	[EveryHour_6] [tinyint] NOT NULL,
	[EveryHour_8] [tinyint] NOT NULL,
	[EveryHour_12] [tinyint] NOT NULL,
 CONSTRAINT [PK_Times] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_TheTime] UNIQUE NONCLUSTERED 
(
	[TheTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Times]  WITH CHECK ADD  CONSTRAINT [CK_Times_TheTime] CHECK  (((0)=datepart(second,[TheTime])%(5)))
GO
ALTER TABLE [dbo].[Times] CHECK CONSTRAINT [CK_Times_TheTime]
GO