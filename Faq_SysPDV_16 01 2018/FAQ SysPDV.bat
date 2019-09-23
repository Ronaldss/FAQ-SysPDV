@echo off
	title FAC - SysPDV 2.01
	:retorno :: (retornando)(Erro SSL)
	::color 1f
	@echo off
	mode 50,10
	color 3f
	cls
	ECHO ==================================================
	ECHO               FAC - SysPDV 2.01 
	ECHO ==================================================
	ECHO.
	ECHO.
	ECHO.
	SET /P "entrada=Buscar >: "
	ECHO.
	ECHO.
	ECHO ==================================================
		if "%entrada%" equ "exit" exit
		if "%entrada%" equ "EXIT" exit
		(if "%entrada%" equ "look" goto look) & (if "%entrada%" equ "LOOK" goto look)
		if "%entrada%" neq "look" (goto codigo)	
				:look
					color 1F
					mode 60,30
 					dir *.txt /B & pause > nul
 				goto retorno

 	:codigo :: Inicio de tratamento condicional.
	ren erroSSL.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

			if %errorlevel% equ 0 (goto 1) else (goto localizador2)
			echo %errorlevel% & pause >nul
				:1
					cls
					color 0a
					mode 100,15
						type "%entrada%".txt 
						ren "%entrada%".txt erroSSL.txt
					pause >nul
					goto retorno 
				
	:localizador2 ::(Erro de GT)
	ren "%entrada%".txt erroSSL.txt
	ren errodeGT1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul
			if %errorlevel% equ 0 (goto 2) else (goto localizador3)
				:2
					color 0a
					mode 50,10
					cls
						type "%entrada%".txt 
					echo.
					ren "%entrada%".txt errodeGT1.txt
					pause >nul
					goto retorno

	:localizador3 ::(Comandos)
	ren "%entrada%".txt errodeGT1.txt
	ren comandosBat1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul
			if %errorlevel%==0 (goto 3) else (goto localizador4)
					:3
						color 0a
						cls
						mode 79,20
						echo.
							more "%entrada%".txt 
						echo.
						echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
						echo                            Pesquisa finalizada! & ren "%entrada%".txt comandosBat1.txt
						pause >nul
						goto retorno	

	:localizador4 :: (TEFCNC)
	ren "%entrada%".txt comandosBat1.txt
	ren erro_TEFCNC.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul
			if %errorlevel% equ 0 (goto 4) else (goto localizador5)
					:4
						color 0a
						mode 100,15
						cls
						echo.
							type "%entrada%".txt 
						echo.
						ren "%entrada%".txt erro_TEFCNC.txt
						pause >nul
						goto retorno

	:localizador5 :: (Como usar banco de cliente)
	ren "%entrada%".txt erro_TEFCNC.txt
	ren "usar banco de cliente1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul
			if %errorlevel% equ 0 (goto 5) else (goto localizador6)

				:5
					color 0a
					mode 70,10
					cls
						type "%entrada%".txt
					ren "%entrada%".txt "usar banco de cliente1".txt
					pause >nul & goto retorno
	
	:localizador6 :: (Configuração de administradoras)
	ren "%entrada%".txt "usar banco de cliente1".txt
	ren Administradoras1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 6) else (goto localizador7)
					
					:6
						color 0a
						mode 90,30
						cls
							type "%entrada%".txt |more
						ren "%entrada%".txt Administradoras1.txt
						pause >nul & goto retorno

	:localizador7 :: (Alteração rápida nas informações cadastrais PRODUTOS)
	ren "%entrada%".txt Administradoras1.txt
	ren "alteracao rapida produtos".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 7) else (goto localizador8)
					
					:7
						color 0a
						mode 90,15
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "alteracao rapida produtos".txt
						pause >nul & goto retorno


    :localizador8 :: (Atalhos do caixa)
	ren "%entrada%".txt "alteracao rapida produtos".txt
	ren "atalhos caixa".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 8) else (goto localizador9)
					
					:8
						color 0a
						mode 65,25
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "atalhos caixa".txt
						pause >nul & goto retorno

	:localizador9 :: (Cadastro de CFOP)
	ren "%entrada%".txt "atalhos caixa".txt
	ren "Cadastro de CFOP1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 9) else (goto localizador10)
					
					:9
						color 0a
						mode 200,80
						cls
							more "%entrada%".txt
						ren "%entrada%".txt "Cadastro de CFOP1".txt
						pause >nul & goto retorno

	:localizador10 :: (Alterar Preço de produto --  permissão)
	ren "%entrada%".txt "Cadastro de CFOP1".txt
	ren "Alterar preco permitir".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 10) else (goto localizador11)
					
					:10
						color 0a
						mode 60,10
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "Alterar preco permitir".txt
						pause >nul & goto retorno

	:localizador11 :: (Configurações iniciais no SysPDV)
	ren "%entrada%".txt "Alterar preco permitir".txt
	ren "Configuracoes no SysPDV Server".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 11) else (goto localizador12)
					
					:11
						color 0a
						mode 65,15
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "Configuracoes no SysPDV Server".txt
						pause >nul & goto retorno

	:localizador12 :: (Conta corrente)
	ren "%entrada%".txt "Configuracoes no SysPDV Server".txt
	ren "conta corrente1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 12) else (goto localizador13)
					
					:12
						color 0a
						mode 59,10
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "conta corrente1".txt
						pause >nul & goto retorno							

	:localizador13 :: (Fechamento de CAIXA com/sem redução Z)
	ren "%entrada%".txt "conta corrente1".txt
	ren "reducao z1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 13) else (goto localizador14)
					
					:13
						color 0a
						mode 60,8
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "reducao z1".txt
						pause >nul & goto retorno		

	:localizador14 :: (Finalizadoras)
	ren "%entrada%".txt "reducao z1".txt
	ren "finalizadoras1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 14) else (goto localizador15)
					
					:14
						color 0a
						mode 75,26
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "finalizadoras1".txt
						pause >nul & goto retorno

	:localizador15 :: (Salvar Cupom e continuar depois)
	ren "%entrada%".txt "finalizadoras1".txt
	ren "Salvar CUPOM e continuar depois".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 15) else (goto localizador16)
					
					:15
						color 0a
						mode 81,10
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "Salvar CUPOM e continuar depois".txt
						pause >nul & goto retorno

	:localizador16 :: (Senha revenda)
	ren "%entrada%".txt "Salvar CUPOM e continuar depois".txt
	ren "senha revenda1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 16) else (goto localizador17)
					
					:16
						color 0a
						mode 8,3
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "senha revenda1".txt
						pause >nul & goto retorno

	:localizador17 :: (Cadastro de Series)
	ren "%entrada%".txt "senha revenda1".txt
	ren "serie cadastro serie".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 17) else (goto localizador18)
					
					:17
						color 0a
						mode 90,15
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "serie cadastro serie".txt
						pause >nul & goto retorno	

	:localizador18 :: (sintegra1)
	ren "%entrada%".txt "serie cadastro serie".txt
	ren "sintegra1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 18) else (goto localizador19)
					
					:18
						color 0a
						mode 80,15
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "sintegra1".txt
						pause >nul & goto retorno	

	:localizador19 :: (sped1)
	ren "%entrada%".txt "sintegra1".txt
	ren "sped1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 19) else (goto localizador20)
					
					:19
						color 0a
						mode 96,21
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "sped1".txt
						pause >nul & goto retorno

	:localizador20 :: (Transação presa)
	ren "%entrada%".txt "sped1".txt
	ren "transacao1".txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 20) else (goto localizador21)
					
					:20
						color 0a
						mode 90,10
						cls
							type "%entrada%".txt
						ren "%entrada%".txt "transacao1".txt
						pause >nul & goto retorno						

:localizador21 :: (Senha p ligacao do suporte da Digisat)
::if computek1.txt exit (echo presente) & pause >nuls
	ren "%entrada%".txt transacao1.txt
	ren computek1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

			if %errorlevel% equ 0 (goto 21) else (goto localizador22)

				:21
					color 0a
					mode 50,10
					cls
						more "%entrada%".txt
					ren "%entrada%".txt computek1.txt
					pause >nul & goto retorno
:localizador22 :: (Cupom preso ou pendente)
	ren "%entrada%".txt computek1.txt
	ren cupomPreso1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

			if %errorlevel% equ 0 (goto 22) else (goto localizador23)

				:22
					color 0a
					mode 63,10
					cls
						more "%entrada%".txt
					ren "%entrada%".txt cupomPreso1.txt
					pause >nul & goto retorno

:localizador23 :: (Conjunto de chaves)
	ren "%entrada%".txt cupomPreso1.txt
	ren conjuntosChaves.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

			if %errorlevel% equ 0 (goto 23) else (goto localizador24)

				:23
					color 0a
					mode 45,5
					cls
						more "%entrada%".txt
					ren "%entrada%".txt conjuntosChaves.txt
					pause >nul & goto retorno

:localizador24 :: (Sefaz Rio Grande de Sul -- verificar se está em produção)
	ren "%entrada%".txt conjuntosChaves.txt
	ren sefazRS1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

			if %errorlevel% equ 0 (goto 24) else (goto localizador25)

				:24
					color 0a
					mode 90,10
					cls
						more "%entrada%".txt
					ren "%entrada%".txt sefazRS1.txt
					pause >nul & goto retorno





:localizador25 :: (Erro na reinstalação do SysPDV )
	::ren "%entrada%".txt conjuntosChaves.txt
	ren "%entrada%".txt sefazRS1.txt
	::ren sefazRS1.txt "%entrada%".txt
	ren erro_na_reinstalacao1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

			if %errorlevel% equ 0 (goto 25) else (goto localizador26)

				:25
					color 0a
					mode 90,10
					cls
						more "%entrada%".txt
					ren "%entrada%".txt erro_na_reinstalacao1.txt
					pause >nul & goto retorno




:localizador26 :: (Tributacao SysPDV)
	ren "%entrada%".txt erro_na_reinstalacao1.txt
	ren tributacao1.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 26) else (goto localizador27)
					
					:26
						color 0a
						mode 195,25
						cls
							more "%entrada%".txt
						ren "%entrada%".txt "tributacao1".txt
						pause >nul & goto retorno	



:localizador27 :: (Erro 613 NFe)
	ren "%entrada%".txt tributacao1.txt
	ren erro613.txt "%entrada%".txt
		find /i "%entrada%" "%entrada%".txt >nul

				if %errorlevel% equ 0 (goto 27) else (goto nloc)
					
					:27
						color 0a
						mode 100,13
						cls
							more "%entrada%".txt
						ren "%entrada%".txt "erro613".txt
						pause >nul & goto retorno




				
				:nloc
				cls
				color 0e
				mode 50,13
				ECHO ==================================================
				ECHO               FAC - SysPDV 2.01
				ECHO ==================================================
				echo.
				echo Palavra chave: "%entrada%".
				echo.
				echo Nao localizada. Tente de uma forma diferente! & ren "%entrada%".txt "tributacao1".txt
				echo.
				ECHO ================================================== & pause >nul
				goto retorno

				
			
				

