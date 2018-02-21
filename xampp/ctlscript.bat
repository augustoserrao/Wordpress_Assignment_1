@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\ingres\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\mysql\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\postgresql\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\openoffice\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\resin\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\resin\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jboss\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jboss\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jetty\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\lucene\scripts\ctl.bat START)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\third_application\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\subversion\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jetty\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jboss\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\jboss\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\resin\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\resin\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\apache\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\ingres\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\mysql\scripts\ctl.bat STOP)
if exist C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\augus\Desktop\Git\Wordpress_Assignment_1\xampp\postgresql\scripts\ctl.bat STOP)

:end

