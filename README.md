# Tsung Performance Tool

Tsung is an open-source multi-protocol distributed load testing tool [READ MORE](http://tsung.erlang-projects.org/)

## Performance tests

<img width="1272" alt="screen shot" src="https://user-images.githubusercontent.com/4140597/31773303-3b05ad80-b4da-11e7-9a55-470beeee17ca.png">

#### Tool

Load testing tool: [tsung](http://tsung.erlang-projects.org/)

* config for munity: `docker-images/tsung/perf-test/tsung-munity.xml`
* run test: `docker-compose build down && docker-compose build && docker-compose up`
* view results: [http://localhost:8091/](http://localhost:8091/es/ts_web:status)
