inherited MenuConfig: TMenuConfig
  Caption = 'MenuConfig'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited pnHeader: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 582
      inherited lbHeader: TLabel
        Width = 550
        Height = 31
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited pnBody: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 0
      ExplicitTop = 33
      ExplicitWidth = 584
      ExplicitHeight = 328
      inherited pcBody: TPageControl
        ActivePage = tsDatabase
        ExplicitLeft = 1
        ExplicitTop = 5
        ExplicitWidth = 584
        ExplicitHeight = 328
        object tsGeneral: TTabSheet
          Caption = 'General'
          object pnGeneral: TPanel
            Left = 0
            Top = 0
            Width = 576
            Height = 298
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 32
            ExplicitTop = 8
            ExplicitWidth = 185
            ExplicitHeight = 41
            object pnGeneralFooter: TPanel
              Left = 0
              Top = 256
              Width = 576
              Height = 42
              Align = alBottom
              TabOrder = 0
              ExplicitTop = 248
              ExplicitWidth = 574
              object pnGeneralFooter02: TPanel
                Left = 478
                Top = 1
                Width = 10
                Height = 40
                Align = alRight
                BevelOuter = bvNone
                Color = clFuchsia
                ParentBackground = False
                TabOrder = 0
                Visible = False
              end
              object pnGeneralFooter01: TPanel
                Left = 1
                Top = 1
                Width = 477
                Height = 40
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
              end
              object pnGeneralFooter03: TPanel
                Left = 488
                Top = 1
                Width = 87
                Height = 40
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 2
                object btGeneralClose: TBitBtn
                  Left = 6
                  Top = 8
                  Width = 75
                  Height = 25
                  Caption = 'Close'
                  Enabled = False
                  TabOrder = 0
                end
              end
            end
            object sbGeneral: TScrollBox
              Left = 0
              Top = 0
              Width = 576
              Height = 256
              Align = alClient
              Color = clGray
              ParentColor = False
              TabOrder = 1
              object Panel9: TPanel
                Left = 0
                Top = 0
                Width = 572
                Height = 33
                Align = alTop
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  572
                  33)
                object ckGeneralRememberWindow: TCheckBox
                  Left = 8
                  Top = 8
                  Width = 545
                  Height = 17
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Remember the window size and position for future sessions.'
                  TabOrder = 0
                end
              end
            end
          end
        end
        object tsDatabase: TTabSheet
          Caption = 'Database'
          ImageIndex = 1
          object pnDatabase: TPanel
            Left = 0
            Top = 0
            Width = 576
            Height = 298
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 32
            ExplicitTop = 8
            ExplicitWidth = 185
            ExplicitHeight = 41
            object pnDatabaseFooter: TPanel
              Left = 0
              Top = 256
              Width = 576
              Height = 42
              Align = alBottom
              TabOrder = 0
              object pnDatabaseFooter02: TPanel
                Left = 478
                Top = 1
                Width = 10
                Height = 40
                Align = alRight
                BevelOuter = bvNone
                Color = clFuchsia
                ParentBackground = False
                TabOrder = 0
                Visible = False
              end
              object pnDatabaseFooter01: TPanel
                Left = 1
                Top = 1
                Width = 477
                Height = 40
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object btDatabaseConnection: TBitBtn
                  Left = 6
                  Top = 8
                  Width = 91
                  Height = 25
                  Caption = 'Connection'
                  Enabled = False
                  TabOrder = 0
                end
              end
              object pnDatabaseFooter03: TPanel
                Left = 488
                Top = 1
                Width = 87
                Height = 40
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 2
                object btDatabaseClose: TBitBtn
                  Left = 6
                  Top = 8
                  Width = 75
                  Height = 25
                  Caption = 'Close'
                  Enabled = False
                  TabOrder = 0
                end
              end
            end
            object pnDatabaseType: TPanel
              Left = 0
              Top = 0
              Width = 576
              Height = 69
              Align = alTop
              TabOrder = 1
              DesignSize = (
                576
                69)
              object lbDatabaseType: TLabel
                Left = 12
                Top = 8
                Width = 25
                Height = 15
                Caption = 'Type'
              end
              object cbDatabaseType: TComboBox
                Left = 12
                Top = 29
                Width = 549
                Height = 23
                Style = csDropDownList
                Anchors = [akLeft, akTop, akRight]
                ItemIndex = 0
                TabOrder = 0
                Text = 'ADO SQL Server'
                Items.Strings = (
                  'ADO SQL Server'
                  'FireDAC MySQL')
              end
            end
            object pnDatabaseConfig: TPanel
              Left = 0
              Top = 69
              Width = 576
              Height = 187
              Align = alClient
              Caption = 'pnDatabaseConfig'
              TabOrder = 2
              ExplicitLeft = 24
              ExplicitTop = 128
              ExplicitWidth = 185
              ExplicitHeight = 41
              object pcDatabaseConfig: TPageControl
                Left = 1
                Top = 1
                Width = 574
                Height = 185
                ActivePage = tsDatabaseFiredacMysql
                Align = alClient
                TabOrder = 0
                ExplicitLeft = 2
                ExplicitTop = 2
                object tsDatabaseFiredacMysql: TTabSheet
                  Caption = 'FireDAC MySQL'
                  object pnDatabaseFiredacMysql: TPanel
                    Left = 0
                    Top = 0
                    Width = 566
                    Height = 155
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'Panel1'
                    TabOrder = 0
                    object cv: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 566
                      Height = 155
                      Align = alClient
                      Color = clGray
                      ParentColor = False
                      TabOrder = 0
                      object Panel1: TPanel
                        Left = 0
                        Top = 0
                        Width = 541
                        Height = 65
                        Align = alTop
                        ParentBackground = False
                        TabOrder = 0
                        DesignSize = (
                          541
                          65)
                        object Label1: TLabel
                          Left = 12
                          Top = 8
                          Width = 32
                          Height = 15
                          Caption = 'Server'
                        end
                        object edTipo: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                          ExplicitWidth = 541
                        end
                      end
                      object Panel2: TPanel
                        Left = 0
                        Top = 65
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 1
                        DesignSize = (
                          541
                          65)
                        object Label2: TLabel
                          Left = 12
                          Top = 8
                          Width = 48
                          Height = 15
                          Caption = 'Database'
                        end
                        object Edit1: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                          ExplicitWidth = 541
                        end
                      end
                      object Panel3: TPanel
                        Left = 0
                        Top = 195
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 2
                        DesignSize = (
                          541
                          65)
                        object Label3: TLabel
                          Left = 12
                          Top = 8
                          Width = 50
                          Height = 15
                          Caption = 'Password'
                        end
                        object Edit2: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                          ExplicitWidth = 541
                        end
                      end
                      object Panel4: TPanel
                        Left = 0
                        Top = 130
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 3
                        DesignSize = (
                          541
                          65)
                        object Label4: TLabel
                          Left = 12
                          Top = 8
                          Width = 23
                          Height = 15
                          Caption = 'User'
                        end
                        object Edit3: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                        end
                      end
                    end
                  end
                end
                object tsDatabaseAdoMssql: TTabSheet
                  Caption = 'ADO SQL Server'
                  ImageIndex = 1
                  object pnDatabaseAdoMssql: TPanel
                    Left = 0
                    Top = 0
                    Width = 566
                    Height = 155
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'pnDatabaseAdoMssql'
                    TabOrder = 0
                    object sbDatabaseAdoMssql: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 566
                      Height = 155
                      Align = alClient
                      Color = clGray
                      ParentColor = False
                      TabOrder = 0
                      object Panel5: TPanel
                        Left = 0
                        Top = 0
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 0
                        ExplicitLeft = 3
                        ExplicitTop = -7
                        DesignSize = (
                          541
                          65)
                        object Label5: TLabel
                          Left = 12
                          Top = 8
                          Width = 32
                          Height = 15
                          Caption = 'Server'
                        end
                        object Edit4: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                        end
                      end
                      object Panel6: TPanel
                        Left = 0
                        Top = 65
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 1
                        ExplicitTop = 0
                        DesignSize = (
                          541
                          65)
                        object Label6: TLabel
                          Left = 12
                          Top = 8
                          Width = 48
                          Height = 15
                          Caption = 'Database'
                        end
                        object Edit5: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                        end
                      end
                      object Panel7: TPanel
                        Left = 0
                        Top = 130
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 2
                        DesignSize = (
                          541
                          65)
                        object Label7: TLabel
                          Left = 12
                          Top = 8
                          Width = 23
                          Height = 15
                          Caption = 'User'
                        end
                        object Edit6: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                        end
                      end
                      object Panel8: TPanel
                        Left = 0
                        Top = 195
                        Width = 541
                        Height = 65
                        Align = alTop
                        TabOrder = 3
                        DesignSize = (
                          541
                          65)
                        object Label8: TLabel
                          Left = 12
                          Top = 8
                          Width = 50
                          Height = 15
                          Caption = 'Password'
                        end
                        object Edit7: TEdit
                          Left = 12
                          Top = 29
                          Width = 520
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          Text = 'edTipo'
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
