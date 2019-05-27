mkdir build
javac -d "./build" -cp "./lib/*" -sourcepath "./src" ./src/tests/*.java ./src/tests/sockets/*.java
cp -a lib/. build/
cd build
for i in *.jar; do
    echo "adding dependency $i"
    jar xf $i
done
jar cvf microrts.jar *
mv microrts.jar ../microrts.jar
cd ..