object DM: TDM
  OldCreateOrder = False
  Height = 393
  Width = 545
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=siunimep2015.database.windows.net'
      'OSAuthent=No'
      'ApplicationName=Architect'
      'Workstation=siunimep2015.database.windows.net'
      'MARS=yes'
      'DATABASE=ticket'
<<<<<<< HEAD
=======
      'User_Name=administrador'
      'Password=SI@unimep-2015'
>>>>>>> d8106558f11c8e1a558abb45132daa5b7d04428d
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object Trans: TFDTransaction
    Connection = FDConnection1
    Left = 98
    Top = 9
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 168
    Top = 8
  end
end
