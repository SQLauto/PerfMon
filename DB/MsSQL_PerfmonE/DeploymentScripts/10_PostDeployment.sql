USE PerfmonE
GO
print '--- Loading static data ---'
GO
exec [tools_SetUpDimentions]
GO
exec [tools_SetUpLookups]
GO
print '--- Loading static data: data loaded. ---'
GO

USE [master]
GO
ALTER DATABASE [PerfmonE] SET READ_WRITE 
GO
