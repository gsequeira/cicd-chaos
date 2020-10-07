########################################
# Chaos Experiment #1 - Increase CPU to all nodes for 4 mins (240 seconds) for 80%
#

GREMLIN_TEAM_ID=$1
GREMLIN_API_KEY=$2
CIRCLE_USERNAME=$3


curl -i -X POST 'https://api.gremlin.com/v1/attacks/new?teamId=a03d53c4-a331-5cc9-a94b-1815aba199f5' -H 'Content-Type: application/json;charset=utf-8' -H 'Authorization: Bearer Yy0zODZkNjNhMS1kMGI1LTU2ODYtYTdkZi1hMjA2OTRiYTBlNmI6Y29tbXVuaXR5K2NpcmNsZUBncmVtbGluLmNvbToxYzA5MWZhYS04NTdlLTQzMzEtODkxZi1hYTg1N2UzMzMxOGQ=' -d '{"target":{"containers":{"ids":["d95ae0dce94c87e224cb7748e3175dc0384edaf734017c7d65a9818b42dbaf1e"]},"type":"Exact"},"command":{"type":"latency","commandType":"Latency","args":["-l","300","-h","^api.gremlin.com","-p","^53","-m","600"],"providers":[]}}'