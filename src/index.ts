import fastify from "fastify";
import mercurius from "mercurius";
import { neoSchema } from "./neo4j";

const app = fastify({ logger: true });

async function main() {
  try {
    const schema = await neoSchema.getExecutableSchema();

    app.register(mercurius, {
      schema: schema,
      graphiql: true,
    });

    // https://fastify.dev/docs/latest/Guides/Getting-Started/#note
    app.listen({ port: 3000, host: "0.0.0.0" });
  } catch (error) {
    console.error(error);
  }
}

main();
