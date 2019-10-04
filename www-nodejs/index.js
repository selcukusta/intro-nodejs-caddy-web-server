var express = require("express");
let Parser = require("rss-parser");
let parser = new Parser();

var app = express();
app.set("view engine", "pug");

app.get("/", function(req, res, next) {
  (async () => {
    let feed = await parser.parseURL(
      "https://www.rasyotik.com.tr/kategori/sirkuler/feed/"
    );
    res.render("index", { data: feed.items });
  })();
});

var server = app.listen(process.env.PORT || 8082);
