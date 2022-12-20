/*CREATE GENERATOR GEN_ID_USUARIO;*/



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_USUARIO FOR USUARIO ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.USER_ID=gen_id(GEN_ID_USUARIO,1);
END^

SET TERM ; ^


INSERT INTO USUARIO(NAME,PASSWORD,TYPE,SIGNIN)
VALUES('EDIVALDO', '147', 'ADM', '02.05.2020');

INSERT INTO USUARIO(NAME,PASSWORD,TYPE,SIGNIN)
VALUES('ROBERTO', '148', 'ADM', '02.05.2020');


SELECT * FROM USUARIO





/* CLIENTE */

CREATE GENERATOR GEN_ID_CLIENTE;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_CLIENTE FOR CLIENTE ACTIVE 

BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.CLIENTE_ID=gen_id(GEN_ID_CLIENTE,1);
END^

SET TERM ; ^




/* EMPRESA*/



CREATE GENERATOR GEN_ID_EMPRESA;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_EMPRESA FOR EMPRESA ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.EMPRESA_ID=gen_id(GEN_ID_EMPRESA,1);
END^

SET TERM ; ^






/*FORNECEDORES*/




CREATE GENERATOR GEN_ID_FORNECEDOR;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORNECEDOR FOR FORNECEDOR ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.FORNECEDOR_ID=gen_id(GEN_ID_FORNECEDOR,1);
END^

SET TERM ; ^




/*PRODUTO*/



CREATE GENERATOR GEN_ID_PRODUTO;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_PRODUTO FOR PRODUTO ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.PRODUTO_ID=gen_id(GEN_ID_PRODUTO,1);
END^

SET TERM ; ^





/* FORMAS DE PGTO*/





CREATE GENERATOR GEN_ID_FORMA_PGTO;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORMA_PGTO FOR FORMA_PGTO ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.ID_FORMA_PGTO=gen_id(GEN_ID_FORMA_PGTO,1);
END^

SET TERM ; ^






/*COMPRAS*/


CREATE GENERATOR GEN_ID_COMPRA;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_COMPRA FOR COMPRA ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.COMPRA_ID=gen_id(GEN_ID_COMPRA,1);
END^

SET TERM ; ^





/* VENDAS*/




CREATE GENERATOR GEN_ID_VENDA;



SET TERM ^ ;

CREATE TRIGGER INSERE_ID_VENDA FOR VENDAS ACTIVE 



BEFORE INSERT POSITION 0 
AS 
BEGIN 

    NEW.VENDA_ID=gen_id(GEN_ID_VENDA,1);
END^

SET TERM ; ^

