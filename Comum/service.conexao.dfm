object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 328
  Width = 203
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\EMANUEL\Desktop\banco\BANCOERPGOVFB25.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 88
    Top = 112
  end
end
