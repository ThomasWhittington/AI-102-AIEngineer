@echo off

rem Set values for your Language Understanding app
set app_id=950275fb-ce94-48a2-80b8-cdda714462c5
set endpoint=https://twhitt-languageunderstanding.cognitiveservices.azure.com/
set key=9ebbd9237777447dbbc7d4805ce0e3ee

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"