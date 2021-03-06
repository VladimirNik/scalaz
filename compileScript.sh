rm -rf sourceFromAST
sbt clean
echo "First compilation..."
sbt compile
rm -rf concurrent/ core/ effect/ example/ iteratee/ scalacheck-binding/ typelevel/ xml/
cp -r sourceFromAST/before_namer/concurrent/ .
cp -r sourceFromAST/before_namer/core/ .
cp -r sourceFromAST/before_namer/effect/ .
cp -r sourceFromAST/before_namer/examples/ .
cp -r sourceFromAST/before_namer/iteratee/ .
cp -r sourceFromAST/before_namer/scalacheck-binding/ .
cp -r sourceFromAST/before_namer/typelevel/ .
cp -r sourceFromAST/before_namer/xml/ .
rm -rf sourceFromAST
sbt clean
echo "Generated code compilation..."
sbt compile
echo "Generated code compilation successfully finished!"
