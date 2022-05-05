contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint8 sub_362b426d;

function sub_362b426d(?) payable {
    if sub_362b426d >= 3:
        revert with 'NH{q', 33
    return sub_362b426d
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_88435d84(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_362b426d = 0
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = arg1
}

function sub_513f08e2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function withdrawBnb(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
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

function sub_bc83df1e(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == address(arg6)
    require arg7 == arg7
    require arg8 == arg8
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    mem[96] = 2
    mem[64] = 192
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    idx = 0
    while idx < arg8:
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = arg5
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 196
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = address(arg6)
        mem[mem[64] + 132] = arg7
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, 160, address(arg6), arg7, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c2bf510c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    idx = 0
    while idx < cd[196]:
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        s = 0
        t = cd[36] + 36
        u = mem[64] + 196
        while s < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = address(cd[132])
        mem[mem[64] + 132] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(cd[132]), cd[164]
        if not ext_call.success:
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d8ef9bef(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    idx = 0
    while idx < ('cd', 132).length:
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        s = 0
        while s < cd[196]:
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 36).length
            t = 0
            u = cd[36] + 36
            v = mem[64] + 196
            while t < ('cd', 36).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[mem[64] + 132] = cd[164]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[68], cd[100], Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(cd[((32 * idx) + cd[132] + 36)]), cd[164]
            if not ext_call.success:
            _29 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _31 = mem[_29]
            require mem[_29] <= test266151307()
            require _29 + mem[_29] + 31 < _29 + return_data.size
            _32 = mem[_29 + mem[_29]]
            if mem[_29 + mem[_29]] > test266151307():
                revert with 'NH{q', 65
            if _29 + ceil32(return_data.size) + floor32(mem[_29 + mem[_29]]) + 1 > test266151307() or floor32(mem[_29 + mem[_29]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _29 + ceil32(return_data.size) + floor32(mem[_29 + mem[_29]]) + 1
            mem[_29 + ceil32(return_data.size)] = _32
            require _31 + (32 * _32) + 32 <= return_data.size
            idx = 0
            t = _29 + _31 + 32
            u = _29 + ceil32(return_data.size) + 32
            while idx < _32:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_17c8cca5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    if cd[(cd[4] + ('cd', 4)[0] + 4)] < 1:
        revert with 'NH{q', 17
    if cd[(cd[4] + ('cd', 4)[0] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[0] + 4)]:
        revert with 'NH{q', 50
    require cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)] == address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)])
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
    idx = var125004
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require ('cd', 4)[3] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
        if idx >= cd[(cd[4] + ('cd', 4)[3] + 4)]:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + ('cd', 4)[3] + 36)] == address(cd[((32 * idx) + cd[4] + ('cd', 4)[3] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[3] + 36)])
        require ext_code.size(address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]))
        staticcall address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + ('cd', 4)[3] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_42]
        require mem[_42] == mem[_42]
        if mem[_42] >= 0 and ('cd', 4)[5] < mem[_42] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if mem[_42] < 0 and ('cd', 4)[5] > mem[_42] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if not ('cd', 4)[2]:
            revert with 'NH{q', 18
        if ('cd', 4)[5] - mem[_42] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ('cd', 4)[2] == -1:
            revert with 'NH{q', 17
        if ('cd', 4)[5] - mem[_42] / ('cd', 4)[2] >= 0:
            s = 0
            while s < ('cd', 4)[5] - _43 / ('cd', 4)[2]:
                require ('cd', 4)[0] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('cd', 4)[1]
                mem[mem[64] + 36] = ('cd', 4)[2]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[4] + ('cd', 4)[0] + 4)]
                t = 0
                u = cd[4] + ('cd', 4)[0] + 36
                v = mem[64] + 196
                while t < cd[(cd[4] + ('cd', 4)[0] + 4)]:
                    require cd[u] == address(cd[u])
                    mem[v] = address(cd[u])
                    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[3] + 36)])
                mem[mem[64] + 132] = ('cd', 4)[4]
                require ext_code.size(address(('cd', 4).length))
                call address(('cd', 4).length).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ('cd', 4)[1], ('cd', 4)[2], Array(len=cd[(cd[4] + ('cd', 4)[0] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]), address(cd[((32 * idx) + cd[4] + ('cd', 4)[3] + 36)]), ('cd', 4)[4]
                if not ext_call.success:
                _61 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _63 = mem[_61]
                require mem[_61] <= test266151307()
                require _61 + mem[_61] + 31 < _61 + return_data.size
                _64 = mem[_61 + mem[_61]]
                if mem[_61 + mem[_61]] > test266151307():
                    revert with 'NH{q', 65
                if _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1 > test266151307() or floor32(mem[_61 + mem[_61]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1
                mem[_61 + ceil32(return_data.size)] = _64
                require _63 + (32 * _64) + 32 <= return_data.size
                idx = 0
                t = _61 + _63 + 32
                u = _61 + ceil32(return_data.size) + 32
                while idx < _64:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if s == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        require ('cd', 4)[3] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[3] + 4)])
        idx = idx + 1
        continue 
}

function sub_92c8124e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 288
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    if sub_362b426d > 2:
        revert with 'NH{q', 33
    if sub_362b426d == 1:
        revert with 0, 'Woot: rpmn!'
    if sub_362b426d > 2:
        revert with 'NH{q', 33
    if sub_362b426d == 2:
        require ('cd', 4).length == address(('cd', 4).length)
        require ('cd', 4)[0] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'Wut?'
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
            require cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)] == address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)])
            s = 0
            while s < ('cd', 4)[7]:
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('cd', 4)[3]
                mem[mem[64] + 36] = ('cd', 4)[4]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[4] + ('cd', 4)[0] + 4)]
                t = 0
                u = cd[4] + ('cd', 4)[0] + 36
                v = mem[64] + 196
                while t < cd[(cd[4] + ('cd', 4)[0] + 4)]:
                    require cd[u] == address(cd[u])
                    mem[v] = address(cd[u])
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)])
                mem[mem[64] + 132] = ('cd', 4)[6]
                require ext_code.size(address(('cd', 4).length))
                call address(('cd', 4).length).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ('cd', 4)[3], ('cd', 4)[4], Array(len=cd[(cd[4] + ('cd', 4)[0] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]), address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)]), ('cd', 4)[6]
                if not ext_call.success:
                _135 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _139 = mem[_135]
                require mem[_135] <= test266151307()
                require _135 + mem[_135] + 31 < _135 + return_data.size
                _140 = mem[_135 + mem[_135]]
                if mem[_135 + mem[_135]] > test266151307():
                    revert with 'NH{q', 65
                if _135 + ceil32(return_data.size) + floor32(mem[_135 + mem[_135]]) + 1 > test266151307() or floor32(mem[_135 + mem[_135]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _135 + ceil32(return_data.size) + floor32(mem[_135 + mem[_135]]) + 1
                mem[_135 + ceil32(return_data.size)] = _140
                require _139 + (32 * _140) + 32 <= return_data.size
                idx = 0
                t = _135 + _139 + 32
                u = _135 + ceil32(return_data.size) + 32
                while idx < _140:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    if 0 >= cd[(cd[4] + ('cd', 4)[0] + 4)]:
        revert with 'NH{q', 50
    require cd[(cd[4] + ('cd', 4)[0] + 36)] == address(cd[(cd[4] + ('cd', 4)[0] + 36)])
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    if cd[(cd[4] + ('cd', 4)[0] + 4)] < 1:
        revert with 'NH{q', 17
    if cd[(cd[4] + ('cd', 4)[0] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[0] + 4)]:
        revert with 'NH{q', 50
    require cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)] == address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)])
    mem[100] = this.address
    require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 36)]))
    staticcall address(cd[(cd[4] + ('cd', 4)[0] + 36)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 36
    t = ceil32(return_data.size) + 292
    while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = ('cd', 4)[6]
    require ext_code.size(address(('cd', 4).length))
    call address(('cd', 4).length).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ('cd', 4)[1], 0, 160, address(this.address), ('cd', 4)[6], cd[(cd[4] + ('cd', 4)[0] + 4)], mem[ceil32(return_data.size) + 292 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]))
    staticcall address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    if cd[(cd[4] + ('cd', 4)[0] + 4)] > test266151307():
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    if not cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require ('cd', 4)[0] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
        idx = var214004
        while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
            require ('cd', 4)[0] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
            if idx >= cd[(cd[4] + ('cd', 4)[0] + 4)]:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + ('cd', 4)[0] + 36)] == address(cd[((32 * idx) + cd[4] + ('cd', 4)[0] + 36)])
            require ('cd', 4)[0] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
            if cd[(cd[4] + ('cd', 4)[0] + 4)] < 1:
                revert with 'NH{q', 17
            if cd[(cd[4] + ('cd', 4)[0] + 4)] - 1 < idx:
                revert with 'NH{q', 17
            if cd[(cd[4] + ('cd', 4)[0] + 4)] + -idx - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)] + -idx - 1) + (2 * ceil32(return_data.size)) + 128] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[0] + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            require ('cd', 4)[0] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
            idx = idx + 1
            continue 
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 132] = address(('cd', 4).length)
        mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 164] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]))
        call address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 4).length), ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 132] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 164] = 0
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 196] = 160
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 292] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 324
        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 228] = this.address
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 260] = ('cd', 4)[6]
        require ext_code.size(address(('cd', 4).length))
        call address(('cd', 4).length).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), ('cd', 4)[6], mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 292 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 36)]))
        staticcall address(cd[(cd[4] + ('cd', 4)[0] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 160] = 0
        emit 0x20343ec1: ext_call.return_data[0], 0
        if 0 > ('cd', 4)[2]:
            sub_362b426d = 1
        sub_362b426d = 2
        require ('cd', 4).length == address(('cd', 4).length)
        require ('cd', 4)[0] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) == 1:
            idx = 0
            while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
                require cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)] == address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)])
                s = 0
                while s < ('cd', 4)[7]:
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('cd', 4)[3]
                    mem[mem[64] + 36] = ('cd', 4)[4]
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[4] + ('cd', 4)[0] + 4)]
                    t = 0
                    u = cd[4] + ('cd', 4)[0] + 36
                    v = mem[64] + 196
                    while t < cd[(cd[4] + ('cd', 4)[0] + 4)]:
                        require cd[u] == address(cd[u])
                        mem[v] = address(cd[u])
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)])
                    mem[mem[64] + 132] = ('cd', 4)[6]
                    require ext_code.size(address(('cd', 4).length))
                    call address(('cd', 4).length).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ('cd', 4)[3], ('cd', 4)[4], Array(len=cd[(cd[4] + ('cd', 4)[0] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]), address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)]), ('cd', 4)[6]
                    if not ext_call.success:
                    _306 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _309 = mem[_306]
                    require mem[_306] <= test266151307()
                    require _306 + mem[_306] + 31 < _306 + return_data.size
                    _312 = mem[_306 + mem[_306]]
                    if mem[_306 + mem[_306]] > test266151307():
                        revert with 'NH{q', 65
                    if _306 + ceil32(return_data.size) + floor32(mem[_306 + mem[_306]]) + 1 > test266151307() or floor32(mem[_306 + mem[_306]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _306 + ceil32(return_data.size) + floor32(mem[_306 + mem[_306]]) + 1
                    mem[_306 + ceil32(return_data.size)] = _312
                    require _309 + (32 * _312) + 32 <= return_data.size
                    idx = 0
                    t = _306 + _309 + 32
                    u = _306 + ceil32(return_data.size) + 32
                    while idx < _312:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]
        require ('cd', 4)[0] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
        idx = var215004
        while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
            require ('cd', 4)[0] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
            if idx >= cd[(cd[4] + ('cd', 4)[0] + 4)]:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + ('cd', 4)[0] + 36)] == address(cd[((32 * idx) + cd[4] + ('cd', 4)[0] + 36)])
            require ('cd', 4)[0] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
            if cd[(cd[4] + ('cd', 4)[0] + 4)] < 1:
                revert with 'NH{q', 17
            if cd[(cd[4] + ('cd', 4)[0] + 4)] - 1 < idx:
                revert with 'NH{q', 17
            if cd[(cd[4] + ('cd', 4)[0] + 4)] + -idx - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)] + -idx - 1) + (2 * ceil32(return_data.size)) + 128] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[0] + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            require ('cd', 4)[0] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
            idx = idx + 1
            continue 
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 132] = address(('cd', 4).length)
        mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 164] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]))
        call address(cd[((32 * cd[(cd[4] + ('cd', 4)[0] + 4)] - 1) + cd[4] + ('cd', 4)[0] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 4).length), ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 132] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 164] = 0
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 196] = 160
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 292] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 324
        while idx < mem[(2 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 228] = this.address
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 260] = ('cd', 4)[6]
        require ext_code.size(address(('cd', 4).length))
        call address(('cd', 4).length).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), ('cd', 4)[6], mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 292 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[0] + 36)]))
        staticcall address(cd[(cd[4] + ('cd', 4)[0] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 160] = 0
        emit 0x20343ec1: ext_call.return_data[0], 0
        if 0 > ('cd', 4)[2]:
            sub_362b426d = 1
        sub_362b426d = 2
        require ('cd', 4).length == address(('cd', 4).length)
        require ('cd', 4)[0] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
        require ('cd', 4)[5] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) == 1:
            idx = 0
            while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
                require cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)] == address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)])
                s = 0
                while s < ('cd', 4)[7]:
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('cd', 4)[3]
                    mem[mem[64] + 36] = ('cd', 4)[4]
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[4] + ('cd', 4)[0] + 4)]
                    t = 0
                    u = cd[4] + ('cd', 4)[0] + 36
                    v = mem[64] + 196
                    while t < cd[(cd[4] + ('cd', 4)[0] + 4)]:
                        require cd[u] == address(cd[u])
                        mem[v] = address(cd[u])
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)])
                    mem[mem[64] + 132] = ('cd', 4)[6]
                    require ext_code.size(address(('cd', 4).length))
                    call address(('cd', 4).length).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ('cd', 4)[3], ('cd', 4)[4], Array(len=cd[(cd[4] + ('cd', 4)[0] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]), address(cd[((32 * idx) + cd[4] + ('cd', 4)[5] + 36)]), ('cd', 4)[6]
                    if not ext_call.success:
                    _307 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _311 = mem[_307]
                    require mem[_307] <= test266151307()
                    require _307 + mem[_307] + 31 < _307 + return_data.size
                    _313 = mem[_307 + mem[_307]]
                    if mem[_307 + mem[_307]] > test266151307():
                        revert with 'NH{q', 65
                    if _307 + ceil32(return_data.size) + floor32(mem[_307 + mem[_307]]) + 1 > test266151307() or floor32(mem[_307 + mem[_307]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _307 + ceil32(return_data.size) + floor32(mem[_307 + mem[_307]]) + 1
                    mem[_307 + ceil32(return_data.size)] = _313
                    require _311 + (32 * _313) + 32 <= return_data.size
                    idx = 0
                    t = _307 + _311 + 32
                    u = _307 + ceil32(return_data.size) + 32
                    while idx < _313:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    ('iszero', ('eq', ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))), 1))
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 132] = 32
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 164] = 4
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 196] = 'Wut?'
    revert with memory
      from (4 * ceil32(return_data.size)) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128
       len (7 * ceil32(return_data.size)) + 100
}



}
