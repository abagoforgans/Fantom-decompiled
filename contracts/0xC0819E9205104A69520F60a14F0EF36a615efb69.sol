contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint8 stor5; offset 160
uint8 stor5; offset 168
address stor5;

function initialized() payable {
    return bool(uint8(stor5.field_160))
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor2 = arg1
}

function setFeeTracker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor3 = arg1
}

function sub_6c7c402f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor4 = address(arg1)
}

function sub_fb54cc40(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor1 = address(arg1)
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function setSwapHelper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    address(stor5.field_0) = arg1
}

function issueInitialGovernanceTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor5.field_168):
        revert with 0, 'ALREADY_ISSUED'
    require ext_code.size(stor1)
    call stor1.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0, 500000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor5.field_168) = 1
    emit GovernanceTokenIssued(500000, arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor1 = arg1
    stor2 = arg2
    stor3 = arg3
    stor4 = arg4
    address(stor5.field_0) = arg5
    uint8(stor5.field_160) = 1
}

function executeProposal(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(0xd98b1717903b2ff81b08f680372887a8c35174c2)
    delegate 0xd98b1717903b2ff81b08f680372887a8c35174c2.0xdc7ceea4 with:
         gas gas_remaining wei
        args stor3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function createProposalVoteTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(0xaeb86f3860ad5b29ae141c56709835130ecbe0d9)
    delegate 0xaeb86f3860ad5b29ae141c56709835130ecbe0d9.createProposalVoteTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function destroyProposalVoteTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(0xaeb86f3860ad5b29ae141c56709835130ecbe0d9)
    delegate 0xaeb86f3860ad5b29ae141c56709835130ecbe0d9.destroyProposalVoteTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6e3c7c7f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(0xd98b1717903b2ff81b08f680372887a8c35174c2)
    delegate 0xd98b1717903b2ff81b08f680372887a8c35174c2.createChangeFeeProposal(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == delegate.return_data[12 len 20]
    require ext_code.size(stor4)
    call stor4 with:
       funct Mask(32, 224, 'L0v') >> 224
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[4 len 28]), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(delegate.return_data[4 len 28])
}

function sub_e1431945(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    require ext_code.size(0xd98b1717903b2ff81b08f680372887a8c35174c2)
    delegate 0xd98b1717903b2ff81b08f680372887a8c35174c2.createUpdateAllowlistProposal(address arg1, address arg2, bool arg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), bool(arg5)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == delegate.return_data[12 len 20]
    require ext_code.size(stor4)
    call stor4 with:
       funct Mask(32, 224, 'L0v') >> 224
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[4 len 28]), 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(delegate.return_data[4 len 28])
}

function sub_afc93505(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + ceil32(arg4.length) + 160 > test266151307() or ceil32(arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    require calldata.size >= arg4.length + arg4 + 36
    require ext_code.size(0xd98b1717903b2ff81b08f680372887a8c35174c2)
    delegate 0xd98b1717903b2ff81b08f680372887a8c35174c2.0x0 with:
         gas gas_remaining wei
        args address(arg3), Array(len=arg4.length, data=arg4[all]), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == delegate.return_data[12 len 20]
    require ext_code.size(stor4)
    call stor4 with:
       funct Mask(32, 224, 'L0v') >> 224
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[4 len 28]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(delegate.return_data[4 len 28])
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
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1500cfba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = stor2
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
    require ext_code.size(0xaeb86f3860ad5b29ae141c56709835130ecbe0d9)
    delegate 0xaeb86f3860ad5b29ae141c56709835130ecbe0d9.0x0 with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 352]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == delegate.return_data[12 len 20]
    require ext_code.size(stor1)
    call stor1.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.addProxyRegistry(address arg1) with:
         gas gas_remaining wei
        args address(delegate.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).0xd73cd47f with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).0x9277a185 with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).mintGenesisGems(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(delegate.return_data[4 len 28])
}

function sub_77fa7d98(?) payable {
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
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1500cfba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = stor2
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
    require ext_code.size(0xaeb86f3860ad5b29ae141c56709835130ecbe0d9)
    delegate 0xaeb86f3860ad5b29ae141c56709835130ecbe0d9.0x0 with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 352]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == delegate.return_data[12 len 20]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    staticcall address(delegate.return_data[4 len 28]).creator() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    staticcall address(delegate.return_data[4 len 28]).funder() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    call stor1.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.addProxyRegistry(address arg1) with:
         gas gas_remaining wei
        args address(delegate.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).setMultiToken(address arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).0xd73cd47f with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).setGovernor(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).0x9277a185 with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[4 len 28]))
    call address(delegate.return_data[4 len 28]).mintGenesisGems(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(delegate.return_data[4 len 28])
}



}
