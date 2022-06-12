contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor1;

function getTotalTokens() payable {
    return stor0.length
}

function _fallback() payable {
    revert
}

function getTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 'OUT_OF_BOUNDS'
    if arg2 - arg1 > stor0.length:
        revert with 0, 'OUT_OF_BOUNDS'
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = 0
        while idx < mem[96]:
            if arg1 + idx >= stor0.length:
                revert with 0, 32, 7, 'BAL#0' + 3223552 << 200
            mem[0] = 0
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor[('name', 'stor0', 0) + arg1 + idx]
            idx = idx + 1
            continue 
        mem[(32 * arg2 - arg1) + 128] = 32
        _24 = mem[96]
        mem[(32 * arg2 - arg1) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _24:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * arg2 - arg1) + (32 * _24) + -mem[64] + 192
    mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = 0
    while idx < mem[96]:
        if arg1 + idx >= stor0.length:
            revert with 0, 32, 7, 'BAL#0' + 3223552 << 200
        mem[0] = 0
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('name', 'stor0', 0) + arg1 + idx]
        idx = idx + 1
        continue 
    mem[(32 * arg2 - arg1) + 128] = 32
    _25 = mem[96]
    mem[(32 * arg2 - arg1) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * arg2 - arg1) + (32 * _25) + -mem[64] + 192
}

function create(address arg1, string arg2, string arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg2.length) + 128] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg4 == arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len 5812] = code.data[2593 len 5812]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 5812
    mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32] = arg1
    mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 64] = 128
    mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 160] = arg2.length
    mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) <= arg2.length:
        mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 96] = ceil32(arg2.length) + 160
        _455 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 192] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 224 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) <= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 128] = arg4
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192
            mem[64] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 224
            mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= 5812:
                _1353 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1793 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1795 = sha3(mem[_1793 + 32 len mem[_1793]])
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1795
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1795))):
                        return address(sha3(0, this.address, 0, _1795))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1793]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1793 + 32 len mem[_1793]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1795))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1817 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1819 = sha3(mem[_1817 + 32 len mem[_1817]])
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1819
                    mem[_1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1353 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1819))):
                        return address(sha3(0, this.address, 0, _1819))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1817]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1817 + 32 len mem[_1817]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1819))
            else:
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 0
                _1357 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1796 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1798 = sha3(mem[_1796 + 32 len mem[_1796]])
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1798
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1798))):
                        return address(sha3(0, this.address, 0, _1798))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1796]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1796 + 32 len mem[_1796]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1798))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1820 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1822 = sha3(mem[_1820 + 32 len mem[_1820]])
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1822
                    mem[_1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1357 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1822))):
                        return address(sha3(0, this.address, 0, _1822))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1820]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1820 + 32 len mem[_1820]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1822))
        else:
            mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 224] = 0
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 128] = arg4
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192
            mem[64] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 224
            mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= 5812:
                _1354 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1799 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1801 = sha3(mem[_1799 + 32 len mem[_1799]])
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1801
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1801))):
                        return address(sha3(0, this.address, 0, _1801))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1799]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1799 + 32 len mem[_1799]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1801))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1823 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1825 = sha3(mem[_1823 + 32 len mem[_1823]])
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1825
                    mem[_1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1354 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1825))):
                        return address(sha3(0, this.address, 0, _1825))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1823]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1823 + 32 len mem[_1823]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1825))
            else:
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 0
                _1358 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1802 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1804 = sha3(mem[_1802 + 32 len mem[_1802]])
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1804
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1804))):
                        return address(sha3(0, this.address, 0, _1804))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1802]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1802 + 32 len mem[_1802]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1804))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1826 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1828 = sha3(mem[_1826 + 32 len mem[_1826]])
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1828
                    mem[_1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1358 + ceil32(_455) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1828))):
                        return address(sha3(0, this.address, 0, _1828))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1826]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1826 + 32 len mem[_1826]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1828))
    else:
        mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + arg2.length + 192] = 0
        mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 96] = ceil32(arg2.length) + 160
        _456 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 192] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 224 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) <= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 128] = arg4
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192
            mem[64] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 224
            mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= 5812:
                _1355 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1805 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1807 = sha3(mem[_1805 + 32 len mem[_1805]])
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1807
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1807))):
                        return address(sha3(0, this.address, 0, _1807))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1805]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1805 + 32 len mem[_1805]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1807))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1829 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1831 = sha3(mem[_1829 + 32 len mem[_1829]])
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1831
                    mem[_1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1355 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1831))):
                        return address(sha3(0, this.address, 0, _1831))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1829]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1829 + 32 len mem[_1829]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1831))
            else:
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 0
                _1359 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1808 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1810 = sha3(mem[_1808 + 32 len mem[_1808]])
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1810
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1810))):
                        return address(sha3(0, this.address, 0, _1810))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1808]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1808 + 32 len mem[_1808]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1810))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1832 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1834 = sha3(mem[_1832 + 32 len mem[_1832]])
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1834
                    mem[_1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1359 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1834))):
                        return address(sha3(0, this.address, 0, _1834))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1832]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1832 + 32 len mem[_1832]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1834))
        else:
            mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 224] = 0
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 128] = arg4
            mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192
            mem[64] = ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 224
            mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 256 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= 5812:
                _1356 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1811 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1813 = sha3(mem[_1811 + 32 len mem[_1811]])
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1813
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1813))):
                        return address(sha3(0, this.address, 0, _1813))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1811]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1811 + 32 len mem[_1811]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1813))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1835 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1837 = sha3(mem[_1835 + 32 len mem[_1835]])
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1837
                    mem[_1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1356 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1837))):
                        return address(sha3(0, this.address, 0, _1837))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1835]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1835 + 32 len mem[_1835]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1837))
            else:
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 0
                _1360 = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]
                mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 32 len ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)])]
                if ceil32(mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]) <= mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)]:
                    _1814 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1816 = sha3(mem[_1814 + 32 len mem[_1814]])
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1816
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1816))):
                        return address(sha3(0, this.address, 0, _1816))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1814]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1814 + 32 len mem[_1814]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1816))
                else:
                    mem[ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + 6068] = 0
                    _1838 = mem[64]
                    mem[mem[64]] = mem[floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035)] + ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + -mem[64] + 6036
                    mem[64] = _1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068
                    _1840 = sha3(mem[_1838 + 32 len mem[_1838]])
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6100] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6101] = address(this.address)
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6121] = 0
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6153] = _1840
                    mem[_1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6068] = 85
                    mem[64] = _1360 + ceil32(_456) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + ceil32(arg3.length) + 6035) + 6185
                    if ext_code.size(address(sha3(0, this.address, 0, _1840))):
                        return address(sha3(0, this.address, 0, _1840))
                    if eth.balance(this.address) < 0:
                        revert with 0, 'CREATE2_INSUFFICIENT_BALANCE'
                    if not mem[_1838]:
                        revert with 0, 'CREATE2_BYTECODE_ZERO'
                    create2 contract with 0 wei
                                    salt: 0
                                    code: mem[_1838 + 32 len mem[_1838]]
                    if not address(create2.new_address):
                        revert with 0, 'CREATE2_DEPLOY_FAILED'
                    require address(create2.new_address) == address(sha3(0, this.address, 0, _1840))
    if not stor1[address(create2.new_address)]:
        stor0.length++
        stor0[stor0.length] = address(create2.new_address)
        stor1[address(create2.new_address)] = stor0.length
    emit TokenCreated(address(create2.new_address));
    return address(create2.new_address)
}



}
