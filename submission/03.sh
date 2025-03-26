# Created a SegWit address.
address=$(bitcoin-cli -regtest getnewaddress)

# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 $address

# Return only the Address
echo $address
