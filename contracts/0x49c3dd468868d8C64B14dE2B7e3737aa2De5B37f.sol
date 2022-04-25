contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
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

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c974a3d9(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg6))
    staticcall address(arg6).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg7))
    staticcall address(arg7).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg7))
    staticcall address(arg7).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg7))
    staticcall address(arg7).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if 3 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 4 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(address(arg4))
    staticcall address(arg4).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg4))
    staticcall address(arg4).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg6):
        require ext_code.size(address(arg3))
        if ext_call.return_data[12 len 20] == address(arg6):
            call address(arg3).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0], address(this.address), 128, 224, address(arg1), address(arg2), address(arg4), address(arg5), address(arg6), address(arg7), (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0]
        else:
            call address(arg3).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 224, address(arg1), address(arg2), address(arg4), address(arg5), address(arg6), address(arg7), (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0]
    else:
        if ext_call.return_data[12 len 20] == address(arg6):
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0]:
                revert with 0, 'Only 1 amount can be 0'
            require ext_code.size(address(arg3))
            call address(arg3).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0], address(this.address), 128, 224, address(arg1), address(arg2), address(arg4), address(arg5), address(arg6), address(arg7), (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0]
        else:
            require ext_code.size(address(arg3))
            call address(arg3).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0], 0, address(this.address), 128, 224, address(arg1), address(arg2), address(arg4), address(arg5), address(arg6), address(arg7), (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 4 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9764a8ed(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 2
    mem[224] = address(arg4)
    mem[256] = address(arg3)
    mem[292] = msg.sender
    mem[324] = this.address
    mem[356] = arg5
    require ext_code.size(address(arg3))
    call address(arg3).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg5
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TransferFrom Error 1'
    mem[ceil32(return_data.size) + 292] = address(arg1)
    mem[ceil32(return_data.size) + 324] = arg5
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg5
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Buy approval fail'
    mem[(2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = arg5
    mem[(2 * ceil32(return_data.size)) + 324] = 0
    mem[(2 * ceil32(return_data.size)) + 356] = 160
    mem[(2 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _39 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32
    require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
    _40 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 + 288]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg5) >> 32 + 288]) + 289
    mem[(4 * ceil32(return_data.size)) + 288] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _39 + 320
    t = (4 * ceil32(return_data.size)) + 320
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _40:
        revert with 'NH{q', 50
    _62 = mem[(4 * ceil32(return_data.size)) + 352]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _62
    require ext_code.size(address(arg4))
    call address(arg4).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _62
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == bool(mem[_65])
    if not mem[_65]:
        revert with 0, 'Sell approval fail'
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _62
    mem[mem[64] + 36] = arg5
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 224
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _62, arg5, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _81 = mem[_80]
    require mem[_80] <= test266151307()
    require _80 + mem[_80] + 31 < _80 + return_data.size
    _82 = mem[_80 + mem[_80]]
    if mem[_80 + mem[_80]] > test266151307():
        revert with 'NH{q', 65
    if _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1 > test266151307() or floor32(mem[_80 + mem[_80]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1
    mem[_80 + ceil32(return_data.size)] = _82
    require _81 + (32 * _82) + 32 <= return_data.size
    idx = 0
    s = _80 + _81 + 32
    t = _80 + ceil32(return_data.size) + 32
    while idx < _82:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'Unauthorized'
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == cd[(arg4 + 164)]
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(cd[(arg4 + 100)])
    mem[ceil32(return_data.size) + 132] = address(cd[(arg4 + 132)])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(cd[(arg4 + 100)]), address(cd[(arg4 + 132)])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 100)])
        mem[(2 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = address(cd[(arg4 + 132)])
        mem[(2 * ceil32(return_data.size)) + 256] = address(cd[(arg4 + 100)])
        mem[(2 * ceil32(return_data.size)) + 292] = address(cd[(arg4 + 36)])
        mem[(2 * ceil32(return_data.size)) + 324] = cd[(arg4 + 164)]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), cd[(arg4 + 164)]
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = cd[(arg4 + 164)]
        mem[(4 * ceil32(return_data.size)) + 324] = 64
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[(arg4 + 164)], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _51 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
        require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
        _52 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 288]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 288]) + 289
        mem[(6 * ceil32(return_data.size)) + 288] = _52
        require _51 + (32 * _52) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _51 + 320
        t = (6 * ceil32(return_data.size)) + 320
        while idx < _52:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _52:
            revert with 'NH{q', 50
        _132 = mem[(6 * ceil32(return_data.size)) + 352]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _132
        mem[mem[64] + 36] = 64
        _137 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = mem[64] + 100
        while idx < _137:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _132, 64, mem[mem[64] + 68 len (32 * _137) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _215 = mem[_212]
        require mem[_212] <= test266151307()
        require _212 + mem[_212] + 31 < _212 + return_data.size
        _216 = mem[_212 + mem[_212]]
        if mem[_212 + mem[_212]] > test266151307():
            revert with 'NH{q', 65
        if _212 + ceil32(return_data.size) + floor32(mem[_212 + mem[_212]]) + 1 > test266151307() or floor32(mem[_212 + mem[_212]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _212 + ceil32(return_data.size) + floor32(mem[_212 + mem[_212]]) + 1
        mem[_212 + ceil32(return_data.size)] = _216
        require _215 + (32 * _216) + 32 <= return_data.size
        idx = 0
        s = _212 + _215 + 32
        t = _212 + ceil32(return_data.size) + 32
        while idx < _216:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _216:
            revert with 'NH{q', 50
        _292 = mem[_212 + ceil32(return_data.size) + 64]
        if mem[_212 + ceil32(return_data.size) + 64] and 97 > -1 / mem[_212 + ceil32(return_data.size) + 64]:
            revert with 'NH{q', 17
        if 97 * mem[_212 + ceil32(return_data.size) + 64] / 100 <= cd[(arg4 + 164)]:
            revert with 0, 'Error 3'
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[(arg4 + 164)]
        mem[mem[64] + 36] = _132
        mem[mem[64] + 68] = 160
        _303 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _303:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], _132, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _303) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _369 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _370 = mem[_369]
        require mem[_369] <= test266151307()
        require _369 + mem[_369] + 31 < _369 + return_data.size
        _371 = mem[_369 + mem[_369]]
        if mem[_369 + mem[_369]] > test266151307():
            revert with 'NH{q', 65
        if _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1 > test266151307() or floor32(mem[_369 + mem[_369]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _369 + ceil32(return_data.size) + floor32(mem[_369 + mem[_369]]) + 1
        mem[_369 + ceil32(return_data.size)] = _371
        require _370 + (32 * _371) + 32 <= return_data.size
        idx = 0
        s = _369 + _370 + 32
        t = _369 + ceil32(return_data.size) + 32
        while idx < _371:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _371:
            revert with 'NH{q', 50
        _435 = mem[_369 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = address(cd[(arg4 + 68)])
        mem[mem[64] + 36] = _435
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), _435
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _441 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_441] == bool(mem[_441])
        require mem[_441]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _435
        mem[mem[64] + 36] = _292
        mem[mem[64] + 68] = 160
        _450 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = mem[64] + 196
        while idx < _450:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _435, _292, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _450) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _496 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _497 = mem[_496]
        require mem[_496] <= test266151307()
        require _496 + mem[_496] + 31 < _496 + return_data.size
        _500 = mem[_496 + mem[_496]]
        if mem[_496 + mem[_496]] > test266151307():
            revert with 'NH{q', 65
        if _496 + ceil32(return_data.size) + floor32(mem[_496 + mem[_496]]) + 1 > test266151307() or floor32(mem[_496 + mem[_496]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _496 + ceil32(return_data.size) + floor32(mem[_496 + mem[_496]]) + 1
        mem[_496 + ceil32(return_data.size)] = _500
        require _497 + (32 * _500) + 32 <= return_data.size
        idx = 0
        s = _496 + _497 + 32
        t = _496 + ceil32(return_data.size) + 32
        while idx < _500:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _500:
            revert with 'NH{q', 50
        _536 = mem[_496 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 164)]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _542 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_542] == bool(mem[_542])
        if _536 < cd[(arg4 + 164)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = tx.origin
        mem[mem[64] + 36] = _536 - cd[(arg4 + 164)]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args tx.origin, _536 - cd[(arg4 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _552 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_552] == bool(mem[_552])
    else:
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).factory() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 100)])
        mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 132)])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[(arg4 + 100)]), address(cd[(arg4 + 132)])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 100)])
        mem[(6 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
        mem[(6 * ceil32(return_data.size)) + 192] = 2
        mem[(6 * ceil32(return_data.size)) + 224] = address(cd[(arg4 + 132)])
        mem[(6 * ceil32(return_data.size)) + 256] = address(cd[(arg4 + 100)])
        mem[(6 * ceil32(return_data.size)) + 292] = address(cd[(arg4 + 36)])
        mem[(6 * ceil32(return_data.size)) + 324] = cd[(arg4 + 164)]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), cd[(arg4 + 164)]
        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 292] = cd[(arg4 + 164)]
        mem[(7 * ceil32(return_data.size)) + 324] = 64
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < mem[(6 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _135 = mem[_134]
        require mem[_134] <= test266151307()
        require _134 + mem[_134] + 31 < _134 + return_data.size
        _136 = mem[_134 + mem[_134]]
        if mem[_134 + mem[_134]] > test266151307():
            revert with 'NH{q', 65
        if _134 + ceil32(return_data.size) + floor32(mem[_134 + mem[_134]]) + 1 > test266151307() or floor32(mem[_134 + mem[_134]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _134 + ceil32(return_data.size) + floor32(mem[_134 + mem[_134]]) + 1
        mem[_134 + ceil32(return_data.size)] = _136
        require _135 + (32 * _136) + 32 <= return_data.size
        idx = 0
        s = _134 + _135 + 32
        t = _134 + ceil32(return_data.size) + 32
        while idx < _136:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _136:
            revert with 'NH{q', 50
        _213 = mem[_134 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _213
        mem[mem[64] + 36] = 64
        _217 = mem[(6 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (6 * ceil32(return_data.size)) + 224
        t = mem[64] + 100
        while idx < _217:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _213, 64, mem[mem[64] + 68 len (32 * _217) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _293 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _294 = mem[_293]
        require mem[_293] <= test266151307()
        require _293 + mem[_293] + 31 < _293 + return_data.size
        _295 = mem[_293 + mem[_293]]
        if mem[_293 + mem[_293]] > test266151307():
            revert with 'NH{q', 65
        if _293 + ceil32(return_data.size) + floor32(mem[_293 + mem[_293]]) + 1 > test266151307() or floor32(mem[_293 + mem[_293]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _293 + ceil32(return_data.size) + floor32(mem[_293 + mem[_293]]) + 1
        mem[_293 + ceil32(return_data.size)] = _295
        require _294 + (32 * _295) + 32 <= return_data.size
        idx = 0
        s = _293 + _294 + 32
        t = _293 + ceil32(return_data.size) + 32
        while idx < _295:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _295:
            revert with 'NH{q', 50
        _367 = mem[_293 + ceil32(return_data.size) + 64]
        if mem[_293 + ceil32(return_data.size) + 64] and 97 > -1 / mem[_293 + ceil32(return_data.size) + 64]:
            revert with 'NH{q', 17
        if 97 * mem[_293 + ceil32(return_data.size) + 64] / 100 <= cd[(arg4 + 164)]:
            revert with 0, 'Error 3'
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[(arg4 + 164)]
        mem[mem[64] + 36] = _213
        mem[mem[64] + 68] = 160
        _376 = mem[(6 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _376:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], _213, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _376) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _438 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _440 = mem[_438]
        require mem[_438] <= test266151307()
        require _438 + mem[_438] + 31 < _438 + return_data.size
        _442 = mem[_438 + mem[_438]]
        if mem[_438 + mem[_438]] > test266151307():
            revert with 'NH{q', 65
        if _438 + ceil32(return_data.size) + floor32(mem[_438 + mem[_438]]) + 1 > test266151307() or floor32(mem[_438 + mem[_438]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _438 + ceil32(return_data.size) + floor32(mem[_438 + mem[_438]]) + 1
        mem[_438 + ceil32(return_data.size)] = _442
        require _440 + (32 * _442) + 32 <= return_data.size
        idx = 0
        s = _438 + _440 + 32
        t = _438 + ceil32(return_data.size) + 32
        while idx < _442:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _442:
            revert with 'NH{q', 50
        _493 = mem[_438 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = address(cd[(arg4 + 68)])
        mem[mem[64] + 36] = _493
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), _493
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_499] == bool(mem[_499])
        require mem[_499]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _493
        mem[mem[64] + 36] = _367
        mem[mem[64] + 68] = 160
        _508 = mem[(6 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (6 * ceil32(return_data.size)) + 224
        t = mem[64] + 196
        while idx < _508:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _493, _367, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _508) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _539 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _541 = mem[_539]
        require mem[_539] <= test266151307()
        require _539 + mem[_539] + 31 < _539 + return_data.size
        _543 = mem[_539 + mem[_539]]
        if mem[_539 + mem[_539]] > test266151307():
            revert with 'NH{q', 65
        if _539 + ceil32(return_data.size) + floor32(mem[_539 + mem[_539]]) + 1 > test266151307() or floor32(mem[_539 + mem[_539]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _539 + ceil32(return_data.size) + floor32(mem[_539 + mem[_539]]) + 1
        mem[_539 + ceil32(return_data.size)] = _543
        require _541 + (32 * _543) + 32 <= return_data.size
        idx = 0
        s = _539 + _541 + 32
        t = _539 + ceil32(return_data.size) + 32
        while idx < _543:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _543:
            revert with 'NH{q', 50
        _563 = mem[_539 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 164)]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _566 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_566] == bool(mem[_566])
        if _563 < cd[(arg4 + 164)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = tx.origin
        mem[mem[64] + 36] = _563 - cd[(arg4 + 164)]
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args tx.origin, _563 - cd[(arg4 + 164)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _570 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_570] == bool(mem[_570])
}



}
