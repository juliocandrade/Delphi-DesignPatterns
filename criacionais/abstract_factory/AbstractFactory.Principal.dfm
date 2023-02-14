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
    object Panel2: TPanel
      Left = 10
      Top = 57
      Width = 533
      Height = 282
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 533
        Height = 282
        Align = alClient
        TabOrder = 0
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
        Left = 0
        Top = 0
        Width = 112
        Height = 37
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        TabOrder = 0
        ExplicitLeft = 201
        object Label3: TLabel
          Left = 5
          Top = 0
          Width = 107
          Height = 13
          Align = alTop
          Caption = 'Conjunto de Jantar:'
          ExplicitWidth = 97
        end
        object cbEstilo: TComboBox
          Left = 5
          Top = 16
          Width = 107
          Height = 21
          Align = alBottom
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Modern'
            'Rustic')
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
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 101
          Height = 37
          Align = alRight
          BevelOuter = bvNone
          Padding.Left = 5
          TabOrder = 0
          ExplicitLeft = 432
          object btnFabricar: TButton
            Left = 5
            Top = 12
            Width = 96
            Height = 25
            Align = alBottom
            Caption = 'Fabricar'
            TabOrder = 0
            OnClick = btnFabricarClick
          end
        end
      end
    end
  end
end
