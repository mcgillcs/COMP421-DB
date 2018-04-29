//WARNING !! this command will delete everything in your graph database (useful to clean up and start from scratch).
// MATCH(n) DETACH DELETE n;


// Create all the data required for the assignment in one shot !!
CREATE
  (p1:Person {name:'Mike', city:'Montreal'}) ,(p2:Person {name:'Bob', city:'Montreal'})
 ,(p3:Person {name:'Katie'}) ,(p4:Person {name:'Sally', city:'Montreal'})
 ,(p5:Person {name:'John'}) ,(p6:Person {name:'Sue', city:'Ottawa'})
 ,(p7:Person {name:'Kim', city:'Ottawa'}) ,(p8:Person {name:'George', city:'Toronto'})
 ,(p9:Person {name:'Paul'})
 ,(h1:School {name:'Hills H.S.'}) ,(h2:School {name:'Loyola H.S.'})
 ,(h3:School {name:'Gilmore H.S.'})
 ,(b1:Band   {name:'Enigma'}) ,(b2:Band   {name:'Eagles'})
 ,(b3:Band   {name:'Enya'})
 ,(n1:News   {name:'CBC'}) ,(n2:News   {name:'BBC'})
 ,(m1:Movie  {name:'Jurassic Park', year:1993}) ,(m2:Movie  {name:'Men In Black', year:1997})
 ,(m3:Movie  {name:'Matrix', year:1999}) ,(m4:Movie  {name:'The Terminator', year:1984})
 ,(m5:Movie  {name:'Tin Cup', year:1996})
 ,(g1:Genre  {name:'Action'}) ,(g2:Genre  {name:'Sci-Fi'})
 ,(g3:Genre  {name:'Comedy'}) ,(g4:Genre  {name:'New Age'})
 ,(g5:Genre  {name:'Rock'}) ,(g6:Genre  {name:'Drama'})
 ,(p1)-[:FRIEND_OF]->(p2) ,(p2)-[:FRIEND_OF]->(p5)
 ,(p4)-[:FRIEND_OF]->(p5) ,(p4)-[:FRIEND_OF]->(p6)
 ,(p7)-[:FRIEND_OF]->(p6) ,(p7)-[:FRIEND_OF]->(p8)
 ,(p3)-[:FRIEND_OF]->(p9)
 ,(p2)-[:MARRIED_TO]->(p4)
 ,(p2)-[:FOLLOWS]->(p3)
 ,(p1)-[:STUDIED_AT {grad_year:2009}]->(h1) ,(p2)-[:STUDIED_AT {grad_year:2010}]->(h2)
 ,(p6)-[:STUDIED_AT {grad_year:2012}]->(h3) ,(p3)-[:STUDIED_AT {grad_year:2011}]->(h3)
 ,(p4)-[:STUDIED_AT {grad_year:2010}]->(h3) ,(p7)-[:STUDIED_AT {grad_year:2010}]->(h3)
 ,(p1)-[:LIKES]->(b1) ,(p9)-[:LIKES]->(b1)
 ,(p4)-[:LIKES]->(b2) ,(p1)-[:LIKES]->(b2)
 ,(p6)-[:LIKES]->(b2) ,(p8)-[:LIKES]->(b2)
 ,(p6)-[:LIKES]->(b3) ,(p6)-[:LIKES]->(m1)
 ,(p5)-[:LIKES]->(m2) ,(p5)-[:LIKES]->(m3)
 ,(p3)-[:LIKES]->(m3) ,(p3)-[:LIKES]->(m5)
 ,(p9)-[:LIKES]->(m4)
 ,(p1)-[:LIKES]->(n1) ,(p5)-[:LIKES]->(n2)
 ,(m1)-[:BELONGS_TO]->(g2) ,(m3)-[:BELONGS_TO]->(g1)
 ,(m3)-[:BELONGS_TO]->(g2) ,(m2)-[:BELONGS_TO]->(g2)
 ,(m2)-[:BELONGS_TO]->(g3) ,(m4)-[:BELONGS_TO]->(g1)
 ,(m4)-[:BELONGS_TO]->(g2) ,(m5)-[:BELONGS_TO]->(g6)
 ,(b1)-[:BELONGS_TO]->(g4) ,(b2)-[:BELONGS_TO]->(g5)
 ,(b3)-[:BELONGS_TO]->(g4)
;

//See your entire graph (Turn on Auto complete in the display view after running the query)
// MATCH(n) RETURN n;



