CREATE OR REPLACE FUNCTION HTMLUNESCAPE
(
  INCOMING IN VARCHAR2  
) RETURN VARCHAR2 AS 
BEGIN
  RETURN
    REPLACE(  
        REPLACE(  
          REPLACE(  
            REPLACE(  
              REPLACE(  
                REPLACE(  
                  REPLACE(  
                    REPLACE(
                      REPLACE(INCOMING, '&#0250;', '�')
                    ,'&#0226;', '�')
                  ,'&#0234;', '�')
                ,'&#0251;', '�')
              ,'&#0244;', '�')
            ,'&#0233;', '�')
          ,'&#0235;', '�')    
        ,'&#0224;', '�')        
      ,'&#0239;', '�');
END HTMLUNESCAPE;