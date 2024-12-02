rm gateway.fgp

echo "Pack Main subgraph"
dotnet fusion subgraph pack -w .\MainSubgraph\

echo "Pack Second subgraph"
dotnet fusion subgraph pack -w .\SecondSubgraph\

echo "Compose Main subgraph"
dotnet fusion compose -p gateway -s ".\MainSubgraph\"

echo "Compose Second subgraph"
dotnet fusion compose -p gateway -s ".\SecondSubgraph\"
