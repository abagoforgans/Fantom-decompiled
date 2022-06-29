contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_dd10b416Address;
address sub_9b6f8a78Address;
address targetVaultAddress;
address targetTokenAddress;
address sub_3685234bAddress;
uint256 sub_b76c4437;
uint256 sub_2eeb75fd;
uint256 balance;
address stor9;
address comptrollerAddress;
address sub_aed48951Address;
uint256 stor12;
uint256 sub_e2844256;
address routerAddress;
address wftmAddress;
address sub_7b0a3fb2Address;
array of address route;
array of address markets;
address MULTISIGAddress;

function targetVault() payable {
    return targetVaultAddress
}

function MULTISIG() payable {
    return MULTISIGAddress
}

function sub_2eeb75fd(?) payable {
    return sub_2eeb75fd
}

function targetToken() payable {
    return targetTokenAddress
}

function sub_3685234b(?) payable {
    return sub_3685234bAddress
}

function paused() payable {
    return bool(stor0)
}

function comptroller() payable {
    return comptrollerAddress
}

function sub_7b0a3fb2(?) payable {
    return sub_7b0a3fb2Address
}

function owner() payable {
    return owner
}

function sub_9b6f8a78(?) payable {
    return sub_9b6f8a78Address
}

function sub_aed48951(?) payable {
    return sub_aed48951Address
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < markets.length
    return markets[arg1]
}

function balance() payable {
    return balance
}

function sub_b76c4437(?) payable {
    return sub_b76c4437
}

function route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < route.length
    return route[arg1]
}

function sub_dd10b416(?) payable {
    return sub_dd10b416Address
}

function sub_e2844256(?) payable {
    return sub_e2844256
}

function wftm() payable {
    return wftmAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_71057344(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function sub_d43670e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MULTISIGAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_bf604cac(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c584d0ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args MULTISIGAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_52decf93(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(wftmAddress)
    call wftmAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4218f082(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args MULTISIGAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function execute() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args sub_dd10b416Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    balance = ext_call.return_data[0]
    if balance and 13400 > -1 / balance:
        revert with 'NH{q', 17
    require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
    staticcall 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 13400 * balance / 10000 and ext_call.return_data[50 len 14] > -1 / 13400 * balance / 10000:
        revert with 'NH{q', 17
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(stor9)
    call stor9.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(this.address), 13400 * balance / 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 128, 64, wftmAddress, 13400 * balance / 10000 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(sub_aed48951Address)
    staticcall sub_aed48951Address.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 64
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    if address(cd[(arg5 + 36)]) != arg2:
        revert with 0, 'encoded data (borrowToken) does not match'
    if cd[(arg5 + 68)] != arg3:
        revert with 0, 'encoded data (borrowAmount) does not match'
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(sub_7b0a3fb2Address)
    call sub_7b0a3fb2Address.mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = balance
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args balance
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_b76c4437 = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 100] = sub_dd10b416Address
    mem[(8 * ceil32(return_data.size)) + 132] = -1
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.repayBorrowBehalf(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd10b416Address, -1
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_b76c4437 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_2eeb75fd = sub_b76c4437 - ext_call.return_data[0]
    require ext_code.size(targetVaultAddress)
    call targetVaultAddress.upgradeStrat() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9b6f8a78Address)
    call sub_9b6f8a78Address.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(11 * ceil32(return_data.size)) + 100] = -1
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_7b0a3fb2Address)
    call sub_7b0a3fb2Address.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(13 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(sub_7b0a3fb2Address)
    call sub_7b0a3fb2Address.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(14 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(14 * ceil32(return_data.size)) + 100] = arg4
    mem[(14 * ceil32(return_data.size)) + 132] = 64
    mem[(14 * ceil32(return_data.size)) + 164] = route.length
    mem[0] = 17
    idx = 0
    s = 0
    t = (14 * ceil32(return_data.size)) + 196
    while idx < route.length:
        mem[t] = route[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=route.length, data=mem[(14 * ceil32(return_data.size)) + 196 len 32 * route.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(14 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (15 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _71 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32
    require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
    _72 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 + 96]
    if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (15 * ceil32(return_data.size)) + (32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 128 > test266151307() or (32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (15 * ceil32(return_data.size)) + (32 * mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 128
    mem[(15 * ceil32(return_data.size)) + 96] = _72
    require _71 + (32 * _72) + 32 <= return_data.size
    idx = 0
    s = (14 * ceil32(return_data.size)) + _71 + 128
    t = (15 * ceil32(return_data.size)) + 128
    while idx < _72:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _72:
        revert with 'NH{q', 50
    _84 = mem[(15 * ceil32(return_data.size)) + 128]
    if mem[(15 * ceil32(return_data.size)) + 128] and stor12 > -1 / mem[(15 * ceil32(return_data.size)) + 128]:
        revert with 'NH{q', 17
    if block.timestamp > -601:
        revert with 'NH{q', 17
    _85 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _84 * stor12 / 10000
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = route.length
    mem[0] = 17
    idx = 0
    s = 0
    t = mem[64] + 196
    while idx < route.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[_85 + 100] = this.address
    mem[_85 + 132] = block.timestamp + 600
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _85 + (32 * route.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
