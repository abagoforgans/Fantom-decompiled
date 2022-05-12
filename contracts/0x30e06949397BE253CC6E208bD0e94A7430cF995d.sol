contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
uint8 stor1; offset 8
address stor1; offset 16
uint256 stor1; offset 8
address stor2;
address stor3;
address stor4;

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function initialized() payable {
    if not address(stor1.field_16):
        return bool(address(stor1.field_16))
    if not stor2:
        return bool(stor2)
    if not stor3:
        return bool(stor3)
    return bool(stor4)
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor1.field_8):
        address(stor1.field_16) = arg1
        stor2 = arg2
        stor3 = arg3
        stor4 = arg4
    else:
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor1.field_8):
            address(stor1.field_16) = arg1
            stor2 = arg2
            stor3 = arg3
            stor4 = arg4
        else:
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
            address(stor1.field_16) = arg1
            stor2 = arg2
            stor3 = arg3
            stor4 = arg4
            uint8(stor1.field_8) = 0
}

function sub_cb5feb0b(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg3.length + arg3 + 36
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + ceil32(arg4.length) + 160 > test266151307() or ceil32(arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg3.length) + 128] = arg4.length
    require calldata.size >= arg4.length + arg4 + 36
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg10 == address(arg10)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0x8514d35800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = 288
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 484] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = ceil32(arg3.length) + 320
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 516 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) > Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 516] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg6
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg7
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg8
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg9
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 420] = address(arg10)
    require ext_code.size(stor2)
    call stor2 with:
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor1.field_16))
    call address(stor1.field_16).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1.field_16))
    call address(stor1.field_16).addProxyRegistry(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args address(stor1.field_16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setSwapHelper(address arg1) with:
         gas gas_remaining wei
        args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setFeeTracker(address arg1) with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).mintGenesisGems(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[4 len 28])
}

function sub_2866519d(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg8 == address(arg8)
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 'Controllable: caller is not a controller'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x8514d35800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = 288
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 452] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 484] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = ceil32(arg1.length) + 320
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 484] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 516 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 516] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388] = arg7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 420] = address(arg8)
    require ext_code.size(stor2)
    call stor2 with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor1.field_16))
    call address(stor1.field_16).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1.field_16))
    call address(stor1.field_16).addProxyRegistry(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args address(stor1.field_16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setSwapHelper(address arg1) with:
         gas gas_remaining wei
        args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).setFeeTracker(address arg1) with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[4 len 28]))
    call address(ext_call.return_data[4 len 28]).mintGenesisGems(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[4 len 28])
}



}
