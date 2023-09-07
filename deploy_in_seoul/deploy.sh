WALLETADDRESS="aleo18t6eajgc5yt2kdn6pryz2a9a3gwp95w0dyu9a7ck4d3tsfvznq9sx288j5"
PRIVATEKEY="APrivateKey1zkp4YndTETeoNowEEJf9aus6fGbMvC3VX3GdYdQBxRjJRah"

APPNAME="deploy_in_seoul"
PATHTOAPP=$(realpath -q $APPNAME)

RECORD="{
  owner: aleo18t6eajgc5yt2kdn6pryz2a9a3gwp95w0dyu9a7ck4d3tsfvznq9sx288j5.private,
  microcredits: 50000000u64.private,
  _nonce: 1826865821350653779529222682909323752571186329505810253950487294422844406850group.public
}"

cd .. && snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 1000000 --record "${RECORD}"``
