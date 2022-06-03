contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, uint256 arg2)
#
const _msgSender = msg.sender


address owner;
address adminAddress;
uint256 buyFee;
uint256 sub_70add8b8;
mapping of struct assets;
mapping of uint8 stor5;
uint8 stor6;

function buyFee() payable {
    return buyFee
}

function sub_54ac4a1a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_70add8b8(?) payable {
    return sub_70add8b8
}

function owner() payable {
    return owner
}

function assets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512, bool(assets[arg1].field_768)
}

function adminAddress() payable {
    return adminAddress
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

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
    emit AdminTransferred(adminAddress, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_eaf68837(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_094e67c3(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == bool(arg5)
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sythetic asset with the ID already exists.'
    assets[arg3].field_0 = address(arg1)
    assets[arg3].field_256 = address(arg2)
    assets[arg3].field_512 = arg4
    assets[arg3].field_768 = uint8(bool(arg5))
    stor5[arg3] = 1
}

function sub_3ae66db7(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Synthetic asset with the ID doesn't exist'
    require ext_code.size(assets[arg2].field_0)
    call assets[arg2].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(assets[arg2].field_256)
    call assets[arg2].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(arg1, msg.sender);
}

function sell(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor6) != 1:
        revert with 0, 'TotemSwap: LOCKED'
    stor6 = 0
    if not stor5[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Synthetic asset with the ID doesn't exist'
    mem[100] = this.address
    require ext_code.size(assets[arg2].field_0)
    staticcall assets[arg2].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(assets[arg2].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call assets[arg2].field_0 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(assets[arg2].field_0)
    staticcall assets[arg2].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(assets[arg2].field_256)
    call assets[arg2].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Sell(arg2, arg1, msg.sender);
    stor6 = 1
}



}
