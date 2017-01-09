@echo off
doskey ls=dir $*
set jarname=TGuardSDKLib_1.0.30_RELEASE.jar
set MYHOME=C:\Users\jw362j\a\work\code\att\a\attgit\attsdk\TGuardSDKAndroidRoot


if  "%1" == "" goto mymake
if  %1 == clean goto myclean
if  %1 == run goto myrun



rem clean the project and take the build preparation
:myclean
echo myclean
mvn clean
goto end

rem make and build the jar for sdk lib project
:mymake
echo mymake
mvn compile package
goto end


:myrun
echo myrun
mvn jetty:run
goto end

rem end of the build script
:end
<<<<<<< HEAD
echo script finished....
=======
echo script finished....
>>>>>>> 562cb7f0ffcdaf84df810cd3b80fb8aae5fe52ca
