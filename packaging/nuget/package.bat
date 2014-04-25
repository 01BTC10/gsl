@ECHO OFF
ECHO Started nuget packaging build.
ECHO.
REM: http://www.nuget.org/packages/gslgen
gslgen -q -script:package.gsl package.config
ECHO.
REM: http://nuget.codeplex.com/releases
nuget pack package.nuspec -verbosity detailed
ECHO.
ECHO Completed nuget packaging build. The package is in the following folder:
CD