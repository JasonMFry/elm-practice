import express from "express";
import Page from "./page.js";

const app = express();
const port = 3000;

app.use(express.static("public"));
app.use(express.static("assets"));
app.get("/*", (_, res) => {
  res.send(Page.index);
});
app.listen(port, () =>
  console.log(`Elm-SPA is ready at http://localhost:${port}`)
);

export default app;
