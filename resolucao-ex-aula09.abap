*&---------------------------------------------------------------------*
*& Report ZEXERCICIO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zexercicio.

CLASS lcl_elemento_de_dados DEFINITION.
  PUBLIC SECTION.

    DATA:
      texto_curto   TYPE c LENGTH 15,
      texto_medio   TYPE c LENGTH 30,
      texto_longo   TYPE c LENGTH 50,
      texto_titulo  TYPE c LENGTH 20,
      descricao     TYPE string,
      nome_elemento TYPE c LENGTH 20,
      tipo_de_dados TYPE string.

    METHODS:
      resgatar_texto,
      definir_texto,
      resgatar_descricao,
      definir_descricao,
      resgatar_tipo_de_dados.
ENDCLASS.



START-OF-SELECTION.

  DATA:
    matnr           TYPE REF TO lcl_elemento_de_dados,
    werks_d         TYPE REF TO lcl_elemento_de_dados,
    belnr_d         TYPE REF TO lcl_elemento_de_dados,
    zdeexercicio_oo TYPE REF TO lcl_elemento_de_dados.

  CREATE OBJECT matnr.
  CREATE OBJECT werks_d.
  CREATE OBJECT belnr_d.
  CREATE OBJECT zdeexercicio_oo.

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
ENDCLASS.