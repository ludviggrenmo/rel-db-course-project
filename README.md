# rel-db-course-project

A course project for `RealDB-HT24`  
See below how to set up a dockerized Neo4j database.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Node.js](https://nodejs.org/en/)
- [Neo4j](https://neo4j.com/)

## Getting Started (dev)

- Create `local.env` and add boilerplate variables from `example.env`

1. Run `docker-compose up` to start the Neo4j database.
2. Run `npm install` to install the dependencies.
3. Open `http://localhost:7474/browser/` in your browser to access the Neo4j browser interface. Credentials in local.env`
4. Copy and paste the contents from `seed` files in cypher dir into the Neo4j browser interface to seed the database.

## Example queries

1. Full text search:

`CALL db.index.fulltext.queryNodes('bookTextIndex', "QUERY" + "~") YIELD node
RETURN node.title AS Title, node.sku AS SKU`

2. Recommendations based on genre

`MATCH (b:Book)-[:IN_GENRE]->(g:Genre {name: "Drama"})
RETURN b.title AS Title, b.sku AS SKU`

3. Recommendations based on similar rating

`MATCH (chosenBook:Book {title: "1984"})
MATCH (b:Book)
WHERE b.rating >= chosenBook.rating - 0.5 AND b.rating <= chosenBook.rating + 0.5
RETURN b.title AS Title, b.rating AS Rating`

4. Using shortestPath() native function to get the closest recommendation

`MATCH p = shortestPath((agatha:Person {name: "Agatha Christie"})-[*]-(mobyDick:Book {title: "Moby Dick"}))
RETURN p`

5. Return a Toplist

`MATCH (b:Book)
WHERE b.rating > 8
return b.title AS Title, b.rating as Rating
ORDER BY b.rating DESC
`

## TODO

1. GraphQL resolvers (improve) to build an easier web api
2. Improve Book data to get more granular recommendations
3. Deploy live version
4. Add tests, util testing and e2e user testing (frontend)
