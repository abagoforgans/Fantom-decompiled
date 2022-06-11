contract main {




// =====================  Runtime code  =====================


#
#  - getAllBalance(address arg1)
#
function _fallback() payable {
    revert
}

function sub_b3b78c30(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * arg1 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * arg1 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * arg1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return 10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
           10^18 * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
}

function sub_8b83b2bb(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).mem[var52003 len 4] with:
            gas gas_remaining wei
           args mem[var52003 + 4 len var52004 - 4]
    mem[var52005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var56002 - var56001 >= 32
    if var60002 >= var60001:
        revert with 0, 'not found'
    mem[ceil32(return_data.size) + 96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = var62001
    require ext_code.size(address(arg1))
    staticcall address(arg1).mem[var64003 len 4] with:
            gas gas_remaining wei
           args mem[var64003 + 4 len var64004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require var68002 - var68001 >= 128
    require mem[var70005] == mem[var70005 + 12 len 20]
    _339 = mem[var70005 + 32]
    require mem[var70005 + 32] <= test266151307()
    require var70005 + mem[var70005 + 32] + 31 < var70006
    _340 = mem[var70005 + mem[var70005 + 32]]
    s = mem[var70005]
    t = mem[var70005]
    u = var70005
    v = var70006
    w = var70009
    while _340 <= test266151307():
        _341 = mem[64]
        if mem[64] + ceil32(ceil32(_340)) + 1 < mem[64] or mem[64] + ceil32(ceil32(_340)) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(_340)) + 1
        mem[_341] = _340
        require u + _339 + _340 + 32 <= v
        idx = 0
        while idx < _340:
            mem[idx + _341 + 32] = mem[idx + u + _339 + 32]
            require s == address(s)
            require mem[u + 32] <= test266151307()
            require u + mem[u + 32] + 31 < v
            _340 = mem[u + mem[u + 32]]
            idx = idx + 32
            continue 
        if ceil32(_340) <= _340:
            require mem[u + 64] == mem[u + 76 len 20]
            require mem[u + 96] == mem[u + 108 len 20]
            if address(t) == address(arg2):
                return w
            if w == -1:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            staticcall address(arg1).poolLength() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if w + 1 >= mem[_384]:
                revert with 0, 'not found'
            mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = w + 1
            require ext_code.size(address(arg1))
            staticcall address(arg1).poolInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args (w + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _396 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_396] == mem[_396 + 12 len 20]
            require mem[_396 + 32] <= test266151307()
            require _396 + mem[_396 + 32] + 31 < _396 + return_data.size
            _340 = mem[_396 + mem[_396 + 32]]
            s = mem[_396]
            t = mem[_396]
            u = _396
            v = _396 + return_data.size
            w = w + 1
            continue 
        mem[_341 + _340 + 32] = 0
        require mem[u + 64] == mem[u + 76 len 20]
        require mem[u + 96] == mem[u + 108 len 20]
        if address(t) == address(arg2):
            return w
        if w == -1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).poolLength() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if w + 1 >= mem[_385]:
            revert with 0, 'not found'
        mem[mem[64]] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = w + 1
        require ext_code.size(address(arg1))
        staticcall address(arg1).poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args (w + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_397] == mem[_397 + 12 len 20]
        require mem[_397 + 32] <= test266151307()
        require _397 + mem[_397 + 32] + 31 < _397 + return_data.size
        _340 = mem[_397 + mem[_397 + 32]]
        s = mem[_397]
        t = mem[_397]
        u = _397
        v = _397 + return_data.size
        w = w + 1
        continue 
    revert with 'NH{q', 65
}



}
