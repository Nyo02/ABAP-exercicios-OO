*&---------------------------------------------------------------------*
*& Report ZEXERCICIO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zexercicio.

CLASS lcl_elemento_de_dados DEFINITION.
  PUBLIC SECTION.

    CONSTANTS:
      categoria_dominio     TYPE char1 VALUE 'D',
      categoria_incorporado TYPE  char1 VALUE 'I'.

    DATA:
      texto_curto   TYPE c LENGTH 15,
      texto_medio   TYPE c LENGTH 30,
      texto_longo   TYPE c LENGTH 50,
      texto_titulo  TYPE c LENGTH 20,
      descricao     TYPE string,
      nome_elemento TYPE c LENGTH 20,
      tipo_de_dados TYPE string.

    CLASS-DATA:
      _dicionario_de_dados TYPE TABLE OF REF TO lcl_elemento_de_dados,
      _ultimo_elemento     TYPE REF TO lcl_elemento_de_dados.


    CLASS-METHODS:
      _gerar_elemento_de_dados.


    METHODS:
      resgatar_texto,
      definir_texto,
      resgatar_descricao,
      definir_descricao,
      resgatar_tipo_de_dados,

      constructor IMPORTING iv_nome        TYPE c
                            iv_descricao   TYPE string
                            iv_texto_curto TYPE c
                            iv_texto_medio TYPE c
                            iv_texto_longo TYPE c
                            iv_titulo      TYPE c.

ENDCLASS.



START-OF-SELECTION.

  DATA:
    matnr           TYPE REF TO lcl_elemento_de_dados,
    werks_d         TYPE REF TO lcl_elemento_de_dados,
    belnr_d         TYPE REF TO lcl_elemento_de_dados,
    zdeexercicio_oo TYPE REF TO lcl_elemento_de_dados.

  CREATE OBJECT matnr
    EXPORTING
      iv_nome        = 'Nome 1'
      iv_descricao   = 'Descricao 1'
      iv_texto_curto = 'txt curto 1'
      iv_texto_medio = 'txt medio1'
      iv_texto_longo = 'txt longo1'
      iv_titulo      = 'txt titulo 1'.

  CREATE OBJECT werks_d
    EXPORTING
      iv_nome        = 'Nome 2'
      iv_descricao   = 'Descricao 2'
      iv_texto_curto = 'txt curto 2'
      iv_texto_medio = 'txt medio2'
      iv_texto_longo = 'txt longo2'
      iv_titulo      = 'txt titulo 2'.

  CREATE OBJECT belnr_d
    EXPORTING
      iv_nome        = 'Nome 3'
      iv_descricao   = 'Descricao 3'
      iv_texto_curto = 'txt curto 3'
      iv_texto_medio = 'txt medio3'
      iv_texto_longo = 'txt longo3'
      iv_titulo      = 'txt titulo 2'.

  CREATE OBJECT zdeexercicio_oo
    EXPORTING
      iv_nome        = 'Nome 4'
      iv_descricao   = 'Descricao 4'
      iv_texto_curto = 'txt curto 4'
      iv_texto_medio = 'txt medio4'
      iv_texto_longo = 'txt longo4'
      iv_titulo      = 'txt titulo 4'.

  IF matnr IS BOUND.
    WRITE / 'objeto matnr criado'.
  ELSE.
    WRITE / 'objeto matnr não criado'.
  ENDIF.


  IF werks_d IS BOUND.
    WRITE / 'objeto werks_d criado'.
  ELSE.
    WRITE / 'objeto werks_d não criado'.
  ENDIF.

  IF belnr_d IS BOUND.
    WRITE / 'objeto belnr_d criado'.
  ELSE.
    WRITE / 'objeto belnr_d não criado'.
  ENDIF.

  IF zdeexercicio_oo IS BOUND.
    WRITE / 'objeto zdeexercicio_oo criado'.
  ELSE.
    WRITE / 'objeto zdeexercicio_oo não criado'.
  ENDIF.

CLASS lcl_elemento_de_dados IMPLEMENTATION.

  METHOD constructor.

    nome_elemento = iv_nome.
    texto_titulo = iv_titulo.
    texto_curto = iv_texto_curto.
    texto_medio  = iv_texto_medio.
    texto_longo = iv_texto_longo.
    descricao = iv_descricao.


    WRITE: / 'Nova instancia criada'.
    WRITE: / 'Nome:', nome_elemento.
    WRITE: / 'Texto curto', texto_curto.
    WRITE: / 'Texto medio', texto_medio.
    WRITE: / 'Texto longo', texto_longo.
    WRITE: / 'Texto titulo', texto_titulo.
    WRITE: /.

  ENDMETHOD.

  METHOD resgatar_texto.
  ENDMETHOD.
  METHOD definir_texto.
  ENDMETHOD.
  METHOD resgatar_descricao.
  ENDMETHOD.
  METHOD definir_descricao.
  ENDMETHOD.
  METHOD resgatar_tipo_de_dados.
  ENDMETHOD.
  METHOD _gerar_elemento_de_dados.
  ENDMETHOD.
ENDCLASS.