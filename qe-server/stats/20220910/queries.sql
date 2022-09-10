-- player trend
SELECT sum(c.currentPlayers - 1) as ConnectedPlayers, c.date as time from c
WHERE c.miniProfileId in ('1426333927','1426388016','1425838691','1128505857','1426512674','1426297538')
and c.currentPlayers > 0 -- 0 = server offline
group by c.date

-- servers online
SELECT count(1) as ServersOnline, c.date as time from c
WHERE c.miniProfileId in ('1426333927','1426388016','1425838691','1128505857','1426512674','1426297538')
and c.currentPlayers > 0 -- 0 = server offline
group by c.date

-- popular maps
select sum(c.currentPlayers - 1) as ConnectedPlayers, c.map as Map FROM c
WHERE c.miniProfileId in ('1426333927','1426388016','1425838691','1128505857','1426512674','1426297538')
and c.currentPlayers > 0 -- 0 = server offline
and c.map <> "In Lobby"
group by c.map