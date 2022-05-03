contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf29a21c(?)
#
address owner;
address sub_ba32e624Address;
address sub_a3bf202bAddress;
address sub_242c3c53Address;
address sub_077d66f3Address;
address sub_29dc484aAddress;
address sub_0eebd6a8Address;
address sub_1b85d6deAddress;
address sub_91996877Address;
address sub_7015a9c8Address;
address sub_c472e2c1Address;
address sub_23ba76faAddress;
array of address sub_a5218fd8;

function sub_077d66f3(?) {
    return sub_077d66f3Address
}

function sub_0eebd6a8(?) {
    return sub_0eebd6a8Address
}

function sub_1b85d6de(?) {
    return sub_1b85d6deAddress
}

function sub_23ba76fa(?) {
    return sub_23ba76faAddress
}

function sub_242c3c53(?) {
    return sub_242c3c53Address
}

function sub_29dc484a(?) {
    return sub_29dc484aAddress
}

function sub_7015a9c8(?) {
    return sub_7015a9c8Address
}

function getOwner() {
    return owner
}

function sub_91996877(?) {
    return sub_91996877Address
}

function sub_a3bf202b(?) {
    return sub_a3bf202bAddress
}

function sub_a5218fd8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a5218fd8.length
    return sub_a5218fd8[arg1]
}

function sub_ba32e624(?) {
    return sub_ba32e624Address
}

function sub_c472e2c1(?) {
    return sub_c472e2c1Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function _allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function _approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(this.address)
    staticcall this.address.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) == sub_ba32e624Address:
        call ext_call.return_data[12 len 20] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_5f3e3aef(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == ('cd', 4).length
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == ('cd', 4)[0]
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 289 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 289 < 288:
        revert with 'NH{q', 65
    mem[288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[1] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = 288
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 290 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 290 < 289:
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 290
    mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 289] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[2] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1665 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1
        mem[_1665] = cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[2] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[2] + cd[s] + 68
        w = _1665 + 32
        while u < cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]:
            require cd[v] == uint16(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1665
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 289
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    _1666 = mem[64]
    if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1
    mem[_1666] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = _1666 + 32
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _2776 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1
        mem[_2776] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[3] + cd[s] + 68
        w = _2776 + 32
        while u < cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _2776
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = _1666
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 'NH{q', 65
    _2777 = mem[64]
    if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1
    mem[_2777] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = _2777 + 32
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _3940 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1
        mem[_3940] = cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[4] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[4] + cd[s] + 68
        w = _3940 + 32
        while u < cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _3940
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[256] = _2777
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
            idx = 0
            s = 0
            s = 0
            while uint16(idx) < mem[mem[160]]:
                if uint16(idx) >= mem[mem[160]]:
                    revert with 'NH{q', 50
                if uint16(idx) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                t = mem[224]
                u = var248001
                v = var248003
                while _7287 >= 1:
                    if uint16(u) >= _7287 - 1:
                        if s > -v - 1:
                            revert with 'NH{q', 17
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        _7287 = mem[mem[(32 * uint16(uint16(idx) + 1)) + t + 32]]
                        idx = uint16(idx) + 1
                        s = v
                        s = s + v
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] <= 4:
                        _7331 = mem[64]
                        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                        mem[mem[64] + 96] = 2
                        mem[64] = mem[64] + 192
                        mem[_7331 + 128 len 64] = call.data[calldata.size len 64]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_7331 + 96]:
                            revert with 'NH{q', 50
                        mem[_7331 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_7331 + 96]:
                            revert with 'NH{q', 50
                        mem[_7331 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        _7681 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                            if 3600 > -block.timestamp - 1:
                                revert with 'NH{q', 17
                            mem[_7331 + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_7331 + 196] = 1
                            mem[_7331 + 228] = 128
                            mem[_7331 + 324] = mem[_7331 + 96]
                            s = 0
                            w = _7331 + 128
                            x = _7331 + 356
                            while s < mem[_7331 + 96]:
                                mem[x] = mem[w + 12 len 20]
                                _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[_7331 + 260] = this.address
                            mem[_7331 + 292] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7681)])
                            call sub_a5218fd8[uint16(_7681)].mem[mem[64] len 4] with:
                               value v wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7331 + (32 * mem[_7331 + 96]) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8479 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8503 = mem[_8479]
                            require mem[_8479] <= test266151307()
                            require _8479 + mem[_8479] + 31 < _8479 + return_data.size
                            _8527 = mem[_8479 + mem[_8479]]
                            if mem[_8479 + mem[_8479]] > test266151307():
                                revert with 'NH{q', 65
                            if _8479 + ceil32(return_data.size) + floor32(mem[_8479 + mem[_8479]]) + 1 > test266151307() or floor32(mem[_8479 + mem[_8479]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8479 + ceil32(return_data.size) + floor32(mem[_8479 + mem[_8479]]) + 1
                            mem[_8479 + ceil32(return_data.size)] = _8527
                            require _8503 + (32 * _8527) + 32 <= return_data.size
                            s = 0
                            v = _8479 + _8503 + 32
                            w = _8479 + ceil32(return_data.size) + 32
                            while s < _8527:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8527:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8479 + ceil32(return_data.size) + 64]
                            continue 
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                            mem[_7331 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_7331 + 196] = v
                            mem[_7331 + 228] = 1
                            mem[_7331 + 260] = 160
                            mem[_7331 + 356] = mem[_7331 + 96]
                            s = 0
                            v = _7331 + 128
                            w = _7331 + 388
                            while s < mem[_7331 + 96]:
                                mem[w] = mem[v + 12 len 20]
                                _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_7331 + 292] = this.address
                            mem[_7331 + 324] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7681)])
                            call sub_a5218fd8[uint16(_7681)].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7331 + (32 * mem[_7331 + 96]) + -mem[64] + 384]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8477 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8501 = mem[_8477]
                            require mem[_8477] <= test266151307()
                            require _8477 + mem[_8477] + 31 < _8477 + return_data.size
                            _8525 = mem[_8477 + mem[_8477]]
                            if mem[_8477 + mem[_8477]] > test266151307():
                                revert with 'NH{q', 65
                            if _8477 + ceil32(return_data.size) + floor32(mem[_8477 + mem[_8477]]) + 1 > test266151307() or floor32(mem[_8477 + mem[_8477]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8477 + ceil32(return_data.size) + floor32(mem[_8477 + mem[_8477]]) + 1
                            mem[_8477 + ceil32(return_data.size)] = _8525
                            require _8501 + (32 * _8525) + 32 <= return_data.size
                            s = 0
                            v = _8477 + _8501 + 32
                            w = _8477 + ceil32(return_data.size) + 32
                            while s < _8525:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8525:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8477 + ceil32(return_data.size) + 64]
                            continue 
                        mem[_7331 + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[_7331 + 196] = v
                        mem[_7331 + 228] = 1
                        mem[_7331 + 260] = 160
                        mem[_7331 + 356] = mem[_7331 + 96]
                        s = 0
                        v = _7331 + 128
                        w = _7331 + 388
                        while s < mem[_7331 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7331 + 292] = this.address
                        mem[_7331 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7681)])
                        call sub_a5218fd8[uint16(_7681)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7331 + (32 * mem[_7331 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8478 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8502 = mem[_8478]
                        require mem[_8478] <= test266151307()
                        require _8478 + mem[_8478] + 31 < _8478 + return_data.size
                        _8526 = mem[_8478 + mem[_8478]]
                        if mem[_8478 + mem[_8478]] > test266151307():
                            revert with 'NH{q', 65
                        if _8478 + ceil32(return_data.size) + floor32(mem[_8478 + mem[_8478]]) + 1 > test266151307() or floor32(mem[_8478 + mem[_8478]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8478 + ceil32(return_data.size) + floor32(mem[_8478 + mem[_8478]]) + 1
                        mem[_8478 + ceil32(return_data.size)] = _8526
                        require _8502 + (32 * _8526) + 32 <= return_data.size
                        s = 0
                        v = _8478 + _8502 + 32
                        w = _8478 + ceil32(return_data.size) + 32
                        while s < _8526:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8526:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8478 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] < 5:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7542 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7542)])
                            call sub_a5218fd8[uint16(_7542)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7878 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7878] == mem[_7878]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7878]
                            continue 
                        _7466 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7466)])
                            call sub_a5218fd8[uint16(_7466)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8411] == mem[_8411 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7466)])
                            call sub_a5218fd8[uint16(_7466)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8411 + 12 len 20]:
                                _8650 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8650] == mem[_8650 + 12 len 20]
                            else:
                                _8658 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8658] == mem[_8658 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7466)])
                        staticcall sub_a5218fd8[uint16(_7466)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8466 = mem[_8426]
                        require mem[_8426] == mem[_8426]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7466)])
                        call sub_a5218fd8[uint16(_7466)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7466)])
                        staticcall sub_a5218fd8[uint16(_7466)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8882 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8882] == mem[_8882]
                        if _8466 < mem[_8882]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8466 - mem[_8882]
                        continue 
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] > 7:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7598 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7598)])
                            call sub_a5218fd8[uint16(_7598)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7912] == mem[_7912]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7912]
                            continue 
                        _7544 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7544)])
                            call sub_a5218fd8[uint16(_7544)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8413] == mem[_8413 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7544)])
                            call sub_a5218fd8[uint16(_7544)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8413 + 12 len 20]:
                                _8651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8651] == mem[_8651 + 12 len 20]
                            else:
                                _8659 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8659] == mem[_8659 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7544)])
                        staticcall sub_a5218fd8[uint16(_7544)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8467 = mem[_8427]
                        require mem[_8427] == mem[_8427]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7544)])
                        call sub_a5218fd8[uint16(_7544)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7544)])
                        staticcall sub_a5218fd8[uint16(_7544)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8885 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8885] == mem[_8885]
                        if _8467 < mem[_8885]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8467 - mem[_8885]
                        continue 
                    _7442 = mem[64]
                    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                    mem[mem[64] + 96] = 2
                    mem[64] = mem[64] + 192
                    mem[_7442 + 128 len 64] = call.data[calldata.size len 64]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_7442 + 96]:
                        revert with 'NH{q', 50
                    mem[_7442 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_7442 + 96]:
                        revert with 'NH{q', 50
                    mem[_7442 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _7770 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 12
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        mem[_7442 + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                        mem[_7442 + 196] = 1
                        mem[_7442 + 228] = 128
                        mem[_7442 + 324] = mem[_7442 + 96]
                        s = 0
                        w = _7442 + 128
                        x = _7442 + 356
                        while s < mem[_7442 + 96]:
                            mem[x] = mem[w + 12 len 20]
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        mem[_7442 + 260] = this.address
                        mem[_7442 + 292] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7770)])
                        call sub_a5218fd8[uint16(_7770)].mem[mem[64] len 4] with:
                           value v wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7442 + (32 * mem[_7442 + 96]) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8476 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8500 = mem[_8476]
                        require mem[_8476] <= test266151307()
                        require _8476 + mem[_8476] + 31 < _8476 + return_data.size
                        _8524 = mem[_8476 + mem[_8476]]
                        if mem[_8476 + mem[_8476]] > test266151307():
                            revert with 'NH{q', 65
                        if _8476 + ceil32(return_data.size) + floor32(mem[_8476 + mem[_8476]]) + 1 > test266151307() or floor32(mem[_8476 + mem[_8476]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8476 + ceil32(return_data.size) + floor32(mem[_8476 + mem[_8476]]) + 1
                        mem[_8476 + ceil32(return_data.size)] = _8524
                        require _8500 + (32 * _8524) + 32 <= return_data.size
                        s = 0
                        v = _8476 + _8500 + 32
                        w = _8476 + ceil32(return_data.size) + 32
                        while s < _8524:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8524:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8476 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 3600 > -block.timestamp - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                        mem[_7442 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_7442 + 196] = v
                        mem[_7442 + 228] = 1
                        mem[_7442 + 260] = 160
                        mem[_7442 + 356] = mem[_7442 + 96]
                        s = 0
                        v = _7442 + 128
                        w = _7442 + 388
                        while s < mem[_7442 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7442 + 292] = this.address
                        mem[_7442 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7770)])
                        call sub_a5218fd8[uint16(_7770)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7442 + (32 * mem[_7442 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8474 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8498 = mem[_8474]
                        require mem[_8474] <= test266151307()
                        require _8474 + mem[_8474] + 31 < _8474 + return_data.size
                        _8522 = mem[_8474 + mem[_8474]]
                        if mem[_8474 + mem[_8474]] > test266151307():
                            revert with 'NH{q', 65
                        if _8474 + ceil32(return_data.size) + floor32(mem[_8474 + mem[_8474]]) + 1 > test266151307() or floor32(mem[_8474 + mem[_8474]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8474 + ceil32(return_data.size) + floor32(mem[_8474 + mem[_8474]]) + 1
                        mem[_8474 + ceil32(return_data.size)] = _8522
                        require _8498 + (32 * _8522) + 32 <= return_data.size
                        s = 0
                        v = _8474 + _8498 + 32
                        w = _8474 + ceil32(return_data.size) + 32
                        while s < _8522:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8522:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8474 + ceil32(return_data.size) + 64]
                        continue 
                    mem[_7442 + 192] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                    mem[_7442 + 196] = v
                    mem[_7442 + 228] = 1
                    mem[_7442 + 260] = 160
                    mem[_7442 + 356] = mem[_7442 + 96]
                    s = 0
                    v = _7442 + 128
                    w = _7442 + 388
                    while s < mem[_7442 + 96]:
                        mem[w] = mem[v + 12 len 20]
                        _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_7442 + 292] = this.address
                    mem[_7442 + 324] = block.timestamp + 3600
                    require ext_code.size(sub_a5218fd8[uint16(_7770)])
                    call sub_a5218fd8[uint16(_7770)].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _7442 + (32 * mem[_7442 + 96]) + -mem[64] + 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8475 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8499 = mem[_8475]
                    require mem[_8475] <= test266151307()
                    require _8475 + mem[_8475] + 31 < _8475 + return_data.size
                    _8523 = mem[_8475 + mem[_8475]]
                    if mem[_8475 + mem[_8475]] > test266151307():
                        revert with 'NH{q', 65
                    if _8475 + ceil32(return_data.size) + floor32(mem[_8475 + mem[_8475]]) + 1 > test266151307() or floor32(mem[_8475 + mem[_8475]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _8475 + ceil32(return_data.size) + floor32(mem[_8475 + mem[_8475]]) + 1
                    mem[_8475 + ceil32(return_data.size)] = _8523
                    require _8499 + (32 * _8523) + 32 <= return_data.size
                    s = 0
                    v = _8475 + _8499 + 32
                    w = _8475 + ceil32(return_data.size) + 32
                    while s < _8523:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _7287 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if 1 >= _8523:
                        revert with 'NH{q', 50
                    if uint16(u) == 65535:
                        revert with 'NH{q', 17
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7287 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                    t = mem[224]
                    u = uint16(u) + 1
                    v = mem[_8475 + ceil32(return_data.size) + 64]
                    continue 
                revert with 'NH{q', 17
            if s < mem[96]:
                revert with 0, 'FUCKED UP SHODI MARD/ZAN!'
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(0)
                call 0x0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5422] == bool(mem[_5422])
        else:
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            _3975 = mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]
            idx = 0
            s = 0
            s = 0
            while uint16(idx) < mem[mem[160]]:
                if uint16(idx) >= mem[mem[160]]:
                    revert with 'NH{q', 50
                if uint16(idx) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                t = mem[224]
                u = var259001
                v = var259003
                while _7289 >= 1:
                    if uint16(u) >= _7289 - 1:
                        if s > -v - 1:
                            revert with 'NH{q', 17
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        _7289 = mem[mem[(32 * uint16(uint16(idx) + 1)) + t + 32]]
                        idx = uint16(idx) + 1
                        s = v
                        s = s + v
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] <= 4:
                        _7333 = mem[64]
                        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                        mem[mem[64] + 96] = 2
                        mem[64] = mem[64] + 192
                        mem[_7333 + 128 len 64] = call.data[calldata.size len 64]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_7333 + 96]:
                            revert with 'NH{q', 50
                        mem[_7333 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_7333 + 96]:
                            revert with 'NH{q', 50
                        mem[_7333 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        _7685 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                            if 3600 > -block.timestamp - 1:
                                revert with 'NH{q', 17
                            mem[_7333 + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_7333 + 196] = 1
                            mem[_7333 + 228] = 128
                            mem[_7333 + 324] = mem[_7333 + 96]
                            s = 0
                            w = _7333 + 128
                            x = _7333 + 356
                            while s < mem[_7333 + 96]:
                                mem[x] = mem[w + 12 len 20]
                                _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[_7333 + 260] = this.address
                            mem[_7333 + 292] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7685)])
                            call sub_a5218fd8[uint16(_7685)].mem[mem[64] len 4] with:
                               value v wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7333 + (32 * mem[_7333 + 96]) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8485 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8509 = mem[_8485]
                            require mem[_8485] <= test266151307()
                            require _8485 + mem[_8485] + 31 < _8485 + return_data.size
                            _8533 = mem[_8485 + mem[_8485]]
                            if mem[_8485 + mem[_8485]] > test266151307():
                                revert with 'NH{q', 65
                            if _8485 + ceil32(return_data.size) + floor32(mem[_8485 + mem[_8485]]) + 1 > test266151307() or floor32(mem[_8485 + mem[_8485]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8485 + ceil32(return_data.size) + floor32(mem[_8485 + mem[_8485]]) + 1
                            mem[_8485 + ceil32(return_data.size)] = _8533
                            require _8509 + (32 * _8533) + 32 <= return_data.size
                            s = 0
                            v = _8485 + _8509 + 32
                            w = _8485 + ceil32(return_data.size) + 32
                            while s < _8533:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8533:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8485 + ceil32(return_data.size) + 64]
                            continue 
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                            mem[_7333 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_7333 + 196] = v
                            mem[_7333 + 228] = 1
                            mem[_7333 + 260] = 160
                            mem[_7333 + 356] = mem[_7333 + 96]
                            s = 0
                            v = _7333 + 128
                            w = _7333 + 388
                            while s < mem[_7333 + 96]:
                                mem[w] = mem[v + 12 len 20]
                                _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_7333 + 292] = this.address
                            mem[_7333 + 324] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7685)])
                            call sub_a5218fd8[uint16(_7685)].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7333 + (32 * mem[_7333 + 96]) + -mem[64] + 384]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8483 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8507 = mem[_8483]
                            require mem[_8483] <= test266151307()
                            require _8483 + mem[_8483] + 31 < _8483 + return_data.size
                            _8531 = mem[_8483 + mem[_8483]]
                            if mem[_8483 + mem[_8483]] > test266151307():
                                revert with 'NH{q', 65
                            if _8483 + ceil32(return_data.size) + floor32(mem[_8483 + mem[_8483]]) + 1 > test266151307() or floor32(mem[_8483 + mem[_8483]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8483 + ceil32(return_data.size) + floor32(mem[_8483 + mem[_8483]]) + 1
                            mem[_8483 + ceil32(return_data.size)] = _8531
                            require _8507 + (32 * _8531) + 32 <= return_data.size
                            s = 0
                            v = _8483 + _8507 + 32
                            w = _8483 + ceil32(return_data.size) + 32
                            while s < _8531:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8531:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8483 + ceil32(return_data.size) + 64]
                            continue 
                        mem[_7333 + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[_7333 + 196] = v
                        mem[_7333 + 228] = 1
                        mem[_7333 + 260] = 160
                        mem[_7333 + 356] = mem[_7333 + 96]
                        s = 0
                        v = _7333 + 128
                        w = _7333 + 388
                        while s < mem[_7333 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7333 + 292] = this.address
                        mem[_7333 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7685)])
                        call sub_a5218fd8[uint16(_7685)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7333 + (32 * mem[_7333 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8484 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8508 = mem[_8484]
                        require mem[_8484] <= test266151307()
                        require _8484 + mem[_8484] + 31 < _8484 + return_data.size
                        _8532 = mem[_8484 + mem[_8484]]
                        if mem[_8484 + mem[_8484]] > test266151307():
                            revert with 'NH{q', 65
                        if _8484 + ceil32(return_data.size) + floor32(mem[_8484 + mem[_8484]]) + 1 > test266151307() or floor32(mem[_8484 + mem[_8484]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8484 + ceil32(return_data.size) + floor32(mem[_8484 + mem[_8484]]) + 1
                        mem[_8484 + ceil32(return_data.size)] = _8532
                        require _8508 + (32 * _8532) + 32 <= return_data.size
                        s = 0
                        v = _8484 + _8508 + 32
                        w = _8484 + ceil32(return_data.size) + 32
                        while s < _8532:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8532:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8484 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] < 5:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7545 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7545)])
                            call sub_a5218fd8[uint16(_7545)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7881] == mem[_7881]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7881]
                            continue 
                        _7471 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7471)])
                            call sub_a5218fd8[uint16(_7471)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8415] == mem[_8415 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7471)])
                            call sub_a5218fd8[uint16(_7471)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8415 + 12 len 20]:
                                _8652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8652] == mem[_8652 + 12 len 20]
                            else:
                                _8660 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8660] == mem[_8660 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7471)])
                        staticcall sub_a5218fd8[uint16(_7471)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8468 = mem[_8428]
                        require mem[_8428] == mem[_8428]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7471)])
                        call sub_a5218fd8[uint16(_7471)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7471)])
                        staticcall sub_a5218fd8[uint16(_7471)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8888] == mem[_8888]
                        if _8468 < mem[_8888]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8468 - mem[_8888]
                        continue 
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] > 7:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7602 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7602)])
                            call sub_a5218fd8[uint16(_7602)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7917] == mem[_7917]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7917]
                            continue 
                        _7547 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7547)])
                            call sub_a5218fd8[uint16(_7547)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8417] == mem[_8417 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7547)])
                            call sub_a5218fd8[uint16(_7547)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8417 + 12 len 20]:
                                _8653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8653] == mem[_8653 + 12 len 20]
                            else:
                                _8661 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8661] == mem[_8661 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7547)])
                        staticcall sub_a5218fd8[uint16(_7547)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8469 = mem[_8429]
                        require mem[_8429] == mem[_8429]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7547)])
                        call sub_a5218fd8[uint16(_7547)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7547)])
                        staticcall sub_a5218fd8[uint16(_7547)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8891 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8891] == mem[_8891]
                        if _8469 < mem[_8891]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8469 - mem[_8891]
                        continue 
                    _7449 = mem[64]
                    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                    mem[mem[64] + 96] = 2
                    mem[64] = mem[64] + 192
                    mem[_7449 + 128 len 64] = call.data[calldata.size len 64]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_7449 + 96]:
                        revert with 'NH{q', 50
                    mem[_7449 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_7449 + 96]:
                        revert with 'NH{q', 50
                    mem[_7449 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _7771 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 12
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        mem[_7449 + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                        mem[_7449 + 196] = 1
                        mem[_7449 + 228] = 128
                        mem[_7449 + 324] = mem[_7449 + 96]
                        s = 0
                        w = _7449 + 128
                        x = _7449 + 356
                        while s < mem[_7449 + 96]:
                            mem[x] = mem[w + 12 len 20]
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        mem[_7449 + 260] = this.address
                        mem[_7449 + 292] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7771)])
                        call sub_a5218fd8[uint16(_7771)].mem[mem[64] len 4] with:
                           value v wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7449 + (32 * mem[_7449 + 96]) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8482 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8506 = mem[_8482]
                        require mem[_8482] <= test266151307()
                        require _8482 + mem[_8482] + 31 < _8482 + return_data.size
                        _8530 = mem[_8482 + mem[_8482]]
                        if mem[_8482 + mem[_8482]] > test266151307():
                            revert with 'NH{q', 65
                        if _8482 + ceil32(return_data.size) + floor32(mem[_8482 + mem[_8482]]) + 1 > test266151307() or floor32(mem[_8482 + mem[_8482]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8482 + ceil32(return_data.size) + floor32(mem[_8482 + mem[_8482]]) + 1
                        mem[_8482 + ceil32(return_data.size)] = _8530
                        require _8506 + (32 * _8530) + 32 <= return_data.size
                        s = 0
                        v = _8482 + _8506 + 32
                        w = _8482 + ceil32(return_data.size) + 32
                        while s < _8530:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8530:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8482 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 3600 > -block.timestamp - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                        mem[_7449 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_7449 + 196] = v
                        mem[_7449 + 228] = 1
                        mem[_7449 + 260] = 160
                        mem[_7449 + 356] = mem[_7449 + 96]
                        s = 0
                        v = _7449 + 128
                        w = _7449 + 388
                        while s < mem[_7449 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7449 + 292] = this.address
                        mem[_7449 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7771)])
                        call sub_a5218fd8[uint16(_7771)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7449 + (32 * mem[_7449 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8480 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8504 = mem[_8480]
                        require mem[_8480] <= test266151307()
                        require _8480 + mem[_8480] + 31 < _8480 + return_data.size
                        _8528 = mem[_8480 + mem[_8480]]
                        if mem[_8480 + mem[_8480]] > test266151307():
                            revert with 'NH{q', 65
                        if _8480 + ceil32(return_data.size) + floor32(mem[_8480 + mem[_8480]]) + 1 > test266151307() or floor32(mem[_8480 + mem[_8480]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8480 + ceil32(return_data.size) + floor32(mem[_8480 + mem[_8480]]) + 1
                        mem[_8480 + ceil32(return_data.size)] = _8528
                        require _8504 + (32 * _8528) + 32 <= return_data.size
                        s = 0
                        v = _8480 + _8504 + 32
                        w = _8480 + ceil32(return_data.size) + 32
                        while s < _8528:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8528:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8480 + ceil32(return_data.size) + 64]
                        continue 
                    mem[_7449 + 192] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                    mem[_7449 + 196] = v
                    mem[_7449 + 228] = 1
                    mem[_7449 + 260] = 160
                    mem[_7449 + 356] = mem[_7449 + 96]
                    s = 0
                    v = _7449 + 128
                    w = _7449 + 388
                    while s < mem[_7449 + 96]:
                        mem[w] = mem[v + 12 len 20]
                        _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_7449 + 292] = this.address
                    mem[_7449 + 324] = block.timestamp + 3600
                    require ext_code.size(sub_a5218fd8[uint16(_7771)])
                    call sub_a5218fd8[uint16(_7771)].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _7449 + (32 * mem[_7449 + 96]) + -mem[64] + 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8481 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8505 = mem[_8481]
                    require mem[_8481] <= test266151307()
                    require _8481 + mem[_8481] + 31 < _8481 + return_data.size
                    _8529 = mem[_8481 + mem[_8481]]
                    if mem[_8481 + mem[_8481]] > test266151307():
                        revert with 'NH{q', 65
                    if _8481 + ceil32(return_data.size) + floor32(mem[_8481 + mem[_8481]]) + 1 > test266151307() or floor32(mem[_8481 + mem[_8481]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _8481 + ceil32(return_data.size) + floor32(mem[_8481 + mem[_8481]]) + 1
                    mem[_8481 + ceil32(return_data.size)] = _8529
                    require _8505 + (32 * _8529) + 32 <= return_data.size
                    s = 0
                    v = _8481 + _8505 + 32
                    w = _8481 + ceil32(return_data.size) + 32
                    while s < _8529:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _7289 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if 1 >= _8529:
                        revert with 'NH{q', 50
                    if uint16(u) == 65535:
                        revert with 'NH{q', 17
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7289 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                    t = mem[224]
                    u = uint16(u) + 1
                    v = mem[_8481 + ceil32(return_data.size) + 64]
                    continue 
                revert with 'NH{q', 17
            if s < mem[96]:
                revert with 0, 'FUCKED UP SHODI MARD/ZAN!'
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(address(_3975))
                call address(_3975).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5429] == bool(mem[_5429])
    else:
        if 0 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        _3943 = mem[mem[mem[224] + 32] + 32]
        _3944 = mem[128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _3944
        require ext_code.size(address(_3943))
        call address(_3943).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _3944
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3977 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3977] == bool(mem[_3977])
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
            idx = 0
            s = 0
            s = 0
            while uint16(idx) < mem[mem[160]]:
                if uint16(idx) >= mem[mem[160]]:
                    revert with 'NH{q', 50
                if uint16(idx) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                t = mem[224]
                u = var281001
                v = var281003
                while _7291 >= 1:
                    if uint16(u) >= _7291 - 1:
                        if s > -v - 1:
                            revert with 'NH{q', 17
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        _7291 = mem[mem[(32 * uint16(uint16(idx) + 1)) + t + 32]]
                        idx = uint16(idx) + 1
                        s = v
                        s = s + v
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] <= 4:
                        _7335 = mem[64]
                        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                        mem[mem[64] + 96] = 2
                        mem[64] = mem[64] + 192
                        mem[_7335 + 128 len 64] = call.data[calldata.size len 64]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_7335 + 96]:
                            revert with 'NH{q', 50
                        mem[_7335 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_7335 + 96]:
                            revert with 'NH{q', 50
                        mem[_7335 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        _7689 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                            if 3600 > -block.timestamp - 1:
                                revert with 'NH{q', 17
                            mem[_7335 + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_7335 + 196] = 1
                            mem[_7335 + 228] = 128
                            mem[_7335 + 324] = mem[_7335 + 96]
                            s = 0
                            w = _7335 + 128
                            x = _7335 + 356
                            while s < mem[_7335 + 96]:
                                mem[x] = mem[w + 12 len 20]
                                _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[_7335 + 260] = this.address
                            mem[_7335 + 292] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7689)])
                            call sub_a5218fd8[uint16(_7689)].mem[mem[64] len 4] with:
                               value v wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7335 + (32 * mem[_7335 + 96]) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8491 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8515 = mem[_8491]
                            require mem[_8491] <= test266151307()
                            require _8491 + mem[_8491] + 31 < _8491 + return_data.size
                            _8539 = mem[_8491 + mem[_8491]]
                            if mem[_8491 + mem[_8491]] > test266151307():
                                revert with 'NH{q', 65
                            if _8491 + ceil32(return_data.size) + floor32(mem[_8491 + mem[_8491]]) + 1 > test266151307() or floor32(mem[_8491 + mem[_8491]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8491 + ceil32(return_data.size) + floor32(mem[_8491 + mem[_8491]]) + 1
                            mem[_8491 + ceil32(return_data.size)] = _8539
                            require _8515 + (32 * _8539) + 32 <= return_data.size
                            s = 0
                            v = _8491 + _8515 + 32
                            w = _8491 + ceil32(return_data.size) + 32
                            while s < _8539:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8539:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8491 + ceil32(return_data.size) + 64]
                            continue 
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                            mem[_7335 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_7335 + 196] = v
                            mem[_7335 + 228] = 1
                            mem[_7335 + 260] = 160
                            mem[_7335 + 356] = mem[_7335 + 96]
                            s = 0
                            v = _7335 + 128
                            w = _7335 + 388
                            while s < mem[_7335 + 96]:
                                mem[w] = mem[v + 12 len 20]
                                _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_7335 + 292] = this.address
                            mem[_7335 + 324] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7689)])
                            call sub_a5218fd8[uint16(_7689)].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7335 + (32 * mem[_7335 + 96]) + -mem[64] + 384]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8489 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8513 = mem[_8489]
                            require mem[_8489] <= test266151307()
                            require _8489 + mem[_8489] + 31 < _8489 + return_data.size
                            _8537 = mem[_8489 + mem[_8489]]
                            if mem[_8489 + mem[_8489]] > test266151307():
                                revert with 'NH{q', 65
                            if _8489 + ceil32(return_data.size) + floor32(mem[_8489 + mem[_8489]]) + 1 > test266151307() or floor32(mem[_8489 + mem[_8489]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8489 + ceil32(return_data.size) + floor32(mem[_8489 + mem[_8489]]) + 1
                            mem[_8489 + ceil32(return_data.size)] = _8537
                            require _8513 + (32 * _8537) + 32 <= return_data.size
                            s = 0
                            v = _8489 + _8513 + 32
                            w = _8489 + ceil32(return_data.size) + 32
                            while s < _8537:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8537:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8489 + ceil32(return_data.size) + 64]
                            continue 
                        mem[_7335 + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[_7335 + 196] = v
                        mem[_7335 + 228] = 1
                        mem[_7335 + 260] = 160
                        mem[_7335 + 356] = mem[_7335 + 96]
                        s = 0
                        v = _7335 + 128
                        w = _7335 + 388
                        while s < mem[_7335 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7335 + 292] = this.address
                        mem[_7335 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7689)])
                        call sub_a5218fd8[uint16(_7689)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7335 + (32 * mem[_7335 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8490 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8514 = mem[_8490]
                        require mem[_8490] <= test266151307()
                        require _8490 + mem[_8490] + 31 < _8490 + return_data.size
                        _8538 = mem[_8490 + mem[_8490]]
                        if mem[_8490 + mem[_8490]] > test266151307():
                            revert with 'NH{q', 65
                        if _8490 + ceil32(return_data.size) + floor32(mem[_8490 + mem[_8490]]) + 1 > test266151307() or floor32(mem[_8490 + mem[_8490]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8490 + ceil32(return_data.size) + floor32(mem[_8490 + mem[_8490]]) + 1
                        mem[_8490 + ceil32(return_data.size)] = _8538
                        require _8514 + (32 * _8538) + 32 <= return_data.size
                        s = 0
                        v = _8490 + _8514 + 32
                        w = _8490 + ceil32(return_data.size) + 32
                        while s < _8538:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8538:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8490 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] < 5:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7548 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7548)])
                            call sub_a5218fd8[uint16(_7548)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7884 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7884] == mem[_7884]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7884]
                            continue 
                        _7476 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7476)])
                            call sub_a5218fd8[uint16(_7476)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8419] == mem[_8419 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7476)])
                            call sub_a5218fd8[uint16(_7476)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8419 + 12 len 20]:
                                _8654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8654] == mem[_8654 + 12 len 20]
                            else:
                                _8662 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8662] == mem[_8662 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7476)])
                        staticcall sub_a5218fd8[uint16(_7476)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8470 = mem[_8430]
                        require mem[_8430] == mem[_8430]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7476)])
                        call sub_a5218fd8[uint16(_7476)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7476)])
                        staticcall sub_a5218fd8[uint16(_7476)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8894] == mem[_8894]
                        if _8470 < mem[_8894]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8470 - mem[_8894]
                        continue 
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] > 7:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7606 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7606)])
                            call sub_a5218fd8[uint16(_7606)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7922] == mem[_7922]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7922]
                            continue 
                        _7550 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7550)])
                            call sub_a5218fd8[uint16(_7550)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8421 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8421] == mem[_8421 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7550)])
                            call sub_a5218fd8[uint16(_7550)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8421 + 12 len 20]:
                                _8655 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8655] == mem[_8655 + 12 len 20]
                            else:
                                _8663 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8663] == mem[_8663 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7550)])
                        staticcall sub_a5218fd8[uint16(_7550)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8471 = mem[_8431]
                        require mem[_8431] == mem[_8431]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7550)])
                        call sub_a5218fd8[uint16(_7550)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7550)])
                        staticcall sub_a5218fd8[uint16(_7550)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8897] == mem[_8897]
                        if _8471 < mem[_8897]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8471 - mem[_8897]
                        continue 
                    _7456 = mem[64]
                    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                    mem[mem[64] + 96] = 2
                    mem[64] = mem[64] + 192
                    mem[_7456 + 128 len 64] = call.data[calldata.size len 64]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_7456 + 96]:
                        revert with 'NH{q', 50
                    mem[_7456 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_7456 + 96]:
                        revert with 'NH{q', 50
                    mem[_7456 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _7772 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 12
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        mem[_7456 + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                        mem[_7456 + 196] = 1
                        mem[_7456 + 228] = 128
                        mem[_7456 + 324] = mem[_7456 + 96]
                        s = 0
                        w = _7456 + 128
                        x = _7456 + 356
                        while s < mem[_7456 + 96]:
                            mem[x] = mem[w + 12 len 20]
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        mem[_7456 + 260] = this.address
                        mem[_7456 + 292] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7772)])
                        call sub_a5218fd8[uint16(_7772)].mem[mem[64] len 4] with:
                           value v wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7456 + (32 * mem[_7456 + 96]) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8488 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8512 = mem[_8488]
                        require mem[_8488] <= test266151307()
                        require _8488 + mem[_8488] + 31 < _8488 + return_data.size
                        _8536 = mem[_8488 + mem[_8488]]
                        if mem[_8488 + mem[_8488]] > test266151307():
                            revert with 'NH{q', 65
                        if _8488 + ceil32(return_data.size) + floor32(mem[_8488 + mem[_8488]]) + 1 > test266151307() or floor32(mem[_8488 + mem[_8488]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8488 + ceil32(return_data.size) + floor32(mem[_8488 + mem[_8488]]) + 1
                        mem[_8488 + ceil32(return_data.size)] = _8536
                        require _8512 + (32 * _8536) + 32 <= return_data.size
                        s = 0
                        v = _8488 + _8512 + 32
                        w = _8488 + ceil32(return_data.size) + 32
                        while s < _8536:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8536:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8488 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 3600 > -block.timestamp - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                        mem[_7456 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_7456 + 196] = v
                        mem[_7456 + 228] = 1
                        mem[_7456 + 260] = 160
                        mem[_7456 + 356] = mem[_7456 + 96]
                        s = 0
                        v = _7456 + 128
                        w = _7456 + 388
                        while s < mem[_7456 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7456 + 292] = this.address
                        mem[_7456 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7772)])
                        call sub_a5218fd8[uint16(_7772)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7456 + (32 * mem[_7456 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8486 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8510 = mem[_8486]
                        require mem[_8486] <= test266151307()
                        require _8486 + mem[_8486] + 31 < _8486 + return_data.size
                        _8534 = mem[_8486 + mem[_8486]]
                        if mem[_8486 + mem[_8486]] > test266151307():
                            revert with 'NH{q', 65
                        if _8486 + ceil32(return_data.size) + floor32(mem[_8486 + mem[_8486]]) + 1 > test266151307() or floor32(mem[_8486 + mem[_8486]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8486 + ceil32(return_data.size) + floor32(mem[_8486 + mem[_8486]]) + 1
                        mem[_8486 + ceil32(return_data.size)] = _8534
                        require _8510 + (32 * _8534) + 32 <= return_data.size
                        s = 0
                        v = _8486 + _8510 + 32
                        w = _8486 + ceil32(return_data.size) + 32
                        while s < _8534:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8534:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8486 + ceil32(return_data.size) + 64]
                        continue 
                    mem[_7456 + 192] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                    mem[_7456 + 196] = v
                    mem[_7456 + 228] = 1
                    mem[_7456 + 260] = 160
                    mem[_7456 + 356] = mem[_7456 + 96]
                    s = 0
                    v = _7456 + 128
                    w = _7456 + 388
                    while s < mem[_7456 + 96]:
                        mem[w] = mem[v + 12 len 20]
                        _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_7456 + 292] = this.address
                    mem[_7456 + 324] = block.timestamp + 3600
                    require ext_code.size(sub_a5218fd8[uint16(_7772)])
                    call sub_a5218fd8[uint16(_7772)].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _7456 + (32 * mem[_7456 + 96]) + -mem[64] + 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8487 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8511 = mem[_8487]
                    require mem[_8487] <= test266151307()
                    require _8487 + mem[_8487] + 31 < _8487 + return_data.size
                    _8535 = mem[_8487 + mem[_8487]]
                    if mem[_8487 + mem[_8487]] > test266151307():
                        revert with 'NH{q', 65
                    if _8487 + ceil32(return_data.size) + floor32(mem[_8487 + mem[_8487]]) + 1 > test266151307() or floor32(mem[_8487 + mem[_8487]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _8487 + ceil32(return_data.size) + floor32(mem[_8487 + mem[_8487]]) + 1
                    mem[_8487 + ceil32(return_data.size)] = _8535
                    require _8511 + (32 * _8535) + 32 <= return_data.size
                    s = 0
                    v = _8487 + _8511 + 32
                    w = _8487 + ceil32(return_data.size) + 32
                    while s < _8535:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _7291 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if 1 >= _8535:
                        revert with 'NH{q', 50
                    if uint16(u) == 65535:
                        revert with 'NH{q', 17
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7291 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                    t = mem[224]
                    u = uint16(u) + 1
                    v = mem[_8487 + ceil32(return_data.size) + 64]
                    continue 
                revert with 'NH{q', 17
            if s < mem[96]:
                revert with 0, 'FUCKED UP SHODI MARD/ZAN!'
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(0)
                call 0x0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5436] == bool(mem[_5436])
        else:
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            _4247 = mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]
            idx = 0
            s = 0
            s = 0
            while uint16(idx) < mem[mem[160]]:
                if uint16(idx) >= mem[mem[160]]:
                    revert with 'NH{q', 50
                if uint16(idx) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                t = mem[224]
                u = var292001
                v = var292003
                while _7293 >= 1:
                    if uint16(u) >= _7293 - 1:
                        if s > -v - 1:
                            revert with 'NH{q', 17
                        if uint16(idx) == 65535:
                            revert with 'NH{q', 17
                        _7293 = mem[mem[(32 * uint16(uint16(idx) + 1)) + t + 32]]
                        idx = uint16(idx) + 1
                        s = v
                        s = s + v
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] <= 4:
                        _7337 = mem[64]
                        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                        mem[mem[64] + 96] = 2
                        mem[64] = mem[64] + 192
                        mem[_7337 + 128 len 64] = call.data[calldata.size len 64]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_7337 + 96]:
                            revert with 'NH{q', 50
                        mem[_7337 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_7337 + 96]:
                            revert with 'NH{q', 50
                        mem[_7337 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        _7693 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                            if 3600 > -block.timestamp - 1:
                                revert with 'NH{q', 17
                            mem[_7337 + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_7337 + 196] = 1
                            mem[_7337 + 228] = 128
                            mem[_7337 + 324] = mem[_7337 + 96]
                            s = 0
                            w = _7337 + 128
                            x = _7337 + 356
                            while s < mem[_7337 + 96]:
                                mem[x] = mem[w + 12 len 20]
                                _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[_7337 + 260] = this.address
                            mem[_7337 + 292] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7693)])
                            call sub_a5218fd8[uint16(_7693)].mem[mem[64] len 4] with:
                               value v wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7337 + (32 * mem[_7337 + 96]) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8497 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8521 = mem[_8497]
                            require mem[_8497] <= test266151307()
                            require _8497 + mem[_8497] + 31 < _8497 + return_data.size
                            _8545 = mem[_8497 + mem[_8497]]
                            if mem[_8497 + mem[_8497]] > test266151307():
                                revert with 'NH{q', 65
                            if _8497 + ceil32(return_data.size) + floor32(mem[_8497 + mem[_8497]]) + 1 > test266151307() or floor32(mem[_8497 + mem[_8497]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8497 + ceil32(return_data.size) + floor32(mem[_8497 + mem[_8497]]) + 1
                            mem[_8497 + ceil32(return_data.size)] = _8545
                            require _8521 + (32 * _8545) + 32 <= return_data.size
                            s = 0
                            v = _8497 + _8521 + 32
                            w = _8497 + ceil32(return_data.size) + 32
                            while s < _8545:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8545:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8497 + ceil32(return_data.size) + 64]
                            continue 
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if uint16(u) > 65534:
                            revert with 'NH{q', 17
                        if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                            revert with 'NH{q', 50
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                            mem[_7337 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_7337 + 196] = v
                            mem[_7337 + 228] = 1
                            mem[_7337 + 260] = 160
                            mem[_7337 + 356] = mem[_7337 + 96]
                            s = 0
                            v = _7337 + 128
                            w = _7337 + 388
                            while s < mem[_7337 + 96]:
                                mem[w] = mem[v + 12 len 20]
                                _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_7337 + 292] = this.address
                            mem[_7337 + 324] = block.timestamp + 3600
                            require ext_code.size(sub_a5218fd8[uint16(_7693)])
                            call sub_a5218fd8[uint16(_7693)].mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7337 + (32 * mem[_7337 + 96]) + -mem[64] + 384]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8495 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8519 = mem[_8495]
                            require mem[_8495] <= test266151307()
                            require _8495 + mem[_8495] + 31 < _8495 + return_data.size
                            _8543 = mem[_8495 + mem[_8495]]
                            if mem[_8495 + mem[_8495]] > test266151307():
                                revert with 'NH{q', 65
                            if _8495 + ceil32(return_data.size) + floor32(mem[_8495 + mem[_8495]]) + 1 > test266151307() or floor32(mem[_8495 + mem[_8495]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _8495 + ceil32(return_data.size) + floor32(mem[_8495 + mem[_8495]]) + 1
                            mem[_8495 + ceil32(return_data.size)] = _8543
                            require _8519 + (32 * _8543) + 32 <= return_data.size
                            s = 0
                            v = _8495 + _8519 + 32
                            w = _8495 + ceil32(return_data.size) + 32
                            while s < _8543:
                                require mem[v] == mem[v]
                                mem[w] = mem[v]
                                _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                                s = s + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            if 1 >= _8543:
                                revert with 'NH{q', 50
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_8495 + ceil32(return_data.size) + 64]
                            continue 
                        mem[_7337 + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[_7337 + 196] = v
                        mem[_7337 + 228] = 1
                        mem[_7337 + 260] = 160
                        mem[_7337 + 356] = mem[_7337 + 96]
                        s = 0
                        v = _7337 + 128
                        w = _7337 + 388
                        while s < mem[_7337 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7337 + 292] = this.address
                        mem[_7337 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7693)])
                        call sub_a5218fd8[uint16(_7693)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7337 + (32 * mem[_7337 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8496 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8520 = mem[_8496]
                        require mem[_8496] <= test266151307()
                        require _8496 + mem[_8496] + 31 < _8496 + return_data.size
                        _8544 = mem[_8496 + mem[_8496]]
                        if mem[_8496 + mem[_8496]] > test266151307():
                            revert with 'NH{q', 65
                        if _8496 + ceil32(return_data.size) + floor32(mem[_8496 + mem[_8496]]) + 1 > test266151307() or floor32(mem[_8496 + mem[_8496]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8496 + ceil32(return_data.size) + floor32(mem[_8496 + mem[_8496]]) + 1
                        mem[_8496 + ceil32(return_data.size)] = _8544
                        require _8520 + (32 * _8544) + 32 <= return_data.size
                        s = 0
                        v = _8496 + _8520 + 32
                        w = _8496 + ceil32(return_data.size) + 32
                        while s < _8544:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8544:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8496 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] < 5:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7551 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7551)])
                            call sub_a5218fd8[uint16(_7551)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7887 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7887] == mem[_7887]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7887]
                            continue 
                        _7481 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7481)])
                            call sub_a5218fd8[uint16(_7481)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8423 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8423] == mem[_8423 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7481)])
                            call sub_a5218fd8[uint16(_7481)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8423 + 12 len 20]:
                                _8656 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8656] == mem[_8656 + 12 len 20]
                            else:
                                _8664 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8664] == mem[_8664 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7481)])
                        staticcall sub_a5218fd8[uint16(_7481)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8472 = mem[_8432]
                        require mem[_8432] == mem[_8432]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7481)])
                        call sub_a5218fd8[uint16(_7481)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7481)])
                        staticcall sub_a5218fd8[uint16(_7481)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8900] == mem[_8900]
                        if _8472 < mem[_8900]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8472 - mem[_8900]
                        continue 
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] > 7:
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if uint16(idx) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 8:
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] != 9:
                                if uint16(u) == 65535:
                                    revert with 'NH{q', 17
                                if uint16(idx) >= mem[mem[224]]:
                                    revert with 'NH{q', 50
                                _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                                t = mem[224]
                                u = uint16(u) + 1
                                v = v
                                continue 
                            if uint16(idx) >= mem[mem[192]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                                revert with 'NH{q', 50
                            _7610 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                                revert with 'NH{q', 50
                            mem[0] = 12
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = v
                            mem[mem[64] + 100] = 1
                            require ext_code.size(sub_a5218fd8[uint16(_7610)])
                            call sub_a5218fd8[uint16(_7610)].0xe95dc522 with:
                                 gas gas_remaining wei
                                args 0, 1, v, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7927 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7927] == mem[_7927]
                            if uint16(u) == 65535:
                                revert with 'NH{q', 17
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                            t = mem[224]
                            u = uint16(u) + 1
                            v = mem[_7927]
                            continue 
                        _7553 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                        if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        s = 0
                        while s <= 2:
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7553)])
                            call sub_a5218fd8[uint16(_7553)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8425 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8425] == mem[_8425 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = s
                            require ext_code.size(sub_a5218fd8[uint16(_7553)])
                            call sub_a5218fd8[uint16(_7553)].coins(uint256 arg1) with:
                                 gas gas_remaining wei
                                args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != mem[_8425 + 12 len 20]:
                                _8657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8657] == mem[_8657 + 12 len 20]
                            else:
                                _8665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8665] == mem[_8665 + 12 len 20]
                            if uint16(idx) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if uint16(u) > 65534:
                                revert with 'NH{q', 17
                            if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                                revert with 'NH{q', 50
                            if s == -1:
                                revert with 'NH{q', 17
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            continue 
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7553)])
                        staticcall sub_a5218fd8[uint16(_7553)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8473 = mem[_8433]
                        require mem[_8433] == mem[_8433]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = v
                        mem[mem[64] + 100] = 1
                        require ext_code.size(sub_a5218fd8[uint16(_7553)])
                        call sub_a5218fd8[uint16(_7553)].0xe95dc522 with:
                             gas gas_remaining wei
                            args 0, 0, v, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(sub_a5218fd8[uint16(_7553)])
                        staticcall sub_a5218fd8[uint16(_7553)].balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8903 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8903] == mem[_8903]
                        if _8473 < mem[_8903]:
                            revert with 'NH{q', 17
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = _8473 - mem[_8903]
                        continue 
                    _7463 = mem[64]
                    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                    mem[mem[64] + 96] = 2
                    mem[64] = mem[64] + 192
                    mem[_7463 + 128 len 64] = call.data[calldata.size len 64]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_7463 + 96]:
                        revert with 'NH{q', 50
                    mem[_7463 + 128] = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_7463 + 96]:
                        revert with 'NH{q', 50
                    mem[_7463 + 160] = mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20]
                    if uint16(idx) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _7773 = mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 12
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(u)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                        if 3600 > -block.timestamp - 1:
                            revert with 'NH{q', 17
                        mem[_7463 + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                        mem[_7463 + 196] = 1
                        mem[_7463 + 228] = 128
                        mem[_7463 + 324] = mem[_7463 + 96]
                        s = 0
                        w = _7463 + 128
                        x = _7463 + 356
                        while s < mem[_7463 + 96]:
                            mem[x] = mem[w + 12 len 20]
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        mem[_7463 + 260] = this.address
                        mem[_7463 + 292] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7773)])
                        call sub_a5218fd8[uint16(_7773)].mem[mem[64] len 4] with:
                           value v wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7463 + (32 * mem[_7463 + 96]) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8494 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8518 = mem[_8494]
                        require mem[_8494] <= test266151307()
                        require _8494 + mem[_8494] + 31 < _8494 + return_data.size
                        _8542 = mem[_8494 + mem[_8494]]
                        if mem[_8494 + mem[_8494]] > test266151307():
                            revert with 'NH{q', 65
                        if _8494 + ceil32(return_data.size) + floor32(mem[_8494 + mem[_8494]]) + 1 > test266151307() or floor32(mem[_8494 + mem[_8494]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8494 + ceil32(return_data.size) + floor32(mem[_8494 + mem[_8494]]) + 1
                        mem[_8494 + ceil32(return_data.size)] = _8542
                        require _8518 + (32 * _8542) + 32 <= return_data.size
                        s = 0
                        v = _8494 + _8518 + 32
                        w = _8494 + ceil32(return_data.size) + 32
                        while s < _8542:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8542:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8494 + ceil32(return_data.size) + 64]
                        continue 
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(u) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(u) + 1) >= mem[mem[(32 * uint16(idx)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 3600 > -block.timestamp - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * uint16(uint16(u) + 1)) + mem[(32 * uint16(idx)) + mem[224] + 32] + 44 len 20] != sub_ba32e624Address:
                        mem[_7463 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_7463 + 196] = v
                        mem[_7463 + 228] = 1
                        mem[_7463 + 260] = 160
                        mem[_7463 + 356] = mem[_7463 + 96]
                        s = 0
                        v = _7463 + 128
                        w = _7463 + 388
                        while s < mem[_7463 + 96]:
                            mem[w] = mem[v + 12 len 20]
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_7463 + 292] = this.address
                        mem[_7463 + 324] = block.timestamp + 3600
                        require ext_code.size(sub_a5218fd8[uint16(_7773)])
                        call sub_a5218fd8[uint16(_7773)].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7463 + (32 * mem[_7463 + 96]) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8492 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8516 = mem[_8492]
                        require mem[_8492] <= test266151307()
                        require _8492 + mem[_8492] + 31 < _8492 + return_data.size
                        _8540 = mem[_8492 + mem[_8492]]
                        if mem[_8492 + mem[_8492]] > test266151307():
                            revert with 'NH{q', 65
                        if _8492 + ceil32(return_data.size) + floor32(mem[_8492 + mem[_8492]]) + 1 > test266151307() or floor32(mem[_8492 + mem[_8492]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8492 + ceil32(return_data.size) + floor32(mem[_8492 + mem[_8492]]) + 1
                        mem[_8492 + ceil32(return_data.size)] = _8540
                        require _8516 + (32 * _8540) + 32 <= return_data.size
                        s = 0
                        v = _8492 + _8516 + 32
                        w = _8492 + ceil32(return_data.size) + 32
                        while s < _8540:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if 1 >= _8540:
                            revert with 'NH{q', 50
                        if uint16(u) == 65535:
                            revert with 'NH{q', 17
                        if uint16(idx) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                        t = mem[224]
                        u = uint16(u) + 1
                        v = mem[_8492 + ceil32(return_data.size) + 64]
                        continue 
                    mem[_7463 + 192] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                    mem[_7463 + 196] = v
                    mem[_7463 + 228] = 1
                    mem[_7463 + 260] = 160
                    mem[_7463 + 356] = mem[_7463 + 96]
                    s = 0
                    v = _7463 + 128
                    w = _7463 + 388
                    while s < mem[_7463 + 96]:
                        mem[w] = mem[v + 12 len 20]
                        _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_7463 + 292] = this.address
                    mem[_7463 + 324] = block.timestamp + 3600
                    require ext_code.size(sub_a5218fd8[uint16(_7773)])
                    call sub_a5218fd8[uint16(_7773)].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _7463 + (32 * mem[_7463 + 96]) + -mem[64] + 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8493 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8517 = mem[_8493]
                    require mem[_8493] <= test266151307()
                    require _8493 + mem[_8493] + 31 < _8493 + return_data.size
                    _8541 = mem[_8493 + mem[_8493]]
                    if mem[_8493 + mem[_8493]] > test266151307():
                        revert with 'NH{q', 65
                    if _8493 + ceil32(return_data.size) + floor32(mem[_8493 + mem[_8493]]) + 1 > test266151307() or floor32(mem[_8493 + mem[_8493]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _8493 + ceil32(return_data.size) + floor32(mem[_8493 + mem[_8493]]) + 1
                    mem[_8493 + ceil32(return_data.size)] = _8541
                    require _8517 + (32 * _8541) + 32 <= return_data.size
                    s = 0
                    v = _8493 + _8517 + 32
                    w = _8493 + ceil32(return_data.size) + 32
                    while s < _8541:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _7293 = mem[mem[(32 * uint16(idx)) + t + 32]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if 1 >= _8541:
                        revert with 'NH{q', 50
                    if uint16(u) == 65535:
                        revert with 'NH{q', 17
                    if uint16(idx) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _7293 = mem[mem[(32 * uint16(idx)) + mem[224] + 32]]
                    t = mem[224]
                    u = uint16(u) + 1
                    v = mem[_8493 + ceil32(return_data.size) + 64]
                    continue 
                revert with 'NH{q', 17
            if s < mem[96]:
                revert with 0, 'FUCKED UP SHODI MARD/ZAN!'
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] == sub_ba32e624Address:
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = s
                require ext_code.size(address(_4247))
                call address(_4247).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5443] == bool(mem[_5443])
    return s
}



}
