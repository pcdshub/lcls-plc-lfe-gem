@echo off
echo Starting Typhon...
echo on

"C:/Program Files/Docker/Docker/resources/bin/docker.exe" run ^
        -v "C:\Repos\ads-deploy\tools\:/ads-deploy/tools" ^
        -v "C:\Users\mghaly\Documents\GitHub\lcls-plc-lfe-gem\:/reg/g/pcds/epics/ioc/plc-lfe-gem" ^
	-e DISPLAY=host.docker.internal:0.0 ^
	-i pcdshub/ads-deploy:latest ^
	"cd '/reg/g/pcds/epics/ioc/plc-lfe-gem/iocBoot/ioc-plc-lfe-gem' && pytmc stcmd --template-path /ads-deploy/tools/templates --template typhon_display.py --only-motor """/reg/g/pcds/epics/ioc/plc-lfe-gem/plc-lfe-gem/plc-lfe-gem.tsproj""" > /tmp/display.py && echo 'Running Typhon...' && python /tmp/display.py; sleep 1"
