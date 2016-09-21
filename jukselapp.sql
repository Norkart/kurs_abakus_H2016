SELECT o.* FROM 
omsetninger o JOIN radonaktsomhet_20160918 r 
ON st_intersects(o.the_geom,r.the_geom) 
WHERE r.aktsomhet

 

SELECT *, 
st_distance(
  st_transform(the_geom,32633),
  st_transform(ST_SetSRID(ST_MakePoint(10.403451919555664, 63.41235019463285),4326),32633)
  ) avstand_meter
  from omsetningsdata order by the_geom <-> ST_SetSRID(ST_MakePoint(10.403451919555664, 63.41235019463285),4326) limit 100

