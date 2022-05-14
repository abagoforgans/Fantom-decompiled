contract main {




// =====================  Runtime code  =====================


#
#  - getBestOutputAmountMultiExchangeSingleTokenMultiPath(address arg1, address[] arg2, address arg3, uint256[] arg4, uint256 arg5)
#  - getSellBestOutputAmountMultiExchangeMultiTokenMultiPath(address arg1, address[] arg2, address[] arg3, uint256[] arg4, uint256[] arg5)
#  - getBuyBestOutputAmountMultiExchangeMultiTokenMultiPath(address arg1, address[] arg2, address[] arg3, uint256[] arg4, uint256[] arg5)
#
address owner;
array of address exchangesRouters;
array of address sub_6b26dd78;
array of address exchangesFactories;
array of address sub_92d60aca;
address stor5;

function exchangesFactories(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < exchangesFactories.length
    return exchangesFactories[arg1]
}

function sub_6b26dd78(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_6b26dd78.length
    return sub_6b26dd78[arg1]
}

function owner() {
    return owner
}

function sub_92d60aca(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_92d60aca.length
    return sub_92d60aca[arg1]
}

function exchangesRouters(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < exchangesRouters.length
    return exchangesRouters[arg1]
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(stor5)
}

function _fallback() payable {
    revert
}

function getETHBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1aaaac12(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < arg1 * arg2 / 100:
        revert with 'NH{q', 17
    return (arg1 - (arg1 * arg2 / 100))
}

function sub_3ece8583(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < arg1 * arg2 / 100:
        revert with 'NH{q', 17
    return (arg1 - (arg1 * arg2 / 100))
}

function sub_2976e18d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 > -(arg1 * arg2 / 100) - 1:
        revert with 'NH{q', 17
    return (arg1 + (arg1 * arg2 / 100))
}

function withdrawETHAllBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETHAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdrawTokensAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveTokenInfinite(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveTokenAmount(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAllowance(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getPair(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesFactories.length:
        revert with 'NH{q', 50
    require ext_code.size(exchangesFactories[arg3])
    staticcall exchangesFactories[arg3].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function withdrawTokensAllBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPairReserves(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesFactories.length:
        revert with 'NH{q', 50
    require ext_code.size(exchangesFactories[arg3])
    staticcall exchangesFactories[arg3].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[128] = ext_call.return_data[18 len 14]
    mem[160] = ext_call.return_data[50 len 14]
    return Array(len=2, data=mem[128 len 64])
}

function getPairTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesFactories.length:
        revert with 'NH{q', 50
    mem[228] = arg2
    require ext_code.size(exchangesFactories[arg3])
    staticcall exchangesFactories[arg3].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 192] = 32
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 256 len 64])
}

function getPairReservesAndDetermineMainAndSecondaryTokens(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    _63 = mem[128]
    if 1 >= arg1.length:
        revert with 'NH{q', 50
    _65 = mem[160]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(arg1.length) + 97] = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= exchangesFactories.length:
        revert with 'NH{q', 50
    mem[floor32(arg1.length) + 229] = address(_65)
    require ext_code.size(exchangesFactories[arg2])
    staticcall exchangesFactories[arg2].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(_63), address(_65)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[floor32(arg1.length) + 129] = ext_call.return_data[18 len 14]
    mem[floor32(arg1.length) + 161] = ext_call.return_data[50 len 14]
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    if 1 >= arg1.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= exchangesFactories.length:
        revert with 'NH{q', 50
    mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 293] = mem[140 len 20]
    mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 325] = mem[172 len 20]
    require ext_code.size(exchangesFactories[arg2])
    staticcall exchangesFactories[arg2].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(mem[128]), mem[172 len 20]
    mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(arg1.length) + (4 * ceil32(return_data.size)) + 289] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
           args mem[floor32(arg1.length) + (4 * ceil32(return_data.size)) + 293 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 225] = ext_call.return_data[12 len 20]
    mem[floor32(arg1.length) + (4 * ceil32(return_data.size)) + 289] = 0xd21220a700000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
           args mem[floor32(arg1.length) + (4 * ceil32(return_data.size)) + 293 len 7 * ceil32(return_data.size)]
    mem[floor32(arg1.length) + (4 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    if mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 237 len 20] != mem[140 len 20]:
        mem[floor32(arg1.length) + (8 * ceil32(return_data.size)) + 289] = Mask(112, 0, ext_call.return_data[32])
        mem[floor32(arg1.length) + (8 * ceil32(return_data.size)) + 321] = ext_call.return_data[18 len 14]
    else:
        mem[floor32(arg1.length) + (8 * ceil32(return_data.size)) + 289] = ext_call.return_data[18 len 14]
        mem[floor32(arg1.length) + (8 * ceil32(return_data.size)) + 321] = Mask(112, 0, ext_call.return_data[32])
    return memory
      from floor32(arg1.length) + (8 * ceil32(return_data.size)) + 289
       len (13 * ceil32(return_data.size)) + 64
}

function getBestOutputAmountMultiExchangeSingleTokenSinglePath(address[] arg1, uint256[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length > exchangesRouters.length:
        revert with 0, 'Too much Router provided in Input'
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg2.length
    mem[64] = (32 * arg1.length) + (64 * arg2.length) + 192
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 'NH{q', 50
            _99 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[0] = 1
            _103 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            _115 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _115:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(exchangesRouters[_99])
            staticcall exchangesRouters[_99].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _103 + (32 * _115) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _208 = mem[_198]
            require mem[_198] <= test266151307()
            require _198 + mem[_198] + 31 < _198 + return_data.size
            _214 = mem[_198 + mem[_198]]
            if mem[_198 + mem[_198]] > test266151307():
                revert with 'NH{q', 65
            if _198 + ceil32(return_data.size) + floor32(mem[_198 + mem[_198]]) + 1 > test266151307() or floor32(mem[_198 + mem[_198]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _198 + ceil32(return_data.size) + floor32(mem[_198 + mem[_198]]) + 1
            mem[_198 + ceil32(return_data.size)] = _214
            require _208 + (32 * _214) + 32 <= return_data.size
            s = 0
            t = _198 + _208 + 32
            u = _198 + ceil32(return_data.size) + 32
            while s < _214:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _214 < 1:
                revert with 'NH{q', 17
            if _214 - 1 >= _214:
                revert with 'NH{q', 50
            if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * _214 - 1) + _198 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _98 = mem[64]
        mem[64] = mem[64] + (32 * arg2.length) + 32
        mem[_98] = arg2.length
        mem[_98 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[_98 + (32 * arg2.length) + 32] = 0
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if mem[(32 * arg1.length) + (32 * arg2.length) + 160] != arg2.length:
            revert with 0, 'Given output amounts are less than exchanges provided'
        _114 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_114 + 32 len 96] = call.data[calldata.size len 96]
        if 1 >= mem[_114]:
            revert with 'NH{q', 50
        mem[_114 + 64] = 0
        _178 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        while idx < _178:
            if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                revert with 'NH{q', 50
            if 1 >= mem[_114]:
                revert with 'NH{q', 50
            if mem[_114 + 64] < mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                if idx >= mem[_98]:
                    revert with 'NH{q', 50
                if 0 >= mem[_114]:
                    revert with 'NH{q', 50
                mem[_114 + 32] = mem[(32 * idx) + _98 + 32]
                if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    revert with 'NH{q', 50
                if 1 >= mem[_114]:
                    revert with 'NH{q', 50
                mem[_114 + 64] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                if 2 >= mem[_114]:
                    revert with 'NH{q', 50
                mem[_114 + 96] = idx
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _202 = mem[_114]
        mem[mem[64] + 32] = mem[_114]
        mem[mem[64] + 64 len 32 * _202] = mem[_114 + 32 len 32 * _202]
        return 32, mem[mem[64] + 32 len (32 * _202) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 'NH{q', 50
        _101 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] >= exchangesRouters.length:
            revert with 'NH{q', 50
        mem[0] = 1
        _105 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        _117 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _117:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(exchangesRouters[_101])
        staticcall exchangesRouters[_101].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _105 + (32 * _117) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _211 = mem[_201]
        require mem[_201] <= test266151307()
        require _201 + mem[_201] + 31 < _201 + return_data.size
        _215 = mem[_201 + mem[_201]]
        if mem[_201 + mem[_201]] > test266151307():
            revert with 'NH{q', 65
        if _201 + ceil32(return_data.size) + floor32(mem[_201 + mem[_201]]) + 1 > test266151307() or floor32(mem[_201 + mem[_201]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _201 + ceil32(return_data.size) + floor32(mem[_201 + mem[_201]]) + 1
        mem[_201 + ceil32(return_data.size)] = _215
        require _211 + (32 * _215) + 32 <= return_data.size
        s = 0
        t = _201 + _211 + 32
        u = _201 + ceil32(return_data.size) + 32
        while s < _215:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _215 < 1:
            revert with 'NH{q', 17
        if _215 - 1 >= _215:
            revert with 'NH{q', 50
        if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * _215 - 1) + _201 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _100 = mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_100] = arg2.length
    mem[_100 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[_100 + (32 * arg2.length) + 32] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[(32 * arg1.length) + (32 * arg2.length) + 160] != arg2.length:
        revert with 0, 'Given output amounts are less than exchanges provided'
    _116 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_116 + 32 len 96] = call.data[calldata.size len 96]
    if 1 >= mem[_116]:
        revert with 'NH{q', 50
    mem[_116 + 64] = 0
    _179 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    idx = 0
    while idx < _179:
        if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
            revert with 'NH{q', 50
        if 1 >= mem[_116]:
            revert with 'NH{q', 50
        if mem[_116 + 64] < mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
            if idx >= mem[_100]:
                revert with 'NH{q', 50
            if 0 >= mem[_116]:
                revert with 'NH{q', 50
            mem[_116 + 32] = mem[(32 * idx) + _100 + 32]
            if idx >= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                revert with 'NH{q', 50
            if 1 >= mem[_116]:
                revert with 'NH{q', 50
            mem[_116 + 64] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            if 2 >= mem[_116]:
                revert with 'NH{q', 50
            mem[_116 + 96] = idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _204 = mem[_116]
    mem[mem[64] + 32] = mem[_116]
    mem[mem[64] + 64 len 32 * _204] = mem[_116 + 32 len 32 * _204]
    return 32, mem[mem[64] + 32 len (32 * _204) + 32]
}

function startTrade(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 < arg4 * arg5 / 100:
        revert with 'NH{q', 17
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg3 >= sub_6b26dd78.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = sub_6b26dd78[arg3]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_6b26dd78[arg3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg2:
        if not arg6:
            mem[ceil32(return_data.size) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 100)
            mem[ceil32(return_data.size) + (32 * arg1.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg1.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 'NH{q', 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 100)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
    else:
        if 0 >= arg1.length:
            revert with 'NH{q', 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg3 >= sub_6b26dd78.length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = sub_6b26dd78[arg3]
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_6b26dd78[arg3], -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg6:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = arg2
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 100)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 'NH{q', 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 100)
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveAndSwapTokensForTokensSupportingFees(uint256 arg1, address[] arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg3 > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 < arg4 * arg3 / 100:
        revert with 'NH{q', 17
    if 0 >= arg2.length:
        revert with 'NH{q', 50
    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
    if arg5 >= sub_6b26dd78.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = sub_6b26dd78[arg5]
    require ext_code.size(address(cd[(arg2 + 36)]))
    staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_6b26dd78[arg5]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg1:
        if not arg6:
            mem[ceil32(return_data.size) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg2.length) + 132] = arg1
            mem[ceil32(return_data.size) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 100)
            mem[ceil32(return_data.size) + (32 * arg2.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg2.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 100)
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
    else:
        if 0 >= arg2.length:
            revert with 'NH{q', 50
        require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
        if arg5 >= sub_6b26dd78.length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = sub_6b26dd78[arg5]
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(address(cd[(arg2 + 36)]))
        call address(cd[(arg2 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_6b26dd78[arg5], -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg6:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 100)
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 100)
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startTrades(address[] arg1, address[] arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bool arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg5 and arg8 > -1 / arg5:
        revert with 'NH{q', 17
    if arg5 < arg5 * arg8 / 100:
        revert with 'NH{q', 17
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg4 >= sub_6b26dd78.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = sub_6b26dd78[arg4]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_6b26dd78[arg4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg3:
        if not arg9:
            mem[ceil32(return_data.size) + 96] = arg1.length
            mem[ceil32(return_data.size) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = arg3
            mem[ceil32(return_data.size) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 100)
            mem[ceil32(return_data.size) + (32 * arg1.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg1.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 'NH{q', 17
            if arg7 < arg7 * arg8 / 100:
                revert with 'NH{q', 17
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= sub_6b26dd78.length:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = sub_6b26dd78[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_6b26dd78[arg6]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= sub_6b26dd78.length:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = sub_6b26dd78[arg6]
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = -1
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_6b26dd78[arg6], -1
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 'NH{q', 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 100)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 'NH{q', 17
            if arg7 < arg7 * arg8 / 100:
                revert with 'NH{q', 17
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= sub_6b26dd78.length:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = sub_6b26dd78[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_6b26dd78[arg6]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= sub_6b26dd78.length:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = sub_6b26dd78[arg6]
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = -1
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_6b26dd78[arg6], -1
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
    else:
        if 0 >= arg1.length:
            revert with 'NH{q', 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg4 >= sub_6b26dd78.length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = sub_6b26dd78[arg4]
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_6b26dd78[arg4], -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg9:
            mem[(2 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = arg3
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 100)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 'NH{q', 17
            if arg7 < arg7 * arg8 / 100:
                revert with 'NH{q', 17
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= sub_6b26dd78.length:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = sub_6b26dd78[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_6b26dd78[arg6]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= sub_6b26dd78.length:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = sub_6b26dd78[arg6]
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = -1
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_6b26dd78[arg6], -1
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 'NH{q', 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 100)
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 'NH{q', 17
            if arg7 < arg7 * arg8 / 100:
                revert with 'NH{q', 17
            if 0 >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= sub_6b26dd78.length:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = sub_6b26dd78[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_6b26dd78[arg6]
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= sub_6b26dd78.length:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = sub_6b26dd78[arg6]
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = -1
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_6b26dd78[arg6], -1
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 100)
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function filterPairAndSetInvalidToDefault(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    if not arg2.length:
        mem[(32 * arg2.length) + 128] = 2
        mem[64] = (32 * arg2.length) + 224
        mem[(32 * arg2.length) + 160 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == mem[_86 + 12 len 20]
            if mem[_86 + 12 len 20]:
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_100] == mem[_100 + 12 len 20]
                if mem[_100 + 12 len 20]:
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length) + 160] = arg1
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if 1 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length) + 192] = address(cd[((32 * idx) + arg2 + 36)])
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _118 = mem[64]
                    mem[mem[64]] = 2
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[mem[64] + 100] = arg1
                    mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_118]:
                        revert with 'NH{q', 50
                    mem[_118 + 32] = ext_call.return_data[18 len 14]
                    if 1 >= mem[_118]:
                        revert with 'NH{q', 50
                    mem[_118 + 64] = ext_call.return_data[50 len 14]
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[_118 + (2 * ceil32(return_data.size)) + 96] = 2
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[_118 + (2 * ceil32(return_data.size)) + 196] = arg1
                    mem[_118 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[_118 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_118 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[_118 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_118 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[_118 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[_118 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                    mem[_118 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _118 + (8 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_118 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    if mem[_118 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                        if 1 >= mem[_118]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_118]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[32]) > arg5:
                            if owner != msg.sender:
                                mem[_118 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_118 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_118 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_118 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _118 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 'NH{q', 50
                            mem[_118 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_118 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_118 + (8 * ceil32(return_data.size)) + 228] = 64
                            _240 = mem[(32 * arg2.length) + 128]
                            mem[_118 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                            s = 0
                            t = (32 * arg2.length) + 160
                            u = _118 + (8 * ceil32(return_data.size)) + 292
                            while s < _240:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_118 + (8 * ceil32(return_data.size)) + 260 len (32 * _240) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_118 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _118 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _364 = mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _118 + (8 * ceil32(return_data.size)) + return_data.size + 192
                            _368 = mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if _118 + (10 * ceil32(return_data.size)) + floor32(mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _118 + (10 * ceil32(return_data.size)) + floor32(mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_118 + (10 * ceil32(return_data.size)) + 192] = mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            require _364 + (32 * _368) + 32 <= return_data.size
                            s = 0
                            t = _118 + (8 * ceil32(return_data.size)) + _364 + 224
                            u = _118 + (10 * ceil32(return_data.size)) + 224
                            while s < _368:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _368 < 1:
                                revert with 'NH{q', 17
                            if _368 - 1 >= _368:
                                revert with 'NH{q', 50
                            _592 = mem[(32 * _368 - 1) + _118 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length) + 192] = arg3
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _624 = mem[64]
                            mem[mem[64]] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_624]:
                                revert with 'NH{q', 50
                            mem[_624 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_624]:
                                revert with 'NH{q', 50
                            mem[_624 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_624 + (2 * ceil32(return_data.size)) + 96] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[_624 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_624 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_624 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_624 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_624 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_624 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_624 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_624 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_624 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _624 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_624 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if mem[_624 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_624]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_624]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > _592:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_624]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_624]:
                                    revert with 'NH{q', 50
                                if ext_call.return_data[18 len 14] > _592:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        if 0 >= mem[_118]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_118]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] > arg5:
                            if owner != msg.sender:
                                mem[_118 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_118 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_118 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_118 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _118 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 'NH{q', 50
                            mem[_118 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_118 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_118 + (8 * ceil32(return_data.size)) + 228] = 64
                            _242 = mem[(32 * arg2.length) + 128]
                            mem[_118 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                            s = 0
                            t = (32 * arg2.length) + 160
                            u = _118 + (8 * ceil32(return_data.size)) + 292
                            while s < _242:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_118 + (8 * ceil32(return_data.size)) + 260 len (32 * _242) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_118 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _118 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _365 = mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _118 + (8 * ceil32(return_data.size)) + return_data.size + 192
                            _369 = mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if _118 + (10 * ceil32(return_data.size)) + floor32(mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _118 + (10 * ceil32(return_data.size)) + floor32(mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_118 + (10 * ceil32(return_data.size)) + 192] = mem[_118 + (8 * ceil32(return_data.size)) + mem[_118 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            require _365 + (32 * _369) + 32 <= return_data.size
                            s = 0
                            t = _118 + (8 * ceil32(return_data.size)) + _365 + 224
                            u = _118 + (10 * ceil32(return_data.size)) + 224
                            while s < _369:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _369 < 1:
                                revert with 'NH{q', 17
                            if _369 - 1 >= _369:
                                revert with 'NH{q', 50
                            _593 = mem[(32 * _369 - 1) + _118 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length) + 192] = arg3
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _625 = mem[64]
                            mem[mem[64]] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_625]:
                                revert with 'NH{q', 50
                            mem[_625 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_625]:
                                revert with 'NH{q', 50
                            mem[_625 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_625 + (2 * ceil32(return_data.size)) + 96] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[_625 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_625 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_625 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_625 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_625 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_625 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_625 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_625 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_625 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _625 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_625 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 'NH{q', 50
                            if mem[_625 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_625]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_625]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > _593:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_625]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_625]:
                                    revert with 'NH{q', 50
                                if ext_call.return_data[18 len 14] > _593:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _68 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 2
    mem[64] = (32 * arg2.length) + 224
    mem[(32 * arg2.length) + 160 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg4 >= exchangesFactories.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(exchangesFactories[arg4])
        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_87] == mem[_87 + 12 len 20]
        if mem[_87 + 12 len 20]:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = arg3
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_101] == mem[_101 + 12 len 20]
            if mem[_101 + 12 len 20]:
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length) + 160] = arg1
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if 1 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length) + 192] = address(cd[((32 * idx) + arg2 + 36)])
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _119 = mem[64]
                mem[mem[64]] = 2
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[mem[64] + 100] = arg1
                mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_119]:
                    revert with 'NH{q', 50
                mem[_119 + 32] = ext_call.return_data[18 len 14]
                if 1 >= mem[_119]:
                    revert with 'NH{q', 50
                mem[_119 + 64] = ext_call.return_data[50 len 14]
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[_119 + (2 * ceil32(return_data.size)) + 96] = 2
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[_119 + (2 * ceil32(return_data.size)) + 196] = arg1
                mem[_119 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[_119 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_119 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[_119 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_119 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[_119 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[_119 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                mem[_119 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _119 + (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_119 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                if mem[_119 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                    if 1 >= mem[_119]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_119]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[32]) > arg5:
                        if owner != msg.sender:
                            mem[_119 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_119 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_119 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_119 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _119 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        mem[_119 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_119 + (8 * ceil32(return_data.size)) + 228] = 64
                        _244 = mem[(32 * arg2.length) + 128]
                        mem[_119 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                        s = 0
                        t = (32 * arg2.length) + 160
                        u = _119 + (8 * ceil32(return_data.size)) + 292
                        while s < _244:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_119 + (8 * ceil32(return_data.size)) + 260 len (32 * _244) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_119 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _119 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _366 = mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _119 + (8 * ceil32(return_data.size)) + return_data.size + 192
                        _370 = mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if _119 + (10 * ceil32(return_data.size)) + floor32(mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _119 + (10 * ceil32(return_data.size)) + floor32(mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_119 + (10 * ceil32(return_data.size)) + 192] = _370
                        require _366 + (32 * _370) + 32 <= return_data.size
                        s = 0
                        t = _119 + (8 * ceil32(return_data.size)) + _366 + 224
                        u = _119 + (10 * ceil32(return_data.size)) + 224
                        while s < _370:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _370 < 1:
                            revert with 'NH{q', 17
                        if _370 - 1 >= _370:
                            revert with 'NH{q', 50
                        _594 = mem[(32 * _370 - 1) + _119 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + 192] = arg3
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _626 = mem[64]
                        mem[mem[64]] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_626]:
                            revert with 'NH{q', 50
                        mem[_626 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_626]:
                            revert with 'NH{q', 50
                        mem[_626 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_626 + (2 * ceil32(return_data.size)) + 96] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[_626 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_626 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_626 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_626 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_626 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_626 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_626 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_626 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_626 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _626 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_626 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[_626 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_626]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_626]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > _594:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_626]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_626]:
                                revert with 'NH{q', 50
                            if ext_call.return_data[18 len 14] > _594:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                else:
                    if 0 >= mem[_119]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_119]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] > arg5:
                        if owner != msg.sender:
                            mem[_119 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_119 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_119 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_119 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _119 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        mem[_119 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_119 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_119 + (8 * ceil32(return_data.size)) + 228] = 64
                        _246 = mem[(32 * arg2.length) + 128]
                        mem[_119 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                        s = 0
                        t = (32 * arg2.length) + 160
                        u = _119 + (8 * ceil32(return_data.size)) + 292
                        while s < _246:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_119 + (8 * ceil32(return_data.size)) + 260 len (32 * _246) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_119 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _119 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _367 = mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _119 + (8 * ceil32(return_data.size)) + return_data.size + 192
                        _371 = mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if _119 + (10 * ceil32(return_data.size)) + floor32(mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _119 + (10 * ceil32(return_data.size)) + floor32(mem[_119 + (8 * ceil32(return_data.size)) + mem[_119 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_119 + (10 * ceil32(return_data.size)) + 192] = _371
                        require _367 + (32 * _371) + 32 <= return_data.size
                        s = 0
                        t = _119 + (8 * ceil32(return_data.size)) + _367 + 224
                        u = _119 + (10 * ceil32(return_data.size)) + 224
                        while s < _371:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _371 < 1:
                            revert with 'NH{q', 17
                        if _371 - 1 >= _371:
                            revert with 'NH{q', 50
                        _595 = mem[(32 * _371 - 1) + _119 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + 192] = arg3
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _627 = mem[64]
                        mem[mem[64]] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_627]:
                            revert with 'NH{q', 50
                        mem[_627 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_627]:
                            revert with 'NH{q', 50
                        mem[_627 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_627 + (2 * ceil32(return_data.size)) + 96] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[_627 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_627 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_627 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_627 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_627 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_627 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_627 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_627 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_627 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _627 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_627 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if mem[_627 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_627]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_627]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > _595:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_627]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_627]:
                                revert with 'NH{q', 50
                            if ext_call.return_data[18 len 14] > _595:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _69 = mem[64]
    mem[mem[64]] = 32
    _71 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _71:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _69 + (32 * _71) + -mem[64] + 64
}

function getBest3WayPathAndHisOutputAmount(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > -2:
        revert with 'NH{q', 17
    if arg2.length + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length + 1
    if not arg2.length + 1:
        mem[(32 * arg2.length + 1) + 128] = 3
        mem[(32 * arg2.length + 1) + 160 len 96] = call.data[calldata.size len 96]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg2.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg2.length + 1) + 256] = arg2.length
        if not arg2.length:
            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
            mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
            idx = 0
            while idx < arg2.length:
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == mem[_428 + 12 len 20]
                if mem[_428 + 12 len 20]:
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg2 + 36)]), arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_487] == mem[_487 + 12 len 20]
                    if mem[_487 + 12 len 20]:
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                        if idx >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _523 = mem[64]
                        mem[mem[64]] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[mem[64] + 100] = arg1
                        mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_523]:
                            revert with 'NH{q', 50
                        mem[_523 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_523]:
                            revert with 'NH{q', 50
                        mem[_523 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_523 + (2 * ceil32(return_data.size)) + 96] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[_523 + (2 * ceil32(return_data.size)) + 196] = arg1
                        mem[_523 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                        mem[_523 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_523 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_523 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_523 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_523 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_523 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_523 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _523 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_523 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if mem[_523 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                            if 1 >= mem[_523]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_523]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > arg5:
                                if owner != msg.sender:
                                    mem[_523 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_523 + (8 * ceil32(return_data.size)) + 196] = 32
                                    mem[_523 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_523 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                    revert with memory
                                      from _523 + (8 * ceil32(return_data.size)) + 192
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg4 >= exchangesRouters.length:
                                    revert with 'NH{q', 50
                                mem[0] = 1
                                mem[_523 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_523 + (8 * ceil32(return_data.size)) + 196] = arg5
                                mem[_523 + (8 * ceil32(return_data.size)) + 228] = 64
                                _927 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                mem[_523 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                s = 0
                                t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                                u = _523 + (8 * ceil32(return_data.size)) + 292
                                while s < _927:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(exchangesRouters[arg4])
                                staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args arg5, 64, mem[_523 + (8 * ceil32(return_data.size)) + 260 len (32 * _927) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_523 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _523 + (10 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1232 = mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                                require mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                                require _523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _523 + (8 * ceil32(return_data.size)) + return_data.size + 192
                                _1244 = mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                                if mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if _523 + (10 * ceil32(return_data.size)) + floor32(mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _523 + (10 * ceil32(return_data.size)) + floor32(mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                                mem[_523 + (10 * ceil32(return_data.size)) + 192] = _1244
                                require _1232 + (32 * _1244) + 32 <= return_data.size
                                s = 0
                                t = _523 + (8 * ceil32(return_data.size)) + _1232 + 224
                                u = _523 + (10 * ceil32(return_data.size)) + 224
                                while s < _1244:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if _1244 < 1:
                                    revert with 'NH{q', 17
                                if _1244 - 1 >= _1244:
                                    revert with 'NH{q', 50
                                _1748 = mem[(32 * _1244 - 1) + _523 + (10 * ceil32(return_data.size)) + 224]
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _1819 = mem[64]
                                mem[mem[64]] = 2
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if arg4 >= exchangesFactories.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[mem[64] + 132] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[mem[64] + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if 0 >= mem[_1819]:
                                    revert with 'NH{q', 50
                                mem[_1819 + 32] = ext_call.return_data[18 len 14]
                                if 1 >= mem[_1819]:
                                    revert with 'NH{q', 50
                                mem[_1819 + 64] = ext_call.return_data[50 len 14]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[_1819 + (2 * ceil32(return_data.size)) + 96] = 2
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if arg4 >= exchangesFactories.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                mem[_1819 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[_1819 + (2 * ceil32(return_data.size)) + 228] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[_1819 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_1819 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                       args mem[_1819 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_1819 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                                mem[_1819 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[_1819 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                                mem[_1819 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1819 + (8 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_1819 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if mem[_1819 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                    if 1 >= mem[_1819]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_1819]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, ext_call.return_data[32]) > _1748:
                                        if idx >= arg2.length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                                else:
                                    if 0 >= mem[_1819]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_1819]:
                                        revert with 'NH{q', 50
                                    if ext_call.return_data[18 len 14] > _1748:
                                        if idx >= arg2.length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_523]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_523]:
                                revert with 'NH{q', 50
                            if ext_call.return_data[18 len 14] > arg5:
                                if owner != msg.sender:
                                    mem[_523 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_523 + (8 * ceil32(return_data.size)) + 196] = 32
                                    mem[_523 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_523 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                    revert with memory
                                      from _523 + (8 * ceil32(return_data.size)) + 192
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg4 >= exchangesRouters.length:
                                    revert with 'NH{q', 50
                                mem[0] = 1
                                mem[_523 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_523 + (8 * ceil32(return_data.size)) + 196] = arg5
                                mem[_523 + (8 * ceil32(return_data.size)) + 228] = 64
                                _929 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                mem[_523 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                s = 0
                                t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                                u = _523 + (8 * ceil32(return_data.size)) + 292
                                while s < _929:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(exchangesRouters[arg4])
                                staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args arg5, 64, mem[_523 + (8 * ceil32(return_data.size)) + 260 len (32 * _929) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_523 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _523 + (10 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1233 = mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                                require mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                                require _523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _523 + (8 * ceil32(return_data.size)) + return_data.size + 192
                                _1245 = mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                                if mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if _523 + (10 * ceil32(return_data.size)) + floor32(mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _523 + (10 * ceil32(return_data.size)) + floor32(mem[_523 + (8 * ceil32(return_data.size)) + mem[_523 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                                mem[_523 + (10 * ceil32(return_data.size)) + 192] = _1245
                                require _1233 + (32 * _1245) + 32 <= return_data.size
                                s = 0
                                t = _523 + (8 * ceil32(return_data.size)) + _1233 + 224
                                u = _523 + (10 * ceil32(return_data.size)) + 224
                                while s < _1245:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if _1245 < 1:
                                    revert with 'NH{q', 17
                                if _1245 - 1 >= _1245:
                                    revert with 'NH{q', 50
                                _1749 = mem[(32 * _1245 - 1) + _523 + (10 * ceil32(return_data.size)) + 224]
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _1820 = mem[64]
                                mem[mem[64]] = 2
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if arg4 >= exchangesFactories.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[mem[64] + 132] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[mem[64] + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if 0 >= mem[_1820]:
                                    revert with 'NH{q', 50
                                mem[_1820 + 32] = ext_call.return_data[18 len 14]
                                if 1 >= mem[_1820]:
                                    revert with 'NH{q', 50
                                mem[_1820 + 64] = ext_call.return_data[50 len 14]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[_1820 + (2 * ceil32(return_data.size)) + 96] = 2
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if arg4 >= exchangesFactories.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                mem[_1820 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[_1820 + (2 * ceil32(return_data.size)) + 228] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[_1820 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_1820 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                       args mem[_1820 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_1820 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                                mem[_1820 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[_1820 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                                mem[_1820 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1820 + (8 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_1820 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 'NH{q', 50
                                if mem[_1820 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                    if 1 >= mem[_1820]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_1820]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, ext_call.return_data[32]) > _1749:
                                        if idx >= arg2.length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                                else:
                                    if 0 >= mem[_1820]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_1820]:
                                        revert with 'NH{q', 50
                                    if ext_call.return_data[18 len 14] > _1749:
                                        if idx >= arg2.length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _607 = mem[(32 * arg2.length + 1) + 256]
            idx = 0
            while idx < _607:
                if idx >= mem[(32 * arg2.length + 1) + 256]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if 0 >= mem[(32 * arg2.length + 1) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + 160] = arg1
                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length + 1) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
                    if 2 >= mem[(32 * arg2.length + 1) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + 224] = arg3
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesRouters.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    _694 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _743 = mem[(32 * arg2.length + 1) + 128]
                    mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
                    s = 0
                    t = (32 * arg2.length + 1) + 160
                    u = mem[64] + 100
                    while s < _743:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(exchangesRouters[arg4])
                    staticcall exchangesRouters[arg4].mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _694 + (32 * _743) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1204 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1231 = mem[_1204]
                    require mem[_1204] <= test266151307()
                    require _1204 + mem[_1204] + 31 < _1204 + return_data.size
                    _1243 = mem[_1204 + mem[_1204]]
                    if mem[_1204 + mem[_1204]] > test266151307():
                        revert with 'NH{q', 65
                    if _1204 + ceil32(return_data.size) + floor32(mem[_1204 + mem[_1204]]) + 1 > test266151307() or floor32(mem[_1204 + mem[_1204]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1204 + ceil32(return_data.size) + floor32(mem[_1204 + mem[_1204]]) + 1
                    mem[_1204 + ceil32(return_data.size)] = _1243
                    require _1231 + (32 * _1243) + 32 <= return_data.size
                    s = 0
                    t = _1204 + _1231 + 32
                    u = _1204 + ceil32(return_data.size) + 32
                    while s < _1243:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _1243 < 1:
                        revert with 'NH{q', 17
                    if _1243 - 1 >= _1243:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[(32 * _1243 - 1) + _1204 + ceil32(return_data.size) + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _655 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_655 + 32 len 64] = call.data[calldata.size len 64]
            if 1 >= mem[_655]:
                revert with 'NH{q', 50
            mem[_655 + 64] = 0
            _1151 = mem[96]
            idx = 0
            while idx < _1151:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_655]:
                    revert with 'NH{q', 50
                if mem[_655 + 64] < mem[(32 * idx) + 128]:
                    if 0 >= mem[_655]:
                        revert with 'NH{q', 50
                    mem[_655 + 32] = idx
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_655]:
                        revert with 'NH{q', 50
                    mem[_655 + 64] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1219 = mem[_655]
            mem[mem[64] + 32] = mem[_655]
            mem[mem[64] + 64 len 32 * _1219] = mem[_655 + 32 len 32 * _1219]
            return 32, mem[mem[64] + 32 len (32 * _1219) + 32]
        mem[(32 * arg2.length + 1) + 288 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
        mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_430] == mem[_430 + 12 len 20]
            if mem[_430 + 12 len 20]:
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _488 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_488] == mem[_488 + 12 len 20]
                if mem[_488 + 12 len 20]:
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _524 = mem[64]
                    mem[mem[64]] = 2
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[mem[64] + 100] = arg1
                    mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_524]:
                        revert with 'NH{q', 50
                    mem[_524 + 32] = ext_call.return_data[18 len 14]
                    if 1 >= mem[_524]:
                        revert with 'NH{q', 50
                    mem[_524 + 64] = ext_call.return_data[50 len 14]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[_524 + (2 * ceil32(return_data.size)) + 96] = 2
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[_524 + (2 * ceil32(return_data.size)) + 196] = arg1
                    mem[_524 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[_524 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_524 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[_524 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_524 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[_524 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[_524 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                    mem[_524 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _524 + (8 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_524 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if mem[_524 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                        if 1 >= mem[_524]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_524]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[32]) > arg5:
                            if owner != msg.sender:
                                mem[_524 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_524 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_524 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_524 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _524 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 'NH{q', 50
                            mem[_524 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_524 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_524 + (8 * ceil32(return_data.size)) + 228] = 64
                            _931 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_524 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _524 + (8 * ceil32(return_data.size)) + 292
                            while s < _931:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_524 + (8 * ceil32(return_data.size)) + 260 len (32 * _931) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_524 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _524 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1235 = mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _524 + (8 * ceil32(return_data.size)) + return_data.size + 192
                            _1247 = mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if _524 + (10 * ceil32(return_data.size)) + floor32(mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _524 + (10 * ceil32(return_data.size)) + floor32(mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_524 + (10 * ceil32(return_data.size)) + 192] = mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            require _1235 + (32 * _1247) + 32 <= return_data.size
                            s = 0
                            t = _524 + (8 * ceil32(return_data.size)) + _1235 + 224
                            u = _524 + (10 * ceil32(return_data.size)) + 224
                            while s < _1247:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _1247 < 1:
                                revert with 'NH{q', 17
                            if _1247 - 1 >= _1247:
                                revert with 'NH{q', 50
                            _1751 = mem[(32 * _1247 - 1) + _524 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _1821 = mem[64]
                            mem[mem[64]] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_1821]:
                                revert with 'NH{q', 50
                            mem[_1821 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_1821]:
                                revert with 'NH{q', 50
                            mem[_1821 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_1821 + (2 * ceil32(return_data.size)) + 96] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[_1821 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_1821 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_1821 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1821 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_1821 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1821 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_1821 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_1821 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_1821 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1821 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1821 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if mem[_1821 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_1821]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_1821]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > _1751:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_1821]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_1821]:
                                    revert with 'NH{q', 50
                                if ext_call.return_data[18 len 14] > _1751:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        if 0 >= mem[_524]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_524]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] > arg5:
                            if owner != msg.sender:
                                mem[_524 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_524 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_524 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_524 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _524 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 'NH{q', 50
                            mem[_524 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_524 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_524 + (8 * ceil32(return_data.size)) + 228] = 64
                            _933 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_524 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _524 + (8 * ceil32(return_data.size)) + 292
                            while s < _933:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_524 + (8 * ceil32(return_data.size)) + 260 len (32 * _933) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_524 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _524 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1236 = mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _524 + (8 * ceil32(return_data.size)) + return_data.size + 192
                            _1248 = mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if _524 + (10 * ceil32(return_data.size)) + floor32(mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _524 + (10 * ceil32(return_data.size)) + floor32(mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_524 + (10 * ceil32(return_data.size)) + 192] = mem[_524 + (8 * ceil32(return_data.size)) + mem[_524 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            require _1236 + (32 * _1248) + 32 <= return_data.size
                            s = 0
                            t = _524 + (8 * ceil32(return_data.size)) + _1236 + 224
                            u = _524 + (10 * ceil32(return_data.size)) + 224
                            while s < _1248:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _1248 < 1:
                                revert with 'NH{q', 17
                            if _1248 - 1 >= _1248:
                                revert with 'NH{q', 50
                            _1752 = mem[(32 * _1248 - 1) + _524 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _1822 = mem[64]
                            mem[mem[64]] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_1822]:
                                revert with 'NH{q', 50
                            mem[_1822 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_1822]:
                                revert with 'NH{q', 50
                            mem[_1822 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_1822 + (2 * ceil32(return_data.size)) + 96] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[_1822 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_1822 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_1822 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1822 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_1822 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1822 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_1822 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_1822 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_1822 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1822 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1822 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if mem[_1822 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_1822]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_1822]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > _1752:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_1822]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_1822]:
                                    revert with 'NH{q', 50
                                if ext_call.return_data[18 len 14] > _1752:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _608 = mem[(32 * arg2.length + 1) + 256]
        idx = 0
        while idx < _608:
            if idx >= mem[(32 * arg2.length + 1) + 256]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if 0 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + 160] = arg1
                if idx >= mem[(32 * arg2.length + 1) + 256]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
                if 2 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + 224] = arg3
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesRouters.length:
                    revert with 'NH{q', 50
                mem[0] = 1
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg5
                mem[mem[64] + 36] = 64
                _745 = mem[(32 * arg2.length + 1) + 128]
                mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
                s = 0
                t = (32 * arg2.length + 1) + 160
                u = mem[64] + 100
                while s < _745:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(exchangesRouters[arg4])
                staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg5, 64, mem[mem[64] + 68 len (32 * _745) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1208 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1234 = mem[_1208]
                require mem[_1208] <= test266151307()
                require _1208 + mem[_1208] + 31 < _1208 + return_data.size
                _1246 = mem[_1208 + mem[_1208]]
                if mem[_1208 + mem[_1208]] > test266151307():
                    revert with 'NH{q', 65
                if _1208 + ceil32(return_data.size) + floor32(mem[_1208 + mem[_1208]]) + 1 > test266151307() or floor32(mem[_1208 + mem[_1208]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1208 + ceil32(return_data.size) + floor32(mem[_1208 + mem[_1208]]) + 1
                mem[_1208 + ceil32(return_data.size)] = _1246
                require _1234 + (32 * _1246) + 32 <= return_data.size
                s = 0
                t = _1208 + _1234 + 32
                u = _1208 + ceil32(return_data.size) + 32
                while s < _1246:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if _1246 < 1:
                    revert with 'NH{q', 17
                if _1246 - 1 >= _1246:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[(32 * _1246 - 1) + _1208 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _656 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_656 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= mem[_656]:
            revert with 'NH{q', 50
        mem[_656 + 64] = 0
        _1152 = mem[96]
        idx = 0
        while idx < _1152:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_656]:
                revert with 'NH{q', 50
            if mem[_656 + 64] < mem[(32 * idx) + 128]:
                if 0 >= mem[_656]:
                    revert with 'NH{q', 50
                mem[_656 + 32] = idx
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_656]:
                    revert with 'NH{q', 50
                mem[_656 + 64] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1222 = mem[_656]
        mem[mem[64] + 32] = mem[_656]
        mem[mem[64] + 64 len 32 * _1222] = mem[_656 + 32 len 32 * _1222]
        return 32, mem[mem[64] + 32 len (32 * _1222) + 32]
    mem[128 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
    mem[(32 * arg2.length + 1) + 128] = 3
    mem[(32 * arg2.length + 1) + 160 len 96] = call.data[calldata.size len 96]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg2.length + 1) + 256] = arg2.length
    if not arg2.length:
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
        mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_432] == mem[_432 + 12 len 20]
            if mem[_432 + 12 len 20]:
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_489] == mem[_489 + 12 len 20]
                if mem[_489 + 12 len 20]:
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                    if idx >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _525 = mem[64]
                    mem[mem[64]] = 2
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[mem[64] + 100] = arg1
                    mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_525]:
                        revert with 'NH{q', 50
                    mem[_525 + 32] = ext_call.return_data[18 len 14]
                    if 1 >= mem[_525]:
                        revert with 'NH{q', 50
                    mem[_525 + 64] = ext_call.return_data[50 len 14]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[_525 + (2 * ceil32(return_data.size)) + 96] = 2
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    mem[_525 + (2 * ceil32(return_data.size)) + 196] = arg1
                    mem[_525 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[_525 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_525 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[_525 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_525 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[_525 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[_525 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                    mem[_525 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _525 + (8 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_525 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 'NH{q', 50
                    if mem[_525 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                        if 1 >= mem[_525]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_525]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[32]) > arg5:
                            if owner != msg.sender:
                                mem[_525 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_525 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_525 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_525 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _525 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 'NH{q', 50
                            mem[0] = 1
                            mem[_525 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_525 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_525 + (8 * ceil32(return_data.size)) + 228] = 64
                            _935 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_525 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _525 + (8 * ceil32(return_data.size)) + 292
                            while s < _935:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_525 + (8 * ceil32(return_data.size)) + 260 len (32 * _935) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_525 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _525 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1238 = mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _525 + (8 * ceil32(return_data.size)) + return_data.size + 192
                            _1250 = mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if _525 + (10 * ceil32(return_data.size)) + floor32(mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _525 + (10 * ceil32(return_data.size)) + floor32(mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_525 + (10 * ceil32(return_data.size)) + 192] = _1250
                            require _1238 + (32 * _1250) + 32 <= return_data.size
                            s = 0
                            t = _525 + (8 * ceil32(return_data.size)) + _1238 + 224
                            u = _525 + (10 * ceil32(return_data.size)) + 224
                            while s < _1250:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _1250 < 1:
                                revert with 'NH{q', 17
                            if _1250 - 1 >= _1250:
                                revert with 'NH{q', 50
                            _1754 = mem[(32 * _1250 - 1) + _525 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _1823 = mem[64]
                            mem[mem[64]] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_1823]:
                                revert with 'NH{q', 50
                            mem[_1823 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_1823]:
                                revert with 'NH{q', 50
                            mem[_1823 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_1823 + (2 * ceil32(return_data.size)) + 96] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[_1823 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_1823 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_1823 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1823 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_1823 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1823 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_1823 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_1823 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_1823 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1823 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1823 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if mem[_1823 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_1823]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_1823]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > _1754:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_1823]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_1823]:
                                    revert with 'NH{q', 50
                                if ext_call.return_data[18 len 14] > _1754:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        if 0 >= mem[_525]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_525]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] > arg5:
                            if owner != msg.sender:
                                mem[_525 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_525 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_525 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_525 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _525 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 'NH{q', 50
                            mem[0] = 1
                            mem[_525 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_525 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_525 + (8 * ceil32(return_data.size)) + 228] = 64
                            _937 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_525 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _525 + (8 * ceil32(return_data.size)) + 292
                            while s < _937:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_525 + (8 * ceil32(return_data.size)) + 260 len (32 * _937) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_525 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _525 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1239 = mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _525 + (8 * ceil32(return_data.size)) + return_data.size + 192
                            _1251 = mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if _525 + (10 * ceil32(return_data.size)) + floor32(mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _525 + (10 * ceil32(return_data.size)) + floor32(mem[_525 + (8 * ceil32(return_data.size)) + mem[_525 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_525 + (10 * ceil32(return_data.size)) + 192] = _1251
                            require _1239 + (32 * _1251) + 32 <= return_data.size
                            s = 0
                            t = _525 + (8 * ceil32(return_data.size)) + _1239 + 224
                            u = _525 + (10 * ceil32(return_data.size)) + 224
                            while s < _1251:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _1251 < 1:
                                revert with 'NH{q', 17
                            if _1251 - 1 >= _1251:
                                revert with 'NH{q', 50
                            _1755 = mem[(32 * _1251 - 1) + _525 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _1824 = mem[64]
                            mem[mem[64]] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_1824]:
                                revert with 'NH{q', 50
                            mem[_1824 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_1824]:
                                revert with 'NH{q', 50
                            mem[_1824 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_1824 + (2 * ceil32(return_data.size)) + 96] = 2
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg4 >= exchangesFactories.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            mem[_1824 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_1824 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_1824 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1824 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_1824 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1824 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_1824 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_1824 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_1824 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1824 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_1824 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 'NH{q', 50
                            if mem[_1824 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_1824]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_1824]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > _1755:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_1824]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_1824]:
                                    revert with 'NH{q', 50
                                if ext_call.return_data[18 len 14] > _1755:
                                    if idx >= arg2.length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _609 = mem[(32 * arg2.length + 1) + 256]
        idx = 0
        while idx < _609:
            if idx >= mem[(32 * arg2.length + 1) + 256]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if 0 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + 160] = arg1
                if idx >= mem[(32 * arg2.length + 1) + 256]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
                if 2 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + 224] = arg3
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesRouters.length:
                    revert with 'NH{q', 50
                mem[0] = 1
                _702 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg5
                mem[mem[64] + 36] = 64
                _747 = mem[(32 * arg2.length + 1) + 128]
                mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
                s = 0
                t = (32 * arg2.length + 1) + 160
                u = mem[64] + 100
                while s < _747:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(exchangesRouters[arg4])
                staticcall exchangesRouters[arg4].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _702 + (32 * _747) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1212 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1237 = mem[_1212]
                require mem[_1212] <= test266151307()
                require _1212 + mem[_1212] + 31 < _1212 + return_data.size
                _1249 = mem[_1212 + mem[_1212]]
                if mem[_1212 + mem[_1212]] > test266151307():
                    revert with 'NH{q', 65
                if _1212 + ceil32(return_data.size) + floor32(mem[_1212 + mem[_1212]]) + 1 > test266151307() or floor32(mem[_1212 + mem[_1212]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1212 + ceil32(return_data.size) + floor32(mem[_1212 + mem[_1212]]) + 1
                mem[_1212 + ceil32(return_data.size)] = _1249
                require _1237 + (32 * _1249) + 32 <= return_data.size
                s = 0
                t = _1212 + _1237 + 32
                u = _1212 + ceil32(return_data.size) + 32
                while s < _1249:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if _1249 < 1:
                    revert with 'NH{q', 17
                if _1249 - 1 >= _1249:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[(32 * _1249 - 1) + _1212 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _657 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_657 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= mem[_657]:
            revert with 'NH{q', 50
        mem[_657 + 64] = 0
        _1153 = mem[96]
        idx = 0
        while idx < _1153:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_657]:
                revert with 'NH{q', 50
            if mem[_657 + 64] < mem[(32 * idx) + 128]:
                if 0 >= mem[_657]:
                    revert with 'NH{q', 50
                mem[_657 + 32] = idx
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_657]:
                    revert with 'NH{q', 50
                mem[_657 + 64] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1225 = mem[_657]
        mem[mem[64] + 32] = mem[_657]
        mem[mem[64] + 64 len 32 * _1225] = mem[_657 + 32 len 32 * _1225]
        return 32, mem[mem[64] + 32 len (32 * _1225) + 32]
    mem[(32 * arg2.length + 1) + 288 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
    mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg4 >= exchangesFactories.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(exchangesFactories[arg4])
        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _434 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_434] == mem[_434 + 12 len 20]
        if mem[_434 + 12 len 20]:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = arg3
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_490] == mem[_490 + 12 len 20]
            if mem[_490 + 12 len 20]:
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _526 = mem[64]
                mem[mem[64]] = 2
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[mem[64] + 100] = arg1
                mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_526]:
                    revert with 'NH{q', 50
                mem[_526 + 32] = ext_call.return_data[18 len 14]
                if 1 >= mem[_526]:
                    revert with 'NH{q', 50
                mem[_526 + 64] = ext_call.return_data[50 len 14]
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[_526 + (2 * ceil32(return_data.size)) + 96] = 2
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                mem[_526 + (2 * ceil32(return_data.size)) + 196] = arg1
                mem[_526 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[_526 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_526 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[_526 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_526 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[_526 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[_526 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                mem[_526 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _526 + (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_526 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 'NH{q', 50
                if mem[_526 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                    if 1 >= mem[_526]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_526]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[32]) > arg5:
                        if owner != msg.sender:
                            mem[_526 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_526 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_526 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_526 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _526 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 'NH{q', 50
                        mem[_526 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_526 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_526 + (8 * ceil32(return_data.size)) + 228] = 64
                        _939 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        mem[_526 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        s = 0
                        t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                        u = _526 + (8 * ceil32(return_data.size)) + 292
                        while s < _939:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_526 + (8 * ceil32(return_data.size)) + 260 len (32 * _939) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_526 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _526 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1241 = mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _526 + (8 * ceil32(return_data.size)) + return_data.size + 192
                        _1253 = mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if _526 + (10 * ceil32(return_data.size)) + floor32(mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _526 + (10 * ceil32(return_data.size)) + floor32(mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_526 + (10 * ceil32(return_data.size)) + 192] = mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        require _1241 + (32 * _1253) + 32 <= return_data.size
                        s = 0
                        t = _526 + (8 * ceil32(return_data.size)) + _1241 + 224
                        u = _526 + (10 * ceil32(return_data.size)) + 224
                        while s < _1253:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _1253 < 1:
                            revert with 'NH{q', 17
                        if _1253 - 1 >= _1253:
                            revert with 'NH{q', 50
                        _1757 = mem[(32 * _1253 - 1) + _526 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _1825 = mem[64]
                        mem[mem[64]] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_1825]:
                            revert with 'NH{q', 50
                        mem[_1825 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_1825]:
                            revert with 'NH{q', 50
                        mem[_1825 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_1825 + (2 * ceil32(return_data.size)) + 96] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[_1825 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_1825 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_1825 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1825 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_1825 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1825 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_1825 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_1825 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_1825 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1825 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1825 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if mem[_1825 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_1825]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1825]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > _1757:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_1825]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_1825]:
                                revert with 'NH{q', 50
                            if ext_call.return_data[18 len 14] > _1757:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                else:
                    if 0 >= mem[_526]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_526]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] > arg5:
                        if owner != msg.sender:
                            mem[_526 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_526 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_526 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_526 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _526 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 'NH{q', 50
                        mem[_526 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_526 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_526 + (8 * ceil32(return_data.size)) + 228] = 64
                        _941 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        mem[_526 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        s = 0
                        t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                        u = _526 + (8 * ceil32(return_data.size)) + 292
                        while s < _941:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_526 + (8 * ceil32(return_data.size)) + 260 len (32 * _941) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_526 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _526 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1242 = mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < _526 + (8 * ceil32(return_data.size)) + return_data.size + 192
                        _1254 = mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if _526 + (10 * ceil32(return_data.size)) + floor32(mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _526 + (10 * ceil32(return_data.size)) + floor32(mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_526 + (10 * ceil32(return_data.size)) + 192] = mem[_526 + (8 * ceil32(return_data.size)) + mem[_526 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        require _1242 + (32 * _1254) + 32 <= return_data.size
                        s = 0
                        t = _526 + (8 * ceil32(return_data.size)) + _1242 + 224
                        u = _526 + (10 * ceil32(return_data.size)) + 224
                        while s < _1254:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _1254 < 1:
                            revert with 'NH{q', 17
                        if _1254 - 1 >= _1254:
                            revert with 'NH{q', 50
                        _1758 = mem[(32 * _1254 - 1) + _526 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _1826 = mem[64]
                        mem[mem[64]] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_1826]:
                            revert with 'NH{q', 50
                        mem[_1826 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_1826]:
                            revert with 'NH{q', 50
                        mem[_1826 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_1826 + (2 * ceil32(return_data.size)) + 96] = 2
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg4 >= exchangesFactories.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        mem[_1826 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_1826 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_1826 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1826 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_1826 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1826 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_1826 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_1826 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_1826 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1826 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1826 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 'NH{q', 50
                        if mem[_1826 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_1826]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1826]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > _1758:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_1826]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_1826]:
                                revert with 'NH{q', 50
                            if ext_call.return_data[18 len 14] > _1758:
                                if idx >= arg2.length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _610 = mem[(32 * arg2.length + 1) + 256]
    idx = 0
    while idx < _610:
        if idx >= mem[(32 * arg2.length + 1) + 256]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = 0
        else:
            if 0 >= mem[(32 * arg2.length + 1) + 128]:
                revert with 'NH{q', 50
            mem[(32 * arg2.length + 1) + 160] = arg1
            if idx >= mem[(32 * arg2.length + 1) + 256]:
                revert with 'NH{q', 50
            if 1 >= mem[(32 * arg2.length + 1) + 128]:
                revert with 'NH{q', 50
            mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
            if 2 >= mem[(32 * arg2.length + 1) + 128]:
                revert with 'NH{q', 50
            mem[(32 * arg2.length + 1) + 224] = arg3
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 'NH{q', 50
            mem[0] = 1
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg5
            mem[mem[64] + 36] = 64
            _749 = mem[(32 * arg2.length + 1) + 128]
            mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
            s = 0
            t = (32 * arg2.length + 1) + 160
            u = mem[64] + 100
            while s < _749:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(exchangesRouters[arg4])
            staticcall exchangesRouters[arg4].getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg5, 64, mem[mem[64] + 68 len (32 * _749) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1216 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1240 = mem[_1216]
            require mem[_1216] <= test266151307()
            require _1216 + mem[_1216] + 31 < _1216 + return_data.size
            _1252 = mem[_1216 + mem[_1216]]
            if mem[_1216 + mem[_1216]] > test266151307():
                revert with 'NH{q', 65
            if _1216 + ceil32(return_data.size) + floor32(mem[_1216 + mem[_1216]]) + 1 > test266151307() or floor32(mem[_1216 + mem[_1216]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1216 + ceil32(return_data.size) + floor32(mem[_1216 + mem[_1216]]) + 1
            mem[_1216 + ceil32(return_data.size)] = _1252
            require _1240 + (32 * _1252) + 32 <= return_data.size
            s = 0
            t = _1216 + _1240 + 32
            u = _1216 + ceil32(return_data.size) + 32
            while s < _1252:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _1252 < 1:
                revert with 'NH{q', 17
            if _1252 - 1 >= _1252:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[(32 * _1252 - 1) + _1216 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _658 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_658 + 32 len 64] = call.data[calldata.size len 64]
    if 1 >= mem[_658]:
        revert with 'NH{q', 50
    mem[_658 + 64] = 0
    _1154 = mem[96]
    idx = 0
    while idx < _1154:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_658]:
            revert with 'NH{q', 50
        if mem[_658 + 64] < mem[(32 * idx) + 128]:
            if 0 >= mem[_658]:
                revert with 'NH{q', 50
            mem[_658 + 32] = idx
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_658]:
                revert with 'NH{q', 50
            mem[_658 + 64] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _1228 = mem[_658]
    mem[mem[64] + 32] = mem[_658]
    mem[mem[64] + 64 len 32 * _1228] = mem[_658 + 32 len 32 * _1228]
    return 32, mem[mem[64] + 32 len (32 * _1228) + 32]
}



}
