contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(address arg1, uint256 arg2)
#
address owner;
array of address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPaths(address[][] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _13 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32
        mem[_13] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + (32 * cd[(arg1 + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = arg1 + cd[s] + 68
        w = _13 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _13
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        stor1.length++
        mem[0] = 1
        _26 = mem[mem[(32 * idx) + 128]]
        uint256(stor1[stor1.length]) = mem[mem[(32 * idx) + 128]]
        mem[0] = sha3(1) + stor1.length
        if not _26:
            s = sha3(sha3(1) + stor1.length)
            while sha3(sha3(1) + stor1.length) + uint256(stor1[stor1.length]) > s:
                stor[s] = 0
                s = s + 1
                continue 
        else:
            s = sha3(sha3(1) + stor1.length)
            t = mem[(32 * idx) + 128] + 32
            while mem[(32 * idx) + 128] + (32 * _26) + 32 > t:
                stor[s] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                continue 
            t = s
            while sha3(sha3(1) + stor1.length) + uint256(stor1[stor1.length]) > t:
                stor[t] = 0
                t = t + 1
                continue 
        idx = idx + 1
        continue 
}

function sub_7262e880(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _28 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_28] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _28 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _28
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _52 = mem[96]
    idx = 0
    while idx < _52:
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        require mem[_55] == mem[_55]
        mem[mem[64] + 4] = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
        mem[mem[64] + 36] = _56
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, _56
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_59] == bool(mem[_59])
        if _56 + 1 < _56:
            revert with 0, 'SafeMath: addition overflow'
        require idx < mem[96]
        _63 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _56
        mem[mem[64] + 36] = _56 + 1
        mem[mem[64] + 68] = 160
        _66 = mem[_63]
        mem[mem[64] + 164] = mem[_63]
        s = 0
        t = _63 + 32
        u = mem[64] + 196
        while s < _66:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 120
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _56, _56 + 1, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * _66) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _77 = mem[_76]
        require mem[_76] <= test266151307()
        require _76 + mem[_76] + 31 < _76 + return_data.size
        _78 = mem[_76 + mem[_76]]
        require mem[_76 + mem[_76]] <= test266151307()
        require _76 + ceil32(return_data.size) + (32 * mem[_76 + mem[_76]]) + 32 <= test266151307() and (32 * mem[_76 + mem[_76]]) + 32 >= 0
        mem[64] = _76 + ceil32(return_data.size) + (32 * mem[_76 + mem[_76]]) + 32
        mem[_76 + ceil32(return_data.size)] = _78
        require _77 + (32 * _78) + 32 <= return_data.size
        s = 0
        t = _76 + _77 + 32
        u = _76 + ceil32(return_data.size) + 32
        while s < _78:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        idx = idx + 1
        continue 
}

function sub_ac64baef(?) payable {
    mem[96] = 96
    s = 96
    idx = 10
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[420] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 416
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = 1
        _731 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor1[idx])) + 32
        mem[_731] = uint256(stor1[idx])
        if not uint256(stor1[idx]):
            _734 = mem[64]
            mem[mem[64]] = uint256(stor1[idx])
            mem[64] = mem[64] + (32 * uint256(stor1[idx])) + 32
            if not uint256(stor1[idx]):
                require 0 < mem[_734]
                mem[_734 + 32] = ext_call.return_data[0]
                t = 0
                while t < uint256(stor1[idx]) - 1:
                    require t < mem[_731]
                    _1455 = mem[(32 * t) + _731 + 32]
                    require t + 1 < mem[_731]
                    _1462 = mem[(32 * t + 1) + _731 + 32]
                    if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                        if not mem[(32 * t) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1520 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_1462)
                            _1548 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1550 = sha3(mem[_1548 + 32 len mem[_1548]])
                            mem[_1520 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1520 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1520 + 125] = _1550
                            mem[_1520 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1520 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1550, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1550, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1520 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1520 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1521 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_1455)
                            _1552 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1554 = sha3(mem[_1552 + 32 len mem[_1552]])
                            mem[_1521 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1521 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1521 + 125] = _1554
                            mem[_1521 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1521 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1554, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1554, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1521 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1521 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_1455) == address(_1455):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                    else:
                        if not mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1522 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_1462)
                            _1556 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1558 = sha3(mem[_1556 + 32 len mem[_1556]])
                            mem[_1522 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1522 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1522 + 125] = _1558
                            mem[_1522 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1522 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1558, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1558, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1522 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1522 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1523 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_1455)
                            _1560 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1562 = sha3(mem[_1560 + 32 len mem[_1560]])
                            mem[_1523 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1523 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1523 + 125] = _1562
                            mem[_1523 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1523 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1562, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1562, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1523 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1523 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_1455) == address(_1462):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                    t = t + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_734]
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_734]
                if mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32] <= ext_call.return_data[0]:
                    if mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _1495 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_1495 + 64] = 0
                    _2176 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _2176
                else:
                    _1475 = mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32]
                    require idx < stor1.length
                    mem[0] = 1
                    require uint256(stor1[idx]) - 1 < mem[_734]
                    if mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _1501 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_1501 + 64] = _1475 - ext_call.return_data[0]
                    _2175 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _2175
            else:
                mem[_734 + 32 len 32 * uint256(stor1[idx])] = code.data[9757 len 32 * uint256(stor1[idx])]
                require 0 < mem[_734]
                mem[_734 + 32] = ext_call.return_data[0]
                t = 0
                while t < uint256(stor1[idx]) - 1:
                    require t < mem[_731]
                    _1457 = mem[(32 * t) + _731 + 32]
                    require t + 1 < mem[_731]
                    _1465 = mem[(32 * t + 1) + _731 + 32]
                    if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                        if not mem[(32 * t) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1524 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_1465)
                            _1564 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1566 = sha3(mem[_1564 + 32 len mem[_1564]])
                            mem[_1524 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1524 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1524 + 125] = _1566
                            mem[_1524 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1524 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1566, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1566, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1524 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1524 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1525 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_1457)
                            _1568 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1570 = sha3(mem[_1568 + 32 len mem[_1568]])
                            mem[_1525 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1525 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1525 + 125] = _1570
                            mem[_1525 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1525 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1570, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1570, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1525 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1525 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_1457) == address(_1457):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                    else:
                        if not mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1526 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_1465)
                            _1572 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1574 = sha3(mem[_1572 + 32 len mem[_1572]])
                            mem[_1526 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1526 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1526 + 125] = _1574
                            mem[_1526 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1526 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1574, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1574, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1526 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1526 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _1527 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_1457)
                            _1576 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _1578 = sha3(mem[_1576 + 32 len mem[_1576]])
                            mem[_1527 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_1527 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_1527 + 125] = _1578
                            mem[_1527 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_1527 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _1578, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _1578, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_1527 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1527 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_1457) == address(_1465):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_734]
                                mem[(32 * t + 1) + _734 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_734]
                                    mem[(32 * t + 1) + _734 + 32] = 0
                                else:
                                    require t < mem[_734]
                                    if not mem[(32 * t) + _734 + 32]:
                                        require t + 1 < mem[_734]
                                        mem[(32 * t + 1) + _734 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_734]
                                            mem[(32 * t + 1) + _734 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_734]
                                                mem[(32 * t + 1) + _734 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _734 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_734]
                                                    mem[(32 * t + 1) + _734 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _734 + 32]
                                                    if 997 * mem[(32 * t) + _734 + 32] / mem[(32 * t) + _734 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _734 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _734 + 32]
                                                        if 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _734 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _734 + 32]
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _734 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                                                            require t + 1 < mem[_734]
                                                            mem[(32 * t + 1) + _734 + 32] = 997 * mem[(32 * t) + _734 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _734 + 32])
                    t = t + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_734]
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_734]
                if mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32] <= ext_call.return_data[0]:
                    if mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _1497 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_1497 + 64] = 0
                    _2178 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _2178
                else:
                    _1478 = mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32]
                    require idx < stor1.length
                    mem[0] = 1
                    require uint256(stor1[idx]) - 1 < mem[_734]
                    if mem[(32 * uint256(stor1[idx]) - 1) + _734 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _1505 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_1505 + 64] = _1478 - ext_call.return_data[0]
                    _2177 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _2177
        else:
            mem[0] = sha3(1) + idx
            mem[_731 + 32] = address(stor1[idx])
            t = _731 + 32
            u = sha3(mem[0])
            while _731 + (32 * uint256(stor1[idx])) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            _2165 = mem[_731]
            _2166 = mem[64]
            mem[mem[64]] = mem[_731]
            mem[64] = mem[64] + (32 * _2165) + 32
            if not _2165:
                require 0 < mem[_2166]
                mem[_2166 + 32] = ext_call.return_data[0]
                _2883 = mem[_731]
                t = 0
                while t < _2883 - 1:
                    require t < mem[_731]
                    _2887 = mem[(32 * t) + _731 + 32]
                    require t + 1 < mem[_731]
                    _2893 = mem[(32 * t + 1) + _731 + 32]
                    if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                        if not mem[(32 * t) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2949 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_2893)
                            _2977 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2979 = sha3(mem[_2977 + 32 len mem[_2977]])
                            mem[_2949 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2949 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2949 + 125] = _2979
                            mem[_2949 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2949 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _2979, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _2979, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2949 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2949 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2950 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_2887)
                            _2981 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2983 = sha3(mem[_2981 + 32 len mem[_2981]])
                            mem[_2950 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2950 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2950 + 125] = _2983
                            mem[_2950 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2950 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _2983, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _2983, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2950 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2950 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_2887) == address(_2887):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                    else:
                        if not mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2951 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_2893)
                            _2985 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2987 = sha3(mem[_2985 + 32 len mem[_2985]])
                            mem[_2951 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2951 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2951 + 125] = _2987
                            mem[_2951 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2951 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _2987, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _2987, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2951 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2951 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2952 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_2887)
                            _2989 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2991 = sha3(mem[_2989 + 32 len mem[_2989]])
                            mem[_2952 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2952 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2952 + 125] = _2991
                            mem[_2952 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2952 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _2991, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _2991, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2952 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2952 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_2887) == address(_2893):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                    _2883 = mem[_731]
                    t = t + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_2166]
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_2166]
                if mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32] <= ext_call.return_data[0]:
                    if mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _2924 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_2924 + 64] = 0
                    _3594 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _3594
                else:
                    _2905 = mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32]
                    require idx < stor1.length
                    mem[0] = 1
                    require uint256(stor1[idx]) - 1 < mem[_2166]
                    if mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _2930 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_2930 + 64] = _2905 - ext_call.return_data[0]
                    _3593 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _3593
            else:
                mem[_2166 + 32 len 32 * _2165] = code.data[9757 len 32 * _2165]
                require 0 < mem[_2166]
                mem[_2166 + 32] = ext_call.return_data[0]
                _2884 = mem[_731]
                t = 0
                while t < _2884 - 1:
                    require t < mem[_731]
                    _2889 = mem[(32 * t) + _731 + 32]
                    require t + 1 < mem[_731]
                    _2896 = mem[(32 * t + 1) + _731 + 32]
                    if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                        if not mem[(32 * t) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2953 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_2896)
                            _2993 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2995 = sha3(mem[_2993 + 32 len mem[_2993]])
                            mem[_2953 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2953 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2953 + 125] = _2995
                            mem[_2953 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2953 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _2995, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _2995, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2953 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2953 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2954 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_2889)
                            _2997 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _2999 = sha3(mem[_2997 + 32 len mem[_2997]])
                            mem[_2954 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2954 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2954 + 125] = _2999
                            mem[_2954 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2954 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _2999, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _2999, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2954 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2954 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_2889) == address(_2889):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                    else:
                        if not mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * t) + _731 + 44 len 20] == mem[(32 * t + 1) + _731 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t) + _731 + 44 len 20] < mem[(32 * t + 1) + _731 + 44 len 20]:
                            if not mem[(32 * t) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2955 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + _731 + 32])
                            mem[mem[64] + 52] = address(_2896)
                            _3001 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3003 = sha3(mem[_3001 + 32 len mem[_3001]])
                            mem[_2955 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2955 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2955 + 125] = _3003
                            mem[_2955 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2955 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _3003, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _3003, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2955 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2955 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * t + 1) + _731 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _2956 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t + 1) + _731 + 32])
                            mem[mem[64] + 52] = address(_2889)
                            _3005 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3007 = sha3(mem[_3005 + 32 len mem[_3005]])
                            mem[_2956 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_2956 + 105] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
                            mem[_2956 + 125] = _3007
                            mem[_2956 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                            mem[_2956 + 72] = 85
                            require ext_code.size(address(sha3(0, 17241416772799840749, _3007, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, _3007, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_2956 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2956 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_2889) == address(_2896):
                            if ext_call.return_data[18 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[18 len 14]
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require t + 1 < mem[_2166]
                                mem[(32 * t + 1) + _2166 + 32] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require t + 1 < mem[_2166]
                                    mem[(32 * t + 1) + _2166 + 32] = 0
                                else:
                                    require t < mem[_2166]
                                    if not mem[(32 * t) + _2166 + 32]:
                                        require t + 1 < mem[_2166]
                                        mem[(32 * t + 1) + _2166 + 32] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require t + 1 < mem[_2166]
                                            mem[(32 * t + 1) + _2166 + 32] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require t + 1 < mem[_2166]
                                                mem[(32 * t + 1) + _2166 + 32] = 0
                                            else:
                                                if not mem[(32 * t) + _2166 + 32]:
                                                    require ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require t + 1 < mem[_2166]
                                                    mem[(32 * t + 1) + _2166 + 32] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    require mem[(32 * t) + _2166 + 32]
                                                    if 997 * mem[(32 * t) + _2166 + 32] / mem[(32 * t) + _2166 + 32] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * t) + _2166 + 32]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                    else:
                                                        require 997 * mem[(32 * t) + _2166 + 32]
                                                        if 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * t) + _2166 + 32] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * t) + _2166 + 32]
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / 997 * mem[(32 * t) + _2166 + 32]
                                                        else:
                                                            require ext_call.return_data[50 len 14]
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                                                            require t + 1 < mem[_2166]
                                                            mem[(32 * t + 1) + _2166 + 32] = 997 * mem[(32 * t) + _2166 + 32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + _2166 + 32])
                    _2884 = mem[_731]
                    t = t + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_2166]
                require idx < stor1.length
                mem[0] = 1
                require uint256(stor1[idx]) - 1 < mem[_2166]
                if mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32] <= ext_call.return_data[0]:
                    if mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _2926 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_2926 + 64] = 0
                    _3596 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _3596
                else:
                    _2908 = mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32]
                    require idx < stor1.length
                    mem[0] = 1
                    require uint256(stor1[idx]) - 1 < mem[_2166]
                    if mem[(32 * uint256(stor1[idx]) - 1) + _2166 + 32] <= ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= 9:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < stor1.length
                    mem[0] = 1
                    _2934 = mem[64]
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 96] = uint256(stor1[idx])
                    mem[0] = sha3(1) + idx
                    t = 0
                    u = sha3(mem[0])
                    v = mem[64] + 128
                    while t < uint256(stor1[idx]):
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    mem[_2934 + 64] = _2908 - ext_call.return_data[0]
                    _3595 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    require s < 10
                    mem[(32 * s) + 96] = _3595
        idx = idx + 1
        s = s + 1
        continue 
    _729 = mem[64]
    mem[mem[64]] = 32
    idx = 0
    s = 96
    t = mem[64] + 352
    u = mem[64] + 32
    while idx < 10:
        mem[u] = t + -_729 - 32
        _1452 = mem[s]
        _1466 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1466:
            mem[t + v + 32] = mem[_1452 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1466) > _1466:
            mem[t + _1466 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_1466) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
