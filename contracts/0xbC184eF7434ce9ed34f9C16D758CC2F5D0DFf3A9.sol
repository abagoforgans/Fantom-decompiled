contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_ddf983c6;
uint256 sub_99ade304;
uint256 sub_138d7080;
address address1;
address address2;

function sub_138d7080(?) payable {
    return sub_138d7080
}

function sub_315678e9(?) payable {
    return sub_ddf983c6
}

function address1() payable {
    return address1
}

function owner() payable {
    return owner
}

function sub_99ade304(?) payable {
    return sub_99ade304
}

function address2() payable {
    return address2
}

function sub_ddf983c6(?) payable {
    return sub_ddf983c6
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

function sub_01b71020(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_138d7080 = arg1
}

function sub_91444e21(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_99ade304 = arg1
}

function setAddress2(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address2 = arg1
}

function setAddress1(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address1 = arg1
}

function setGasMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ddf983c6 = arg1
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



}
