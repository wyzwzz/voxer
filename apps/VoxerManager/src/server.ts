import express from "express";
import cors from "cors";
import { createProxyMiddleware } from "http-proxy-middleware";
import routes from "./routes";
import { PUBLIC_PATH, WORKER } from "./config";
import connect from "./models";

async function run(port: number) {
  const app = express();

  const services: string[] = ["/render", "/slice"];
  services.forEach((service) => {
    const serviceProxy = createProxyMiddleware(service, {
      target: `ws://${WORKER}`,
      ws: true,
    });
    app.use(serviceProxy);
  });

  app.use(express.static(PUBLIC_PATH));
  app.use(cors());
  app.use(express.json());
  app.use(routes);

  app.use((req, res) => {
    res.status(404);
    res.end("Not found.");
  });
  try {
    const database = await connect();

    app.set("database", database);
    app.listen(port, () => {
      console.log(`listening on port ${port}`);
    });
  } catch (err) {
    console.error(err.message);
  }
}

export default run;
