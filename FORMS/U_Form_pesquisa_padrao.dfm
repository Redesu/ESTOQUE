object Frm_pesquisa_padrao: TFrm_pesquisa_padrao
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de pesquisa padrao'
  ClientHeight = 631
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 73
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 140
      Height = 19
      Caption = 'Op'#231#245'es de pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_nome: TLabel
      Left = 216
      Top = 10
      Width = 42
      Height = 19
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_inicio: TLabel
      Left = 448
      Top = 10
      Width = 39
      Height = 19
      Caption = 'Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_fim: TLabel
      Left = 592
      Top = 10
      Width = 26
      Height = 19
      Caption = 'Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_nome: TEdit
      Left = 216
      Top = 35
      Width = 217
      Height = 21
      TabOrder = 0
    end
    object mk_inicio: TMaskEdit
      Left = 448
      Top = 35
      Width = 118
      Height = 21
      EditMask = '!99/99/0000;0;_'
      MaxLength = 10
      TabOrder = 1
      Text = ''
    end
    object mk_fim: TMaskEdit
      Left = 592
      Top = 35
      Width = 118
      Height = 21
      EditMask = '!99/99/0000;0;_'
      MaxLength = 10
      TabOrder = 2
      Text = ''
    end
    object bt_Pesquisa: TBitBtn
      Left = 720
      Top = 15
      Width = 92
      Height = 45
      Caption = '&Pesquisar'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000027000000270000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF1F1F15C5C5C424242E1E1E1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF3F3F36F6F6F040404000000565656E2E2E2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF2F2F26E6E6E040404000000000000000000434343FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF2F2F26E6E6E0404040000000000000000000505055C5C5CFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
        F2F26E6E6E0404040000000000000000000404046F6F6FF1F1F1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F26E
        6E6E0404040000000000000000000404046E6E6EF3F3F3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF6F6F6F6F6
        F6F6F6F6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F26E6E6E04
        04040000000000000000000404046E6E6EF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEB6B6B68080805252523F3F3F3F3F
        3F3F3F3F585858868686BEBEBEF3F3F3FFFFFFFFFFFFF2F2F26E6E6E04040400
        00000000000000000404046E6E6EF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0F0F0A0A0A03B3B3B0808080000000000000000000000
        000000000000000000000C0C0C484848AEAEAEE9E9E96F6F6F04040400000000
        00000000000404046E6E6EF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD3D3D35050500505050000000000000000000505051212121D1D
        1D1010100404040000000000000000000C0C0C33333307070700000000000000
        00000404046E6E6EF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC4C4C4303030000000000000030303313131777777B0B0B0CFCFCFDFDF
        DFCBCBCBAAAAAA70707029292902020200000000000000000000000000000004
        04046E6E6EF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF2D2D2D0000000000001A1A1A8A8A8AE7E7E7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE0E0E07878781313130000000000000000000505056F
        6F6FF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
        4747470000000000002C2C2CBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDADADAD1C1C1C000000000000333333E7
        E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090
        0303030000001C1C1CBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADAD1313130000000B0B0BAE
        AEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4333333
        000000040404969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD78787800000000000049
        4949F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989898060606
        0000003C3C3CECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF2929290000000C
        0C0CBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF525252000000
        0000008E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F00000000
        0000868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF262626000000
        0D0D0DC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA03030300
        0000585858FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF070707000000
        1E1E1EDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB10101000
        00003F3F3FF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        202020E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E01E1E1E00
        00003F3F3FF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404000000
        1E1E1EE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF13131300
        00003F3F3FF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212121000000
        101010C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B005050500
        0000535353FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B4B000000
        000000969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77777700000000
        0000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D040404
        000000494949F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E632323200000008
        0808B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD2B2B2B
        000000080808A5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A0202020000003C
        3C3CEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818181
        0000000000002B2B2BD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB1B1B1B0000000505059F
        9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5
        3A3A3A0000000000003C3C3CD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2C2C2C000000000000505050F0
        F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BCBCBC1C1C1C0000000000002A2A2AA5A5A5F4F4F4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEDEDED9696961C1C1C000000000000303030D3D3D3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB1B1B11C1C1C000000000000090909494949979797CACACAE1E1E1E2E2
        E2E0E0E0C5C5C58F8F8F3C3C3C0505050000000000002D2D2DC3C3C3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBCBCBC3939390000000000000000000000001010101F1F1F2020
        201E1E1E0E0E0E000000000000000000030303464646D0D0D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE5E5E58181812A2A2A0303030000000000000000000000
        00000000000000000000050505313131909090EDEDEDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDDDDDD8D8D8D4A4A4A2121210404040000
        00060606252525515151979797E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 3
    end
    object bt_transferir: TBitBtn
      Left = 818
      Top = 15
      Width = 92
      Height = 45
      Caption = '&Transferir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C00000E3B00000E3B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCD5D5D59494945757
        57262626090909000000000000090909262626575757949494D6D6D6FCFCFCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC8C8C86B6B6B1D1D1D0B0B0B2828
        285252526868686868686868686868685050502727270B0B0B1D1D1D6B6B6BC9
        C9C9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE5E5E57575751313131A1A1A686868B6B6B6E8E8
        E8FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE8E8E8B5B5B56767671A1A1A13
        1313797979E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCACACA3C3C3C0C0C0C686868D4D4D4FDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD3D3D366
        66660B0B0B3E3E3ECECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBCBCBC272727262626AEAEAEFAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
        FAFAA8A8A8232323292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCDCDCD2828282E2E2ECDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCACACA2D2D2D2A2A2ACDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E6E6E63F3F3F272727CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFC9C9C9252525404040E6E6E6FFFFFFFFFFFFFFFFFFFDFDFD
        7575750D0D0DABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA8A8A80D0D0D797979FDFDFDFFFFFFFFFFFFC7C7C7
        1515156C6C6CFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFAFAFA676767151515C8C8C8FFFFFFFDFDFD666666
        1B1B1BD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC8C8C82C2C2C6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D21B1B1B6C6C6CFDFDFDD5D5D51E1E1E
        6E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC8C8C82B2B2B2B2B2BC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6767671E1E1ED5D5D58D8D8D0C0C0C
        B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC8C8C82B2B2B2B2B2BC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B50C0C0C949494505050282828
        E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC8C8C82B2B2B2B2B2BC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7272727585858262626515151
        FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8
        C82B2B2B2B2B2BC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5050502626260808086D6D6D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C82C2C
        2C2B2B2BC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6767670808080000008B8B8B
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE2E2E2E2525
        25C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6868680000000000008B8B8B
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC2D2D2D2727
        27CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6868680000000707076D6D6D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C52A2A
        2A2D2D2DCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767070707262626525252
        FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
        C52929292D2D2DCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC525252262626505050292929
        E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC5C5C52929292D2D2DCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E82929295858588E8E8E0C0C0C
        B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC5C5C52929292D2D2DCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B60D0D0D949494D5D5D51E1E1E
        6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC5C5C52929292D2D2DCACACAFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6868681E1E1ED5D5D5FDFDFD666666
        1B1B1BD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC5C5C52A2A2A696969FEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D31B1B1B6C6C6CFDFDFDFFFFFFC6C6C6
        1414146C6C6CFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBFBFB696969151515C7C7C7FFFFFFFFFFFFFDFDFD
        7575750E0E0EAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAEAEAE0E0E0E767676FDFDFDFFFFFFFFFFFFFFFFFF
        E4E4E43C3C3C282828CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFCDCDCD282828404040E5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC9C9C92525252E2E2ECDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCCCCCC2E2E2E2A2A2ACDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9B9B9242424272727AFAFAFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
        FAFAADADAD262626282828BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCACACA3C3C3C0D0D0D6C6C6CD5D5D5FDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD5D5D56B
        6B6B0C0C0C3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE5E5E57575751313131A1A1A6E6E6EB7B7B7E9E9
        E9FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE8E8E8B8B8B86E6E6E1A1A1A14
        1414767676E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC6C6C66666661D1D1D0B0B0B2828
        285252526E6E6E8B8B8B8B8B8B6D6D6D5151512727270B0B0B1D1D1D666666C8
        C8C8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCD5D5D58D8D8D4F4F
        4F2626260909090000000000000909092626264F4F4F8D8D8DD6D6D6FCFCFCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ModalResult = 1
      TabOrder = 4
    end
    object bt_Imprimir: TBitBtn
      Left = 916
      Top = 15
      Width = 92
      Height = 45
      Caption = '&Imprimir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EFB30000EFB300000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCFCFD
        FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD6D6D67474745B5B5B5858585858585858585858585858
        5858585858585858585858585858585858585858585858585858585858585859
        5959676767BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7373730000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000474747F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6969690000002B2B2B6A6A6A6969696969696969696969
        696969696969696969696969696969696969696969696969696969696B6B6B3E
        3E3E000000323232EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96
        96960000002F2F2FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFF3F3F3C5C5C5C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFE5E5E5FFFFFF96
        96960000002F2F2FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFD1D1D11B1B1B0707070808
        080808080808080808080808080808080808080808080707079A9A9AFFFFFF96
        96960000002F2F2FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFD1D1D11B1B1B0707070808
        080808080808080808080808080808080808080808080707079A9A9AFFFFFF96
        96960000002F2F2FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFF4F4F4C9C9C9C4C4C4C4C4
        C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4E7E7E7FFFFFF96
        9696000000303030ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED2D2D2
        9E9E9E9696969797973E3E3E000000696969FFFFFFECECECA2A2A29999999A9A
        9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A999999D5D5D5FFFFFF96
        96960000001C1C1C8B8B8B979797979797BFBFBFF9F9F9FFFFFFD7D7D72B2B2B
        000000000000000000000000000000696969FFFFFFCFCFCF1313130000000000
        00000000000000000000000000000000000000000000000000969696FFFFFF96
        9696000000000000000000000000000000101010B3B3B3FFFFFFB7B7B70B0B0B
        000000000000000000000000000000696969FFFFFFD5D5D52F2F2F1D1D1D1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1D1D1DA3A3A3FFFFFF96
        9696000000000000000000000000000000000000979797FFFFFFB7B7B70B0B0B
        000000000000000000000000000000696969FFFFFFFAFAFAE6E6E6E4E4E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4F4F4F4FFFFFF96
        9696000000000000000000000000000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000003636368585858484848686868686868686
        868686868686868686868686868686868686868686868686868585858686864E
        4E4E000000000000000000000000000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000004949497979791C1C1C000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000121212CBCBCBFFFFFF676767000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000050505808080BEBEBE3B3B3B000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000040404090909000000000000000000979797FFFFFFB7B7B70B0B0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000979797FFFFFFC6C6C6161616
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020202A3A3A3FFFFFFF9F9F99F9F9F
        6868686969696A6A6A2B2B2B0000002B2B2B6A6A6A6969696969696969696969
        696969696969696969696969696969696969696969696969696969696B6B6B3E
        3E3E000000131313616161696969686868888888EBEBEBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96
        9696000000303030ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96
        96960000002F2F2FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF696969000000696969FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96
        96960000002F2F2FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6969690000002B2B2B6A6A6A6969696969696969696969
        696969696969696969696969696969696969696969696969696969696B6B6B3E
        3E3E000000313131EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7474740000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000454545F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD4D4D47070705B5B5B5858585858585858585858585858
        5858585858585858585858585858585858585858585858585858585858585859
        5959656565B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCFCFD
        FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 5
    end
  end
  object cb_chave_pesquisa: TComboBox
    Left = 8
    Top = 35
    Width = 193
    Height = 21
    TabOrder = 1
    OnChange = cb_chave_pesquisaChange
    Items.Strings = (
      'C'#211'DIGO'
      'NOME'
      'CADASTRO'
      'PERIODO'
      'TODOS')
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 1026
    Height = 485
    Align = alClient
    DataSource = ds_pesq_padrao
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 558
    Width = 1026
    Height = 73
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
  end
  object Q_pesq_padrao: TFDQuery
    ChangeAlertName = ' '
    Connection = DM.conexao
    Left = 912
    Top = 120
  end
  object ds_pesq_padrao: TDataSource
    DataSet = Q_pesq_padrao
    Left = 912
    Top = 184
  end
  object frxDB_padrao: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_pesq_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 912
    Top = 248
  end
  object frxReport1: TfrxReport
    Version = '2022.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44914.724794120360000000
    ReportOptions.LastChange = 44914.724794120360000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 904
    Top = 328
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 904
    Top = 408
  end
end