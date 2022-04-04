---
title: "Cubejs 入门"
date: 2022-03-29T14:52:55+08:00
draft: false
---

1. 查询 schema 对应的 SQL  
```
curl -fsSL -G \
--data-urlencode 'query={"measures":["AccessAirlineView.count"],"timeDimensions":[{"dimension":"AccessAirlineView.ts","dateRange":"today"}],"order":{},"filters":[],"dimensions":["AccessAirlineView.risk"],"timezone":"Asia/Shanghai"}' \
'http://172.31.33.213:4000/cubejs-api/v1/sql' \
 | jq .
```

```sql 
 "SELECT\n      JSONExtractString(arrayJoin(result_risk), 'RiskName') `access_airline_view__risk`, count(`access_airline_view`.id) `access_airline_view__count`\n    FROM\n      default.access AS `access_airline_view`  WHERE (`access_airline_view`.ts >= parseDateTimeBestEffort(?) AND `access_airline_view`.ts <= parseDateTimeBestEffort(?)) GROUP BY `access_airline_view__risk` ORDER BY `access_airline_view__count` DESC LIMIT 10000",
      [
        "2022-03-28T16:00:00Z",
        "2022-03-29T15:59:59Z"
      ]
```
