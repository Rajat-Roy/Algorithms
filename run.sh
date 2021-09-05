FILE=build/bin/Algorithms
if [ -f "$FILE" ]; 
then
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:build/lib
    $FILE
else
    bash build.sh
    echo "Build completed"
    echo "______________________________________________"
    echo ""
    echo "Running output now ..."
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:build/lib
    $FILE
fi