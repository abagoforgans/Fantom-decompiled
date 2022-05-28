contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
address owner;
mapping of uint8 stor1;
uint256 sub_b71fcb99;
address wantAddress;
address sub_37094792Address;
address sub_ee5c1fe0Address;
uint256 lastReward;

function want() payable {
    return wantAddress
}

function sub_37094792(?) payable {
    return sub_37094792Address
}

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_b71fcb99(?) payable {
    return sub_b71fcb99
}

function lastReward() payable {
    return lastReward
}

function sub_ee5c1fe0(?) payable {
    return sub_ee5c1fe0Address
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

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfPool() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ca72c284(?) payable {
    require ext_code.size(sub_ee5c1fe0Address)
    staticcall sub_ee5c1fe0Address.0x3fc7aad7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_b71fcb99:
        revert with 0, 'SafeMath: subtraction overflow'
    lastReward = sub_b71fcb99 - ext_call.return_data[0]
}

function harvest() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'You are not whitelisted'
    require ext_code.size(sub_37094792Address)
    staticcall sub_37094792Address.balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b71fcb99 = ext_call.return_data[0]
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
