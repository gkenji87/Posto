object DMConexao: TDMConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Sistemas\Posto\database\POSTO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConexaoBeforeConnect
    Left = 104
    Top = 80
  end
end
