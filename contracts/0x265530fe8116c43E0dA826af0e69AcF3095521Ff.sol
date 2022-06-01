contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address oracles;
address sub_f3ad65f4Address;

function owner() payable {
    return owner
}

function oracles(address arg1) payable {
    require calldata.size - 4 >= 32
    return oracles[arg1]
}

function sub_f3ad65f4(?) payable {
    return sub_f3ad65f4Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_f3ad65f4Address = arg1
}

function updateOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not oracles[address(arg1)]:
        revert with 0, 'oracle not set'
    oracles[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if not oracles[address(arg1)]:
        return 0
    require ext_code.size(oracles[address(arg1)])
    staticcall oracles[address(arg1)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracles[address(arg1)])
    staticcall oracles[address(arg1)].decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], uint8(ext_call.return_data[0])
}

function registerOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.0x9d23c4c7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).enabled(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'invalid token'
    if oracles[address(arg1)]:
        revert with 0, 'oracle already set'
    oracles[address(arg1)] = arg2
}



}
