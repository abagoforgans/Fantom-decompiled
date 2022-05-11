contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;

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
    stor1 = arg1
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function COIN() payable {
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.WETH() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    return delegate.return_data[12 len 20]
}

function getReserves(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.0x3e99c1e4 with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0], delegate.return_data[32]
}

function factory() payable {
    if stor1:
        return stor1
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.0xc45a0155 with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    return delegate.return_data[12 len 20]
}

function hasPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.0x1246dbf5 with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function coinQuote(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.ethQuote(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64]
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    if stor1:
        delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.getPair(address arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args stor1, address(arg1), arg2
    else:
        delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.0xc45a0155 with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[12 len 20]
        require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
        delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.getPair(address arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args address(delegate.return_data[0]), address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    return delegate.return_data[12 len 20]
}

function getPathForCoinToToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x7dddfe9f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0x170fc2cc67edf2d10afb07e144719d67940564d9)
    delegate 0x170fc2cc67edf2d10afb07e144719d67940564d9.getPathForETHToToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}



}
