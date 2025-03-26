# Created a SegWit address.
address=$(bitcoin-cli -regtest getnewaddress SEGWIT_ADDR bech32)

# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 $address > /dev/null

# Return only the Address
echo "$address"
