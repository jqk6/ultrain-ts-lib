#! /bin/bash
echo 'Deploy and test the token contract '
echo 'Precondition:'
echo '1. Accounts: token, tom, jack, rose are exist'

clultrain="$1/programs/clultrain/clultrain"
echo "using clutrain: ${clultrain}"

# ${clultrain} set contract token ../token/ -p token
# ${clultrain} push action token create '["rose", "100.00 ETA"]' -p token
# ${clultrain} push action token issue '["jack", "20.00 ETA", "issue"]' -p rose
# ${clultrain} push action token transfer '["jack", "tom" "10.00 ETA", "transfer"]' -p jack

# #Get table info
# ${clultrain} get table token ETA stat
# ${clultrain} get table token tom accounts
# ${clultrain} get table token jack accounts
p=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
${clultrain} set contract jack $p/../UIP06/ -p jack
$clultrain push action jack create '["rose", "100000.0000 BENZ"]' -p jack
$clultrain push action jack issue '["rose", "9000.0000 BENZ", "xxoo"]' -p rose
$clultrain push action jack freeze '["tony", "100.0000 BENZ", 1540263045, "a freeze test"]' -p rose
$clultrain push action jack retrieval '["rose", "100.0000 BENZ"]' -p tony

$clultrain push action jack freeze '["tony", "200.0000 BENZ", 1540283045, "another freeze test"]' -p rose
$clultrain push action jack retrieval '["rose", "200.0000 BENZ"]' -p tony
