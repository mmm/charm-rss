

    export APP_ENV=dev && java -cp rss-middletier.jar com.netflix.recipes.rss.server.MiddleTierServer

the log mentions something about URL-based properties...  try file:///opt/rss/rss-middletier.properties

also try something like `-Xoptionsfile=<file>`

---

TODO:
- rewrite this charm in groovy once the `preinstall_deps` metadata key lands in juju core
- copy cassandra upstart script for rss?

---
