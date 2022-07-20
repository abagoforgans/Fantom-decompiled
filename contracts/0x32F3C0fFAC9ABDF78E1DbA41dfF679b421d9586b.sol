contract main {




// =====================  Runtime code  =====================


const getCurrentTimestamp = block.timestamp

const MAX_BY_MINT = 60

const PRICE = 10


uint256 sub_2dec9d1c;
mapping of uint8 stor1;
mapping of uint8 stor2;
address baseTokenAddress;
address farmingTokenAddress;
address devAddress;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function investor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_2dec9d1c(?) payable {
    return sub_2dec9d1c
}

function dev() payable {
    return devAddress
}

function farmingToken() payable {
    return farmingTokenAddress
}

function baseToken() payable {
    return baseTokenAddress
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function setClaimTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    stor7 = arg1
    stor8 = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposite() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if stor6 > block.timestamp:
        revert with 0, '!start'
    if sub_2dec9d1c <= 0:
        revert with 0, 'sale out'
    if stor1[msg.sender]:
        revert with 0, 'deposited'
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 600 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[msg.sender] = 1
    sub_2dec9d1c--
    emit Deposit()
}

function claim() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not stor8:
        revert with 0, '!init'
    if stor7 > block.number:
        revert with 0, '!start'
    if not stor1[msg.sender]:
        revert with 0, 'not investor'
    if stor2[msg.sender]:
        revert with 0, 'claimed'
    stor2[msg.sender] = 1
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(farmingTokenAddress)
    call farmingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 60 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claim()
}



}
