contract main {




// =====================  Runtime code  =====================


address owner;
address tombAddress;
address wftmAddress;
address pairAddress;

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function tomb() payable {
    return tombAddress
}

function wftm() payable {
    return wftmAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_545e8857(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'wftm address cannot be 0'
    wftmAddress = arg1
}

function sub_c74b60d0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'tomb address cannot be 0'
    tombAddress = arg1
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'pair address cannot be 0'
    pairAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if tombAddress != arg1:
        revert with 0, 'token needs to be tomb'
    require ext_code.size(tombAddress)
    staticcall tombAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    return Mask(144, 0, ext_call.return_data[0] / ext_call.return_data[0])
}



}
