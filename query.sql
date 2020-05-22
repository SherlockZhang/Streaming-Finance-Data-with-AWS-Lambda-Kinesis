SELECT name, high, ts, hour
from(
  select t.*,SUBSTRING(ts, 12, 2) as hour, ROW_NUMBER() OVER(PARTITION BY name,SUBSTRING(ts, 12, 2) order by high) as row
  FROM "15" t
  where ts between '05/14/2020 09:30:00' AND '05/14/2020 16:00:00'
)x where row=1 order by name,ts
