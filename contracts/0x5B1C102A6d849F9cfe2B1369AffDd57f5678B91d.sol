contract main {




// =====================  Runtime code  =====================


address owner;
address governanceTokenAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address balanceKeeperAddress;

function canLock() payable {
    return bool(uint8(stor2.field_160))
}

function owner() payable {
    return owner
}

function governanceToken() payable {
    return governanceTokenAddress
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    emit SetCanLock(owner, arg1);
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(governanceTokenAddress)
    staticcall governanceTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(governanceTokenAddress)
    call governanceTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Migrate(ext_call.return_data[0], arg1);
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor2.field_160):
        revert with 0, 'LG1'
    mem[152] = 64
    mem[216] = 3
    mem[248] = 0x45564d0000000000000000000000000000000000000000000000000000000000
    mem[184] = 128
    mem[280] = 20
    mem[312] = msg.sender, 0, 0
    mem[332] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0xf91c1e50 with:
            gas gas_remaining wei
           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, 20, Mask(160, 96, msg.sender, 0, 0) >> 96, 0
    mem[148] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.0xd41ebce1 with:
             gas gas_remaining wei
            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, 20, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 300] = 3
        mem[ceil32(return_data.size) + 332] = 0x45564d0000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 364] = 0
        mem[ceil32(return_data.size) + 396 len 0] = None
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.0x7ec8269e with:
             gas gas_remaining wei
            args 96, 160, arg1, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, 0
    else:
        mem[ceil32(return_data.size) + 180] = msg.sender, ext_call.return_data[0 len 12]
        mem[ceil32(return_data.size) + 200] = 0x7ec8269e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 204] = 96
        mem[ceil32(return_data.size) + 300] = 3
        mem[ceil32(return_data.size) + 332] = 0x45564d0000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 236] = 160
        mem[ceil32(return_data.size) + 364] = mem[ceil32(return_data.size) + 148]
        mem[ceil32(return_data.size) + 396 len ceil32(mem[ceil32(return_data.size) + 148])] = mem[ceil32(return_data.size) + 180 len ceil32(mem[ceil32(return_data.size) + 148])]
        if ceil32(mem[ceil32(return_data.size) + 148]) > mem[ceil32(return_data.size) + 148]:
            mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 148] + 396] = 0
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.0x7ec8269e with:
             gas gas_remaining wei
            args 96, 160, arg1, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 148], mem[ceil32(return_data.size) + 396 len ceil32(mem[ceil32(return_data.size) + 148])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 204] = msg.sender
    mem[ceil32(return_data.size) + 236] = this.address
    mem[ceil32(return_data.size) + 268] = arg1
    require ext_code.size(governanceTokenAddress)
    call governanceTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[ceil32(return_data.size) + 200] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 200] = arg1
    emit LockGTON(mem[(2 * ceil32(return_data.size)) + 200 len ceil32(return_data.size) + 32], governanceTokenAddress, msg.sender, msg.sender);
}



}
