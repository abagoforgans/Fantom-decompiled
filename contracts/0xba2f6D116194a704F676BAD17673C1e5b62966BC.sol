contract main {




// =====================  Runtime code  =====================


#
#  - sub_5c6441a6(?)
#
address owner; offset 8
address addressesProvider;
uint256 stor54;
uint256 stor55;
uint256 stor56;
uint256 stor57;

function owner() {
    return owner
}

function addressesProvider() {
    return addressesProvider
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    addressesProvider = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor54 = ext_call.return_data[12 len 20] or Mask(96, 160, stor54)
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7078304e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor55 = ext_call.return_data[12 len 20] or Mask(96, 160, stor55)
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x27fae013 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor56 = ext_call.return_data[12 len 20] or Mask(96, 160, stor56)
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.getFeeProvider() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor57 = ext_call.return_data[12 len 20] or Mask(96, 160, stor57)
}



}
