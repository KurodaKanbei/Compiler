set -e
cd "$(dirname "$0")"
export CCHK="java -classpath ./lib/antlr-4.7.1-complete.jar:./bin Compiler.Main"
cat > program.txt # save everything in stdin to program.txt
$CCHK
