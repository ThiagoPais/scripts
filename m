#!/bin/bash

if [ "$1" ]
then
    case $1 in
        c)
            echo compiling
            mvn compile
            ;;
        tc)
            echo compiling test
            mvn test-compile
            ;;
        b|i)
            echo building
            mvn install
            ;;
        cb|ci)
            clear
            echo runnig clean install
            mvn clean install
            ;;
        t)
            echo "Executando testes..."
            mvn test
            ;;
        ct)
            clear
            echo "Executando testes..."
            mvn test
            ;;
        *)
            echo "Comando não encontrado"
            echo "Comandos disponíveis:"
            echo ""
            echo "c - Compilar projeto"
            echo "ct - Compilar testes"
            echo "b,i - Construir e instalar projeto"
            echo "cb,ci - Limpar e instalar projeto"
            ;;
    esac
else
    echo "Comandos disponíveis:"
    echo ""
    echo "c - Compilar projeto"
    echo "ct - Compilar testes"
    echo "b,i - Construir e instalar projeto"
    echo "cb,ci - Limpar e instalar projeto"
fi