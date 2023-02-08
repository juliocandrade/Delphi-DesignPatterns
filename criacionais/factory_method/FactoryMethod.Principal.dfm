object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 349
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 349
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    ExplicitHeight = 284
    object Panel2: TPanel
      Left = 10
      Top = 57
      Width = 533
      Height = 282
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 65
      ExplicitWidth = 553
      ExplicitHeight = 284
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 533
        Height = 282
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 201
        ExplicitTop = 112
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
    object Panel1: TPanel
      Left = 10
      Top = 10
      Width = 533
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Padding.Bottom = 10
      TabOrder = 1
      object Panel3: TPanel
        Left = 201
        Top = 0
        Width = 112
        Height = 37
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        TabOrder = 0
        ExplicitHeight = 65
        object Label3: TLabel
          Left = 5
          Top = 0
          Width = 107
          Height = 13
          Align = alTop
          Caption = 'Transporte:'
          ExplicitWidth = 57
        end
        object cbTransporte: TComboBox
          Left = 5
          Top = 16
          Width = 107
          Height = 21
          Align = alBottom
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Aerovi'#225'rio'
            'Aquavi'#225'rio'
            'Rodovi'#225'rio')
        end
      end
      object Panel4: TPanel
        Left = 97
        Top = 0
        Width = 104
        Height = 37
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        TabOrder = 1
        ExplicitHeight = 65
        object Label2: TLabel
          Left = 5
          Top = 0
          Width = 99
          Height = 13
          Align = alTop
          Caption = 'Destino:'
          ExplicitWidth = 40
        end
        object edtDestino: TEdit
          Left = 5
          Top = 16
          Width = 99
          Height = 21
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 21
          ExplicitWidth = 104
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 65
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 97
          Height = 13
          Align = alTop
          Caption = 'Origem:'
          ExplicitWidth = 38
        end
        object edtOrigem: TEdit
          Left = 0
          Top = 16
          Width = 97
          Height = 21
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = -1
          ExplicitTop = 19
        end
      end
      object Panel7: TPanel
        Left = 432
        Top = 0
        Width = 101
        Height = 37
        Align = alRight
        BevelOuter = bvNone
        Padding.Left = 5
        TabOrder = 3
        ExplicitHeight = 47
        object btnTransportar: TButton
          Left = 5
          Top = 12
          Width = 96
          Height = 25
          Align = alBottom
          Caption = 'Transportar'
          TabOrder = 0
          OnClick = btnTransportarClick
          ExplicitLeft = 16
          ExplicitTop = 22
          ExplicitWidth = 101
        end
      end
    end
  end
end
