INSERT INTO [dbo].[aspnet_Applications]
           ([ApplicationName]
           ,[LoweredApplicationName]
           ,[ApplicationID]         
           ,[Description])
     VALUES
           ('/'
           ,'/'
           ,'29E6F4BC-7BB7-46E1-B250-09204974441A'           
           ,'NULL')

INSERT INTO [dbo].[aspnet_Roles]
           ([ApplicationId]
           ,[RoleId]
           ,[RoleName]
           ,[LoweredRoleName]
           ,[Description])
     VALUES
           ('29E6F4BC-7BB7-46E1-B250-09204974441A'
           ,'F5840EDB-5DF1-4624-986A-CBB75E5622E8'
           ,'Consultant'
           ,'consultant'
           ,'NULL')
GO

INSERT INTO [dbo].[aspnet_Roles]
           ([ApplicationId]
           ,[RoleId]
           ,[RoleName]
           ,[LoweredRoleName]
           ,[Description])
     VALUES
           ('29E6F4BC-7BB7-46E1-B250-09204974441A'
           ,'B56E3162-0095-4314-B389-F4FA0ED4D48C'
           ,'ProjectAdministrator'
           ,'projectadministrator'
           ,'NULL')
           
 INSERT INTO [dbo].[aspnet_Roles]
           ([ApplicationId]
           ,[RoleId]
           ,[RoleName]
           ,[LoweredRoleName]
           ,[Description])
     VALUES
           ('29E6F4BC-7BB7-46E1-B250-09204974441A'
           ,'0E199E7F-6318-4487-8E26-3573EA39B6E1'
           ,'ProjectManager'
           ,'projectmanager'
           ,'NULL')
		   
		   
INSERT INTO aspnet_SchemaVersions (Feature, CompatibleSchemaVersion, IsCurrentVersion) VALUES('common', 1, 1)
INSERT INTO aspnet_SchemaVersions (Feature, CompatibleSchemaVersion, IsCurrentVersion) VALUES('health monitoring', 1, 1)
INSERT INTO aspnet_SchemaVersions (Feature, CompatibleSchemaVersion, IsCurrentVersion) VALUES('membership', 1, 1)
INSERT INTO aspnet_SchemaVersions (Feature, CompatibleSchemaVersion, IsCurrentVersion) VALUES('personalization', 1, 1)
INSERT INTO aspnet_SchemaVersions (Feature, CompatibleSchemaVersion, IsCurrentVersion) VALUES('profile', 1, 1)
INSERT INTO aspnet_SchemaVersions (Feature, CompatibleSchemaVersion, IsCurrentVersion) VALUES('role manager', 1, 1)




