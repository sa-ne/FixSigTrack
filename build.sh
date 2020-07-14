#!/bin/sh

rm -rf target
mkdir -p target/{java,c,c++,go}

cd src/java/
javac -d ../../target/java/ TestJava.java
javac -d ../../target/java/ TestJava2.java

cd ../c/
gcc TestC.c -o ../../target/c/TestC
gcc TestC2.c -o ../../target/c/TestC2

cd ../c++/
g++ TestCPP.cpp -o ../../target/c++/TestCPP
g++ TestCPP2.cpp -o ../../target/c++/TestCPP2

cd ../go/
go build -o ../../target/go/ TestGo.go
go build -o ../../target/go/ TestGo2.go

