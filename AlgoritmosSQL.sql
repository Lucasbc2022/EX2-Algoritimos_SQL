--a) Fazer um algoritmo que leia 1 número e mostre se são múltiplos de 2,3,5 ou nenhum deles
DECLARE @num  INT,
        @cont INT,
		@test_mult2  INT,
		@test_mult3  INT,
		@test_mult5  INT,
        @num2 INT,
        @num3 INT,
        @num5 INT,
		@resul INT
SET @cont = 0
SET @num = 10
SET @num2 = 0
SET @num3 = 0
SET @num5 = 0
SET @test_mult2 = 0
SET @test_mult3 = 0
SET @test_mult5 = 0
SET @resul = 0

WHILE(@resul != @num)
BEGIN

     SET @cont += 1
	 SET @num2 = 2 * @cont
     SET @test_mult2 = @num2


     IF(@test_mult2 != @num)
	 BEGIN 
	 SET @num3 = 3 * @cont
     SET @test_mult3 = @num3 
  
	 END
	 
	 IF(@test_mult3 != @num)
	 BEGIN 
	 SET @num5 = 5 * @cont
     SET @test_mult5 = @num5
	 END


	 IF(@test_mult2 = @num) 
	 BEGIN
	 SET @resul = @test_mult2
	 END

	 	 IF(@test_mult3 = @num) 
	     BEGIN
	     SET @resul = @test_mult3
	     END
		 	 IF(@test_mult5 = @num) 
	         BEGIN
	         SET @resul = @test_mult5
	         END
	 IF(@test_mult5 != @num)
	 BEGIN
     SET @resul = @num
     END

END 

IF(@test_mult2 = @num)
BEGIN 
PRINT(CAST(@num AS VARCHAR(10)) + ' é um multiplo de 2')
END
     IF(@test_mult3 = @num)
     BEGIN
     PRINT(CAST(@num AS VARCHAR(10)) + ' é um multiplo de 3')
     END
              IF(@test_mult5 = @num)
              BEGIN
              PRINT(CAST(@num AS VARCHAR(10)) + ' é um multiplo de 5')
              END
			     ELSE
				 BEGIN
				 PRINT(CAST(@num AS VARCHAR(10))+ ' não é um multiplo nem de 2, 3 ou 5')
                 END

--b) Fazer um algoritmo que leia 3 números e mostre o maior e o menor

DECLARE @v1   INT,
        @v2   INT,
		@v3   INT,
		@maior   INT,
		@menor   INT
SET @v1 = 1000
SET @v2 = 20
SET @v3 = 3000
IF(@v1 > @v2 AND @v1 > @v3 AND @v2 > @v3)
   BEGIN
   SET @maior = @v1
   SET @menor = @v3
   END
   IF(@v3 > @v1 AND @v3 > @v2 AND @v2 > @v1)
      BEGIN
      SET @maior = @v3
      SET @menor = @v1
      END
	  IF(@v2 > @v1 AND @v2 > @v3 AND @v3 > @v1 )
	     BEGIN
	     SET @maior = @v2
	     SET @menor = @v1
		 END
		 IF(@v1 > @v3 AND @v1 > @v2 AND @v3 > @v2)
		    BEGIN
		    SET @maior = @v1
	        SET @menor = @v2
			END
			IF(@v3 > @v1 AND @v3 > @v2 AND @v1 > @v2 )
			   BEGIN
			   SET @maior = @v3
	           SET @menor = @v2
			   END
			   IF(@v2 > @v1 AND @v2 > @v3 AND @v1 > @v3)
			   BEGIN
			   SET @maior = @v2
	           SET @menor = @v3
			   END
	  PRINT(CAST(@maior AS VARCHAR(10)) +' '+ CAST(@menor AS VARCHAR(10)))

	  
--c)Fazer um algoritmo que calcule os 15 primeiros termos da série
--1,1,2,3,5,8,13,21,... E calcule a soma dos 15 termos

CREATE FUNCTION Fibonacci_Iterative (@n INT)
RETURNS INT
AS
BEGIN
DECLARE @i INT = 3


DECLARE @fn1 INT = 1 
DECLARE @fn2 INT = 1 

WHILE @i <= @n
BEGIN
     DECLARE @fn2Aux INT = @fn1
	 SET @fn1 = @fn2 + @fn1
	 SET @fn2 = @fn2Aux

	 SET @i = @I + 1
END

RETURN @fn1
END

GO

DECLARE @cal   INT,
        @soma  INT

SET @cal = 0
SET @soma = 0
WHILE (@cal < 15)
BEGIN
SET @cal = @cal + 1
SET @soma = @soma + dbo.Fibonacci_Iterative(@cal)

END
PRINT @soma



--d)Fazer um algoritmo que separa uma frase, colocando todas as letras em maiúsculo e em minúsculo (Usar funções UPPER e LOWER)
DECLARE @frase  VARCHAR(20)

SET @frase = 'PATOS'

IF (UPPER(@frase) = @frase)
BEGIN
PRINT(UPPER(@frase))
END
   IF (LOWER(@frase) = @frase)
   BEGIN
   PRINT(LOWER(@frase))
   END

   


--e)Fazer um algoritmo que inverta uma palavra (Usar a função SUBSTRING)
DECLARE @palavra   VARCHAR(20)

SET @palavra = 'possibilidade'

IF LEN(@palavra) = 2
BEGIN
PRINT(   
  SUBSTRING(@palavra, 2, 1)
+ SUBSTRING(@palavra, 1, 1))
END


     IF LEN(@palavra) = 3
     BEGIN
     PRINT(   
	  SUBSTRING(@palavra, 3, 1)
    + SUBSTRING(@palavra, 2, 1)
	+ SUBSTRING(@palavra, 1, 1))
	 END

       IF LEN(@palavra) = 4
       BEGIN
        PRINT(   
          SUBSTRING(@palavra, 4, 1)
	    + SUBSTRING(@palavra, 3, 1)
	    + SUBSTRING(@palavra, 2, 1)
	    + SUBSTRING(@palavra, 1, 1))
	   END


       IF LEN(@palavra) = 5
       BEGIN
        PRINT(  
	      SUBSTRING(@palavra, 5, 1) 
        + SUBSTRING(@palavra, 4, 1)
	    + SUBSTRING(@palavra, 3, 1)
	    + SUBSTRING(@palavra, 2, 1)
	    + SUBSTRING(@palavra, 1, 1))
	   END
	      
		         IF LEN(@palavra) = 6
                 BEGIN
                 PRINT(
				   SUBSTRING(@palavra, 6, 1)  
	             + SUBSTRING(@palavra, 5, 1) 
                 + SUBSTRING(@palavra, 4, 1)
	             + SUBSTRING(@palavra, 3, 1)
	             + SUBSTRING(@palavra, 2, 1)
	             + SUBSTRING(@palavra, 1, 1))
	             END

				          		         IF LEN(@palavra) = 7
                                         BEGIN
                                         PRINT(
										    SUBSTRING(@palavra, 7, 1)
				                          + SUBSTRING(@palavra, 6, 1)  
	                                      + SUBSTRING(@palavra, 5, 1) 
                                          + SUBSTRING(@palavra, 4, 1)
	                                      + SUBSTRING(@palavra, 3, 1)
	                                      + SUBSTRING(@palavra, 2, 1)
	                                      + SUBSTRING(@palavra, 1, 1))
	                                      END
IF LEN(@palavra) = 8
BEGIN
PRINT(
   SUBSTRING(@palavra, 8, 1)
 + SUBSTRING(@palavra, 7, 1)
 + SUBSTRING(@palavra, 6, 1)  
 + SUBSTRING(@palavra, 5, 1) 
 + SUBSTRING(@palavra, 4, 1)
 + SUBSTRING(@palavra, 3, 1)
 + SUBSTRING(@palavra, 2, 1)
 + SUBSTRING(@palavra, 1, 1))
END

        IF LEN(@palavra) = 9
        BEGIN
        PRINT(
		  SUBSTRING(@palavra, 9, 1)
        + SUBSTRING(@palavra, 8, 1)
        + SUBSTRING(@palavra, 7, 1)
        + SUBSTRING(@palavra, 6, 1)  
        + SUBSTRING(@palavra, 5, 1) 
        + SUBSTRING(@palavra, 4, 1)
        + SUBSTRING(@palavra, 3, 1)
        + SUBSTRING(@palavra, 2, 1)
        + SUBSTRING(@palavra, 1, 1))
        END
		             IF LEN(@palavra) = 10
                     BEGIN
                     PRINT(
					   SUBSTRING(@palavra, 10, 1)
		             + SUBSTRING(@palavra, 9, 1)
                     + SUBSTRING(@palavra, 8, 1)
                     + SUBSTRING(@palavra, 7, 1)
                     + SUBSTRING(@palavra, 6, 1)  
                     + SUBSTRING(@palavra, 5, 1) 
                     + SUBSTRING(@palavra, 4, 1)
                     + SUBSTRING(@palavra, 3, 1)
                     + SUBSTRING(@palavra, 2, 1)
                     + SUBSTRING(@palavra, 1, 1))
                     END
					       
						   	IF LEN(@palavra) = 11
                            BEGIN
                            PRINT(
							 SUBSTRING(@palavra, 11, 1)
					       + SUBSTRING(@palavra, 10, 1)
		                   + SUBSTRING(@palavra, 9, 1)
                           + SUBSTRING(@palavra, 8, 1)
                           + SUBSTRING(@palavra, 7, 1)
                           + SUBSTRING(@palavra, 6, 1)  
                           + SUBSTRING(@palavra, 5, 1) 
                           + SUBSTRING(@palavra, 4, 1)
                           + SUBSTRING(@palavra, 3, 1)
                           + SUBSTRING(@palavra, 2, 1)
                           + SUBSTRING(@palavra, 1, 1))
                            END
							      
								   	IF LEN(@palavra) = 12
                                    BEGIN
                                    PRINT(
									  SUBSTRING(@palavra, 12, 1)
							        + SUBSTRING(@palavra, 11, 1)
					                + SUBSTRING(@palavra, 10, 1)
		                            + SUBSTRING(@palavra, 9, 1)
                                    + SUBSTRING(@palavra, 8, 1)
                                    + SUBSTRING(@palavra, 7, 1)
                                    + SUBSTRING(@palavra, 6, 1)  
                                    + SUBSTRING(@palavra, 5, 1) 
                                    + SUBSTRING(@palavra, 4, 1)
                                    + SUBSTRING(@palavra, 3, 1)
                                    + SUBSTRING(@palavra, 2, 1)
                                    + SUBSTRING(@palavra, 1, 1))
                                    END
									      
										  IF LEN(@palavra) = 13
                                          BEGIN
                                          PRINT(
										    SUBSTRING(@palavra, 13, 1)
									      + SUBSTRING(@palavra, 12, 1)
							              + SUBSTRING(@palavra, 11, 1)
					                      + SUBSTRING(@palavra, 10, 1)
		                                  + SUBSTRING(@palavra, 9, 1)
                                          + SUBSTRING(@palavra, 8, 1)
                                          + SUBSTRING(@palavra, 7, 1)
                                          + SUBSTRING(@palavra, 6, 1)  
                                          + SUBSTRING(@palavra, 5, 1) 
                                          + SUBSTRING(@palavra, 4, 1)
                                          + SUBSTRING(@palavra, 3, 1)
                                          + SUBSTRING(@palavra, 2, 1)
                                          + SUBSTRING(@palavra, 1, 1))
                                          END

     IF LEN(@palavra) = 14
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END

	 IF LEN(@palavra) = 15
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 15, 1)
	 + SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END

	 IF LEN(@palavra) = 16
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 16, 1)
     + SUBSTRING(@palavra, 15, 1)
	 + SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END

	 IF LEN(@palavra) = 17
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 17, 1)
	 + SUBSTRING(@palavra, 16, 1)
     + SUBSTRING(@palavra, 15, 1)
	 + SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END

	 IF LEN(@palavra) = 18
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 18, 1)
	 + SUBSTRING(@palavra, 17, 1)
	 + SUBSTRING(@palavra, 16, 1)
     + SUBSTRING(@palavra, 15, 1)
	 + SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END

	 IF LEN(@palavra) = 19
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 19, 1)
	 + SUBSTRING(@palavra, 18, 1)
	 + SUBSTRING(@palavra, 17, 1)
	 + SUBSTRING(@palavra, 16, 1)
     + SUBSTRING(@palavra, 15, 1)
	 + SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END

	 IF LEN(@palavra) = 20
     BEGIN
     PRINT(
	   SUBSTRING(@palavra, 20, 1)
	 + SUBSTRING(@palavra, 19, 1)
	 + SUBSTRING(@palavra, 18, 1)
	 + SUBSTRING(@palavra, 17, 1)
	 + SUBSTRING(@palavra, 16, 1)
     + SUBSTRING(@palavra, 15, 1)
	 + SUBSTRING(@palavra, 14, 1)
     + SUBSTRING(@palavra, 13, 1)
     + SUBSTRING(@palavra, 12, 1)
     + SUBSTRING(@palavra, 11, 1)
     + SUBSTRING(@palavra, 10, 1)
     + SUBSTRING(@palavra, 9, 1)
     + SUBSTRING(@palavra, 8, 1)
     + SUBSTRING(@palavra, 7, 1)
     + SUBSTRING(@palavra, 6, 1)  
     + SUBSTRING(@palavra, 5, 1) 
     + SUBSTRING(@palavra, 4, 1)
     + SUBSTRING(@palavra, 3, 1)
     + SUBSTRING(@palavra, 2, 1)
     + SUBSTRING(@palavra, 1, 1))
     END