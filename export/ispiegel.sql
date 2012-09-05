-------------------------------------------
-- i-spiegel
-------------------------------------------
CREATE OR REPLACE FORCE VIEW ISPIEGEL_BAG_ADRES
AS
  SELECT "ADRESTYPE",
    "RUIMTENAAM",
    "RUIMTENAAM_BOCO",
    --DBMS_XMLGEN.CONVERT(RUIMTENAAM_BOCO, 1), -- "1" means "UNESCAPE",
    "HUISNR",
    "HUISLT",
    "TOEVOEGING",
    "POSTC_N"
    || "POSTC_A" AS postcode,
    "ADRESID",
    "OBJECTID",
    "WOONPLAATSNAAM"
  FROM bag_huidige_adres
  
CREATE OR REPLACE FORCE VIEW ISPIEGEL_GBA_ADRES
AS
  SELECT "NOPR",
    "RHS",
    "NHSR_LT",
    "KHSR_TV",
    "KPST_NUM"
    || "KPST_ALF" AS postcode,
    "NID_NAD",
    "NID_VBO"
  FROM GBA_HUIDIGE_ADRES;
  
CREATE OR REPLACE FORCE VIEW ISPIEGEL_WOZ_ADRES
AS
  SELECT 
    "POSTKODE",
    "HUISNR",
    "HUISLT",
    "HUISTV",
    "HUISAD",
    "STRAAT",
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
              REPLACE(
                REPLACE(
                  REPLACE(
                    STRAAT,
                    '�',
                    'a'
                  ),
                  '�',
                  'a'
                ),
                '�',
                'e'
              ),
              '�',
              'e'
            ),
            '�',
            'e'
          ),
          '�',
          'o'
        ),
        '�',
        'u'
      ),
      '�',
      'u'
    )
    AS STRAAT_SIMPEL,
    "WOONPLAATS",
    "LANDNAAM",
    "IDENT_PBT",
    "IDENT_WPL",
    "IDENT_TGO",
    "IDENT_NA",
    "IDENT_OBR"
  FROM WOZ_HUIDIGE_ADRES