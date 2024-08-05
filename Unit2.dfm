object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 459
  Width = 1002
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=clientes'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 792
    Top = 224
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\20171148060032\Documents\delphi-app\libmysql\libmysql.d' +
      'll'
    Left = 792
    Top = 160
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 792
    Top = 296
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery1nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object FDQuery1datanascimento: TDateField
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object FDQuery1email: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 100
    end
    object FDQuery1senha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 100
    end
    object FDQuery1foto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
  end
end
