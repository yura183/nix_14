
@echo compile program
call javac -sourcepath ./src -d build/classes -cp "./libs/commons-lang3-3.12.0.jar;./libs/commons-text-1.9.jar" src/ua/com/alevel/test/ApStr.java src/ua/com/alevel/test/ApText.java src/ua/com/alevel/Main.java

@echo create jar
call jar cfm build/jar/main.jar MANIFEST.MF -C build/classes/ .
call copy .\libs\commons-lang3-3.12.0.jar .\build\jar
call copy .\libs\commons-text-1.9.jar .\build\jar
sleep 1s;
@echo run jar
java -jar .\build\jar\main.jar

echo end
