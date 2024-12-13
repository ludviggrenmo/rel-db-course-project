import { Neo4jGraphQL } from '@neo4j/graphql';
import { neodriver } from './db';

/* 	
		NOTE:
		This is not finished as i did not find this relevant in scope. 
		But for the future, this will be added.
*/

const typeDefs = `
type Classification {
  name: String!
  worksBelongsTo: [Work!]! @relationship(type: "BELONGS_TO", direction: IN)
  worksIsPrimarily: [Work!]! @relationship(type: "IS_PRIMARILY", direction: IN)
}

type Format {
  name: String!
  worksExistsIn: [Work!]! @relationship(type: "EXISTS_IN", direction: IN)
}

type Language {
  name: String!
  worksOriginal: [Work!]!
    @relationship(
      type: "ORIGINAL"
      direction: IN
      properties: "OriginalProperties"
    )
  worksTranslatedIn: [Work!]!
    @relationship(q
      type: "TRANSLATED_IN"
      direction: IN
      properties: "TranslatedInProperties"
    )
}

type OriginalProperties @relationshipProperties {
  title: String!
}

type Series {
  name: String!
  worksPartOf: [Work!]! @relationship(type: "PART_OF", direction: IN)
}

type TranslatedInProperties @relationshipProperties {
  title: String!
}

type Universe {
  name: String!
  worksBelongsTo: [Work!]! @relationship(type: "BELONGS_TO", direction: IN)
}

type Work {
  belongsToClassifications: [Classification!]!
    @relationship(type: "BELONGS_TO", direction: OUT)
  belongsToUniverses: [Universe!]!
    @relationship(type: "BELONGS_TO", direction: OUT)
  existsInFormats: [Format!]! @relationship(type: "EXISTS_IN", direction: OUT)
  isPrimarilyClassifications: [Classification!]!
    @relationship(type: "IS_PRIMARILY", direction: OUT)
  originalLanguages: [Language!]!
    @relationship(
      type: "ORIGINAL"
      direction: OUT
      properties: "OriginalProperties"
    )
  partOfSeries: [Series!]! @relationship(type: "PART_OF", direction: OUT)
  sku: String!
  title: String!
  translatedInLanguages: [Language!]!
    @relationship(
      type: "TRANSLATED_IN"
      direction: OUT
      properties: "TranslatedInProperties"
    )
  
  
}

type Query {
  search(query: String!): [Work!]! @cypher(statement: """
    CALL db.index.fulltext.queryNodes('bookTextIndex', $query + "~") YIELD node
    RETURN node
  """, columnName: "node")
}
`;

export const neoSchema = new Neo4jGraphQL({
	typeDefs: typeDefs,
	driver: neodriver,
});
