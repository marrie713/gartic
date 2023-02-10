  @echo off
  cls
  :menu
  cls
  color 80

  date /t		
  time /t

echo Computador: %computername%        Usuario: %username%
                   
echo            MENU TAREFAS
echo  ==================================
echo * 1. Exibir a calculadora          * 
echo * 2. Fazer Backup                  *
echo * 3. Abrir Nasa no Chrome         *
echo * 4. Painel de Controle            *
echo * 5. Desligar o computador	   *		 
echo * 6. Sair  			   * 			
echo * 7. abrir bloco notas *
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7

:opcao1
cls
calc
echo ==================================
echo *      Abriu!!!!    *
echo ==================================
pause
goto menu

:opcao2
cls
xcopy /T /C C:\Users\%username%\Documents\*.* C:\Users\%username%\Desktop\teste
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao3
cls
start chrome.exe nasa.gov
echo ==================================
echo *     Abriu Nasa       *
echo ==================================
chkdsk 
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
shutdown -t 120

:opcao6
cls
exit

:opcao7
notepad marrie.txt
echo ==============================================
echo * Abriu bloco de notas *
echo ==============================================
pause
goto menu