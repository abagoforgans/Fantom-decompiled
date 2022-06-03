contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getCurrentTime = block.timestamp

const sub_54cc95ad(?) = (block.timestamp + (24 * 3600))

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


address wftmAddress;
address sub_9566b6a7Address;
address sub_dacaa9d1Address;
address sub_c4d89833Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;

function sub_9566b6a7(?) payable {
    return sub_9566b6a7Address
}

function sub_c4d89833(?) payable {
    return sub_c4d89833Address
}

function sub_dacaa9d1(?) payable {
    return sub_dacaa9d1Address
}

function wftm() payable {
    return wftmAddress
}

function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function sub_79534397(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 24 * 3600 > -1 / arg1:
        revert with 'NH{q', 17
    if block.timestamp > (-86400 * arg1) - 1:
        revert with 'NH{q', 17
    return (block.timestamp + (24 * 3600 * arg1))
}

function sub_31b0879b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the egg does not precede the chicken'
    if arg2 < arg1:
        revert with 'NH{q', 17
    return (arg2 - arg1)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'only buns'
    if uint8(stor4.field_160):
        revert with 0, 'already initialized'
    sub_dacaa9d1Address = arg1
    Mask(96, 0, stor4.field_160) = 1
    emit Initialized(sub_dacaa9d1Address);
}

function getTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ea693978(?) payable {
    require ext_code.size(sub_9566b6a7Address)
    staticcall sub_9566b6a7Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args sub_c4d89833Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function sub_8c7597a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function sub_b5faa884(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_9566b6a7Address)
    staticcall sub_9566b6a7Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function sub_dbbc47be(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function sub_e0692d12(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args sub_dacaa9d1Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_9566b6a7Address)
    staticcall sub_9566b6a7Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_9566b6a7Address)
    staticcall sub_9566b6a7Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args sub_c4d89833Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] >= 2 * ext_call.return_data[0]:
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0])
    if uint255(ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] * 2 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0] * 2 * ext_call.return_data[0] * ext_call.return_data[0])
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _54 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_54] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _81 = mem[64]
        if mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_81] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_81 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_81 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_54 + 32] = _81
        mem[t] = _54
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _55 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _56 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _55) + 32
    if not _55:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _110 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _113 = mem[mem[(32 * idx) + 128] + 32]
            _114 = mem[64]
            _121 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _121:
                mem[_114 + s] = mem[_113 + s + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_121) <= _121:
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_168] = return_data.size
                    mem[_168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _168
            else:
                mem[_114 + _121] = 0
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_171] = return_data.size
                    mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _171
            if idx == -1:
                revert with 'NH{q', 17
            _106 = mem[96]
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _125 = mem[_56]
        mem[mem[64] + 64] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _125) + 96
        u = mem[64] + 96
        while idx < _125:
            mem[u] = t + -_108 - 96
            _155 = mem[s]
            _166 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _166:
                mem[t + v + 32] = mem[_155 + v + 32]
                v = v + 32
                continue 
            if ceil32(_166) > _166:
                mem[t + _166 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_166) + 32
            u = u + 32
            continue 
    else:
        mem[_56 + 32] = 96
        s = _56 + 32
        idx = _55
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _154 = mem[96]
        idx = 0
        while idx < _154:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _160 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _164 = mem[mem[(32 * idx) + 128] + 32]
            _165 = mem[64]
            _170 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _170:
                mem[_165 + s] = mem[_164 + s + 32]
                _154 = mem[96]
                s = s + 32
                continue 
            if ceil32(_170) <= _170:
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_197] = return_data.size
                    mem[_197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _197
            else:
                mem[_165 + _170] = 0
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_199] = return_data.size
                    mem[_199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _199
            if idx == -1:
                revert with 'NH{q', 17
            _154 = mem[96]
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _176 = mem[_56]
        mem[mem[64] + 64] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _176) + 96
        u = mem[64] + 96
        while idx < _176:
            mem[u] = t + -_158 - 96
            _192 = mem[s]
            _195 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _195:
                mem[t + v + 32] = mem[_192 + v + 32]
                v = v + 32
                continue 
            if ceil32(_195) > _195:
                mem[t + _195 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_195) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
