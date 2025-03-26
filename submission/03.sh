# Created a SegWit address.
address=$(bitcoin-cli -regtest getnewaddress SEGWIT_ADDR bech32)

# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 $address
sleep 1

# Return only the Address
echo $address
