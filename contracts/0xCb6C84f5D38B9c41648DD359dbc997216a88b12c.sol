contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf29a21c(?)
#
address owner;
array of struct stor1;
uint16 sub_6330c333;
uint16 sub_1e6e41ab; offset 16
address sub_b6a21b61Address; offset 32
address sub_ba32e624Address;
address sub_a3bf202bAddress;
address sub_242c3c53Address;
address sub_077d66f3Address;
address sub_29dc484aAddress;
address sub_0eebd6a8Address;
address sub_1b85d6deAddress;
address sub_91996877Address;
address sub_ee35b0bdAddress;
address sub_23ba76faAddress;
address sub_c472e2c1Address;
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

function sub_1e6e41ab(?) {
    return sub_1e6e41ab
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

function sub_6330c333(?) {
    return sub_6330c333
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

function sub_b6a21b61(?) {
    return sub_b6a21b61Address
}

function sub_ba32e624(?) {
    return sub_ba32e624Address
}

function sub_c472e2c1(?) {
    return sub_c472e2c1Address
}

function sub_ee35b0bd(?) {
    return sub_ee35b0bdAddress
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

function sub_817a9e94(?) {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function sub_97aedadb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4).length == ('cd', 4).length
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == ('cd', 4)[0]
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321 < 320:
        revert with 'NH{q', 65
    mem[320] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[1] + 36
    t = 352
    while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = 320
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 322 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 322 < 321:
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 322
    mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 353
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[2] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _777 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 1
        mem[_777] = cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[2] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[2] + cd[s] + 68
        w = _777 + 32
        while u < cd[(cd[4] + ('cd', 4)[2] + cd[s] + 36)]:
            require cd[v] == uint16(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _777
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 321
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    _778 = mem[64]
    if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1
    mem[_778] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = _778 + 32
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1696 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 1
        mem[_1696] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[3] + cd[s] + 68
        w = _1696 + 32
        while u < cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _1696
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = _778
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 'NH{q', 65
    _1697 = mem[64]
    if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1
    mem[_1697] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = _1697 + 32
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _2978 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 1
        mem[_2978] = cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[4] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[4] + cd[s] + 68
        w = _2978 + 32
        while u < cd[(cd[4] + ('cd', 4)[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _2978
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[256] = _1697
    require ('cd', 4)[5] == bool(('cd', 4)[5])
    mem[288] = ('cd', 4)[5]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    _2983 = mem[mem[mem[224] + 32] + 32]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32]] < 1:
        revert with 'NH{q', 17
    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    _2992 = mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    _2997 = mem[mem[mem[224] + 32] + 32]
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
        _3004 = mem[128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _3004
        require ext_code.size(address(_2983))
        call address(_2983).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _3004
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3016 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3016] == bool(mem[_3016])
        if var219003 < 1:
            revert with 'NH{q', 17
        if uint16(var223002) <= var223001:
            if uint16(var225001) >= mem[mem[160]]:
                revert with 'NH{q', 50
            if uint16(var227003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            _23714 = mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]
            s = mem[224]
            t = var306001
            u = var306003
            while _23714 >= 2:
                if uint16(t) > _23714 - 2:
                    if var227009 > -u - 1:
                        revert with 'NH{q', 17
                    if uint16(var227003) == 65535:
                        revert with 'NH{q', 17
                    if mem[mem[160]] < 1:
                        revert with 'NH{q', 17
                    if uint16(uint16(var227003) + 1) <= mem[mem[160]] - 1:
                        if uint16(uint16(var227003) + 1) >= mem[mem[160]]:
                            revert with 'NH{q', 50
                        if uint16(uint16(var227003) + 1) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23714 = mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]
                        s = mem[224]
                        t = 0
                        u = mem[(32 * uint16(uint16(var227003) + 1)) + mem[160] + 32]
                        continue 
                    if var227009 + u < mem[96]:
                        revert with 0, 'AmountOut is lower than expedted because of slippage rate'
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[224] + 32]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var227009 + u
                        require ext_code.size(address(_2992))
                        call address(_2992).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, var227009 + u
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _24046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_24046] == bool(mem[_24046])
                        if 0 >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[224] + 32]] < 1:
                            revert with 'NH{q', 17
                        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                            revert with 'NH{q', 50
                        emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var227009 + u);
                    else:
                        if bool(mem[288]) == 1:
                            mem[mem[64] + 4] = var227009 + u
                            require ext_code.size(sub_b6a21b61Address)
                            call sub_b6a21b61Address.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var227009 + u)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24010 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_24010] == mem[_24010]
                            call msg.sender with:
                               value var227009 + u wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Swapped(msg.sender, address(_2997), sub_ba32e624Address, mem[128], var227009 + u);
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = var227009 + u
                            require ext_code.size(address(_2992))
                            call address(_2992).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, var227009 + u
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24055 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_24055] == bool(mem[_24055])
                            if 0 >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if mem[mem[mem[224] + 32]] < 1:
                                revert with 'NH{q', 17
                            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                                revert with 'NH{q', 50
                            emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var227009 + u);
                    return (var227009 + u)
                if uint16(var227003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] > 7:
                    if uint16(var227003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] > 9:
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var227003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23714 = mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = u
                        continue 
                    if uint16(var227003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] < 8:
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var227003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23714 = mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = u
                        continue 
                    if uint16(var227003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if uint16(var227003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] == 8:
                        # nil
                    else:
                        if uint16(var227003) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] == 9:
                            # nil
                        else:
                            if uint16(t) == 65535:
                                revert with 'NH{q', 17
                            if uint16(var227003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _23714 = mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]
                            s = mem[224]
                            t = uint16(t) + 1
                            u = 0
                            continue 
                else:
                    _23747 = mem[64]
                    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                    mem[mem[64] + 96] = 2
                    mem[64] = mem[64] + 192
                    mem[_23747 + 128 len 64] = call.data[calldata.size len 64]
                    if uint16(var227003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_23747 + 96]:
                        revert with 'NH{q', 50
                    mem[_23747 + 128] = mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[224] + 32] + 44 len 20]
                    if uint16(var227003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(t) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_23747 + 96]:
                        revert with 'NH{q', 50
                    mem[_23747 + 160] = mem[(32 * uint16(uint16(t) + 1)) + mem[(32 * uint16(var227003)) + mem[224] + 32] + 44 len 20]
                    if uint16(var227003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var227003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _23926 = mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var227003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if 3600 > -block.timestamp - 1:
                        revert with 'NH{q', 17
                    mem[_23747 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_23747 + 196] = u
                    mem[_23747 + 228] = 1
                    mem[_23747 + 260] = 160
                    mem[_23747 + 356] = mem[_23747 + 96]
                    idx = 0
                    u = _23747 + 128
                    v = _23747 + 388
                    while idx < mem[_23747 + 96]:
                        mem[v] = mem[u + 12 len 20]
                        _23714 = mem[mem[(32 * uint16(var227003)) + s + 32]]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_23747 + 292] = this.address
                    mem[_23747 + 324] = block.timestamp + 3600
                    require ext_code.size(sub_a5218fd8[uint16(_23926)])
                    call sub_a5218fd8[uint16(_23926)].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _23747 + (32 * mem[_23747 + 96]) + -mem[64] + 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _25747 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _25761 = mem[_25747]
                    require mem[_25747] <= test266151307()
                    require _25747 + mem[_25747] + 31 < _25747 + return_data.size
                    _25774 = mem[_25747 + mem[_25747]]
                    if mem[_25747 + mem[_25747]] > test266151307():
                        revert with 'NH{q', 65
                    if _25747 + ceil32(return_data.size) + floor32(mem[_25747 + mem[_25747]]) + 1 > test266151307() or floor32(mem[_25747 + mem[_25747]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _25747 + ceil32(return_data.size) + floor32(mem[_25747 + mem[_25747]]) + 1
                    mem[_25747 + ceil32(return_data.size)] = _25774
                    require _25761 + (32 * _25774) + 32 <= return_data.size
                    idx = 0
                    u = _25747 + _25761 + 32
                    v = _25747 + ceil32(return_data.size) + 32
                    while idx < _25774:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _23714 = mem[mem[(32 * uint16(var227003)) + s + 32]]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _25774:
                        revert with 'NH{q', 50
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var227003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _23714 = mem[mem[(32 * uint16(var227003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = mem[_25747 + ceil32(return_data.size) + 64]
                    continue 
            revert with 'NH{q', 17
        if var223008 < mem[96]:
            revert with 0, 'AmountOut is lower than expedted because of slippage rate'
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var223008
            require ext_code.size(address(_2992))
            call address(_2992).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, var223008
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16636] == bool(mem[_16636])
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var223008);
        else:
            if bool(('cd', 4)[5]) == 1:
                mem[mem[64] + 4] = var223008
                require ext_code.size(sub_b6a21b61Address)
                call sub_b6a21b61Address.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args var223008
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16567 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16567] == mem[_16567]
                call msg.sender with:
                   value var223008 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Swapped(msg.sender, address(_2997), sub_ba32e624Address, mem[128], var223008);
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = var223008
                require ext_code.size(address(_2992))
                call address(_2992).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, var223008
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16642] == bool(mem[_16642])
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[224] + 32]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                    revert with 'NH{q', 50
                emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var223008);
        return var223008
    if msg.value == mem[128]:
        require ext_code.size(sub_b6a21b61Address)
        call sub_b6a21b61Address.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3010 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3010] == mem[_3010]
        if var202003 < 1:
            revert with 'NH{q', 17
        if uint16(var206002) <= var206001:
            if uint16(var208001) >= mem[mem[160]]:
                revert with 'NH{q', 50
            if uint16(var210003) >= mem[mem[224]]:
                revert with 'NH{q', 50
            _23718 = mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]
            s = mem[224]
            t = var289001
            u = var289003
            while _23718 >= 2:
                if uint16(t) > _23718 - 2:
                    if var210009 > -u - 1:
                        revert with 'NH{q', 17
                    if uint16(var210003) == 65535:
                        revert with 'NH{q', 17
                    if mem[mem[160]] < 1:
                        revert with 'NH{q', 17
                    if uint16(uint16(var210003) + 1) <= mem[mem[160]] - 1:
                        if uint16(uint16(var210003) + 1) >= mem[mem[160]]:
                            revert with 'NH{q', 50
                        if uint16(uint16(var210003) + 1) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23718 = mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]
                        s = mem[224]
                        t = 0
                        u = mem[(32 * uint16(uint16(var210003) + 1)) + mem[160] + 32]
                        continue 
                    if var210009 + u < mem[96]:
                        revert with 0, 'AmountOut is lower than expedted because of slippage rate'
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[224] + 32]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var210009 + u
                        require ext_code.size(address(_2992))
                        call address(_2992).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, var210009 + u
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _24052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_24052] == bool(mem[_24052])
                        if 0 >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[224] + 32]] < 1:
                            revert with 'NH{q', 17
                        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                            revert with 'NH{q', 50
                        emit Swapped(msg.sender, sub_ba32e624Address, address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var210009 + u);
                    else:
                        if bool(mem[288]) == 1:
                            mem[mem[64] + 4] = var210009 + u
                            require ext_code.size(sub_b6a21b61Address)
                            call sub_b6a21b61Address.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var210009 + u)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24012 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_24012] == mem[_24012]
                            call msg.sender with:
                               value var210009 + u wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Swapped(msg.sender, sub_ba32e624Address, sub_ba32e624Address, mem[128], var210009 + u);
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = var210009 + u
                            require ext_code.size(address(_2992))
                            call address(_2992).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, var210009 + u
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24063 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_24063] == bool(mem[_24063])
                            if 0 >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            if mem[mem[mem[224] + 32]] < 1:
                                revert with 'NH{q', 17
                            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                                revert with 'NH{q', 50
                            emit Swapped(msg.sender, sub_ba32e624Address, address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var210009 + u);
                    return (var210009 + u)
                if uint16(var210003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] > 7:
                    if uint16(var210003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] > 9:
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var210003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23718 = mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = u
                        continue 
                    if uint16(var210003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] < 8:
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var210003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23718 = mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = u
                        continue 
                    if uint16(var210003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if uint16(var210003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] == 8:
                        # nil
                    else:
                        if uint16(var210003) >= mem[mem[192]]:
                            revert with 'NH{q', 50
                        if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] == 9:
                            # nil
                        else:
                            if uint16(t) == 65535:
                                revert with 'NH{q', 17
                            if uint16(var210003) >= mem[mem[224]]:
                                revert with 'NH{q', 50
                            _23718 = mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]
                            s = mem[224]
                            t = uint16(t) + 1
                            u = 0
                            continue 
                else:
                    _23751 = mem[64]
                    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                    mem[mem[64] + 96] = 2
                    mem[64] = mem[64] + 192
                    mem[_23751 + 128 len 64] = call.data[calldata.size len 64]
                    if uint16(var210003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_23751 + 96]:
                        revert with 'NH{q', 50
                    mem[_23751 + 128] = mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[224] + 32] + 44 len 20]
                    if uint16(var210003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if uint16(t) > 65534:
                        revert with 'NH{q', 17
                    if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_23751 + 96]:
                        revert with 'NH{q', 50
                    mem[_23751 + 160] = mem[(32 * uint16(uint16(t) + 1)) + mem[(32 * uint16(var210003)) + mem[224] + 32] + 44 len 20]
                    if uint16(var210003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var210003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    _23928 = mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 32]
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var210003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if 3600 > -block.timestamp - 1:
                        revert with 'NH{q', 17
                    mem[_23751 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_23751 + 196] = u
                    mem[_23751 + 228] = 1
                    mem[_23751 + 260] = 160
                    mem[_23751 + 356] = mem[_23751 + 96]
                    idx = 0
                    u = _23751 + 128
                    v = _23751 + 388
                    while idx < mem[_23751 + 96]:
                        mem[v] = mem[u + 12 len 20]
                        _23718 = mem[mem[(32 * uint16(var210003)) + s + 32]]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_23751 + 292] = this.address
                    mem[_23751 + 324] = block.timestamp + 3600
                    require ext_code.size(sub_a5218fd8[uint16(_23928)])
                    call sub_a5218fd8[uint16(_23928)].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _23751 + (32 * mem[_23751 + 96]) + -mem[64] + 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _25749 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _25767 = mem[_25749]
                    require mem[_25749] <= test266151307()
                    require _25749 + mem[_25749] + 31 < _25749 + return_data.size
                    _25776 = mem[_25749 + mem[_25749]]
                    if mem[_25749 + mem[_25749]] > test266151307():
                        revert with 'NH{q', 65
                    if _25749 + ceil32(return_data.size) + floor32(mem[_25749 + mem[_25749]]) + 1 > test266151307() or floor32(mem[_25749 + mem[_25749]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _25749 + ceil32(return_data.size) + floor32(mem[_25749 + mem[_25749]]) + 1
                    mem[_25749 + ceil32(return_data.size)] = _25776
                    require _25767 + (32 * _25776) + 32 <= return_data.size
                    idx = 0
                    u = _25749 + _25767 + 32
                    v = _25749 + ceil32(return_data.size) + 32
                    while idx < _25776:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _23718 = mem[mem[(32 * uint16(var210003)) + s + 32]]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if 1 >= _25776:
                        revert with 'NH{q', 50
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var210003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _23718 = mem[mem[(32 * uint16(var210003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = mem[_25749 + ceil32(return_data.size) + 64]
                    continue 
            revert with 'NH{q', 17
        if var206008 < mem[96]:
            revert with 0, 'AmountOut is lower than expedted because of slippage rate'
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var206008
            require ext_code.size(address(_2992))
            call address(_2992).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, var206008
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16640] == bool(mem[_16640])
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            emit Swapped(msg.sender, sub_ba32e624Address, address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var206008);
        else:
            if bool(('cd', 4)[5]) == 1:
                mem[mem[64] + 4] = var206008
                require ext_code.size(sub_b6a21b61Address)
                call sub_b6a21b61Address.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args var206008
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16577] == mem[_16577]
                call msg.sender with:
                   value var206008 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Swapped(msg.sender, sub_ba32e624Address, sub_ba32e624Address, mem[128], var206008);
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = var206008
                require ext_code.size(address(_2992))
                call address(_2992).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, var206008
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16648] == bool(mem[_16648])
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[224] + 32]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                    revert with 'NH{q', 50
                emit Swapped(msg.sender, sub_ba32e624Address, address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var206008);
        return var206008
    _3006 = mem[128]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = _3006
    require ext_code.size(address(_2983))
    call address(_2983).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), _3006
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3017 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_3017] == bool(mem[_3017])
    if var220003 < 1:
        revert with 'NH{q', 17
    if uint16(var224002) <= var224001:
        if uint16(var226001) >= mem[mem[160]]:
            revert with 'NH{q', 50
        if uint16(var228003) >= mem[mem[224]]:
            revert with 'NH{q', 50
        _23716 = mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]
        s = mem[224]
        t = var307001
        u = var307003
        while _23716 >= 2:
            if uint16(t) > _23716 - 2:
                if var228009 > -u - 1:
                    revert with 'NH{q', 17
                if uint16(var228003) == 65535:
                    revert with 'NH{q', 17
                if mem[mem[160]] < 1:
                    revert with 'NH{q', 17
                if uint16(uint16(var228003) + 1) <= mem[mem[160]] - 1:
                    if uint16(uint16(var228003) + 1) >= mem[mem[160]]:
                        revert with 'NH{q', 50
                    if uint16(uint16(var228003) + 1) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _23716 = mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]
                    s = mem[224]
                    t = 0
                    u = mem[(32 * uint16(uint16(var228003) + 1)) + mem[160] + 32]
                    continue 
                if var228009 + u < mem[96]:
                    revert with 0, 'AmountOut is lower than expedted because of slippage rate'
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if 0 >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[224] + 32]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = var228009 + u
                    require ext_code.size(address(_2992))
                    call address(_2992).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, var228009 + u
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24049 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_24049] == bool(mem[_24049])
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[224] + 32]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                        revert with 'NH{q', 50
                    emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var228009 + u);
                else:
                    if bool(mem[288]) == 1:
                        mem[mem[64] + 4] = var228009 + u
                        require ext_code.size(sub_b6a21b61Address)
                        call sub_b6a21b61Address.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args (var228009 + u)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _24011 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_24011] == mem[_24011]
                        call msg.sender with:
                           value var228009 + u wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Swapped(msg.sender, address(_2997), sub_ba32e624Address, mem[128], var228009 + u);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var228009 + u
                        require ext_code.size(address(_2992))
                        call address(_2992).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, var228009 + u
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _24059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_24059] == bool(mem[_24059])
                        if 0 >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[224] + 32]] < 1:
                            revert with 'NH{q', 17
                        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                            revert with 'NH{q', 50
                        emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var228009 + u);
                return (var228009 + u)
            if uint16(var228003) >= mem[mem[192]]:
                revert with 'NH{q', 50
            if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                revert with 'NH{q', 50
            if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] > 7:
                if uint16(var228003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] > 9:
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var228003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _23716 = mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = u
                    continue 
                if uint16(var228003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] < 8:
                    if uint16(t) == 65535:
                        revert with 'NH{q', 17
                    if uint16(var228003) >= mem[mem[224]]:
                        revert with 'NH{q', 50
                    _23716 = mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]
                    s = mem[224]
                    t = uint16(t) + 1
                    u = u
                    continue 
                if uint16(var228003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                    revert with 'NH{q', 50
                mem[0] = 14
                if uint16(var228003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] == 8:
                    # nil
                else:
                    if uint16(var228003) >= mem[mem[192]]:
                        revert with 'NH{q', 50
                    if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                        revert with 'NH{q', 50
                    if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] == 9:
                        # nil
                    else:
                        if uint16(t) == 65535:
                            revert with 'NH{q', 17
                        if uint16(var228003) >= mem[mem[224]]:
                            revert with 'NH{q', 50
                        _23716 = mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]
                        s = mem[224]
                        t = uint16(t) + 1
                        u = 0
                        continue 
            else:
                _23749 = mem[64]
                mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
                mem[mem[64] + 96] = 2
                mem[64] = mem[64] + 192
                mem[_23749 + 128 len 64] = call.data[calldata.size len 64]
                if uint16(var228003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_23749 + 96]:
                    revert with 'NH{q', 50
                mem[_23749 + 128] = mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[224] + 32] + 44 len 20]
                if uint16(var228003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                if uint16(t) > 65534:
                    revert with 'NH{q', 17
                if uint16(uint16(t) + 1) >= mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_23749 + 96]:
                    revert with 'NH{q', 50
                mem[_23749 + 160] = mem[(32 * uint16(uint16(t) + 1)) + mem[(32 * uint16(var228003)) + mem[224] + 32] + 44 len 20]
                if uint16(var228003) >= mem[mem[192]]:
                    revert with 'NH{q', 50
                if uint16(t) >= mem[mem[(32 * uint16(var228003)) + mem[192] + 32]]:
                    revert with 'NH{q', 50
                _23927 = mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 32]
                if mem[(32 * uint16(t)) + mem[(32 * uint16(var228003)) + mem[192] + 32] + 62 len 2] >= sub_a5218fd8.length:
                    revert with 'NH{q', 50
                mem[0] = 14
                if 3600 > -block.timestamp - 1:
                    revert with 'NH{q', 17
                mem[_23749 + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_23749 + 196] = u
                mem[_23749 + 228] = 1
                mem[_23749 + 260] = 160
                mem[_23749 + 356] = mem[_23749 + 96]
                idx = 0
                u = _23749 + 128
                v = _23749 + 388
                while idx < mem[_23749 + 96]:
                    mem[v] = mem[u + 12 len 20]
                    _23716 = mem[mem[(32 * uint16(var228003)) + s + 32]]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_23749 + 292] = this.address
                mem[_23749 + 324] = block.timestamp + 3600
                require ext_code.size(sub_a5218fd8[uint16(_23927)])
                call sub_a5218fd8[uint16(_23927)].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _23749 + (32 * mem[_23749 + 96]) + -mem[64] + 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _25748 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25764 = mem[_25748]
                require mem[_25748] <= test266151307()
                require _25748 + mem[_25748] + 31 < _25748 + return_data.size
                _25775 = mem[_25748 + mem[_25748]]
                if mem[_25748 + mem[_25748]] > test266151307():
                    revert with 'NH{q', 65
                if _25748 + ceil32(return_data.size) + floor32(mem[_25748 + mem[_25748]]) + 1 > test266151307() or floor32(mem[_25748 + mem[_25748]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _25748 + ceil32(return_data.size) + floor32(mem[_25748 + mem[_25748]]) + 1
                mem[_25748 + ceil32(return_data.size)] = _25775
                require _25764 + (32 * _25775) + 32 <= return_data.size
                idx = 0
                u = _25748 + _25764 + 32
                v = _25748 + ceil32(return_data.size) + 32
                while idx < _25775:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _23716 = mem[mem[(32 * uint16(var228003)) + s + 32]]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _25775:
                    revert with 'NH{q', 50
                if uint16(t) == 65535:
                    revert with 'NH{q', 17
                if uint16(var228003) >= mem[mem[224]]:
                    revert with 'NH{q', 50
                _23716 = mem[mem[(32 * uint16(var228003)) + mem[224] + 32]]
                s = mem[224]
                t = uint16(t) + 1
                u = mem[_25748 + ceil32(return_data.size) + 64]
                continue 
        revert with 'NH{q', 17
    if var224008 < mem[96]:
        revert with 0, 'AmountOut is lower than expedted because of slippage rate'
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if 0 >= mem[mem[224]]:
        revert with 'NH{q', 50
    if mem[mem[mem[224] + 32]] < 1:
        revert with 'NH{q', 17
    if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
        revert with 'NH{q', 50
    if mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 44 len 20] != sub_b6a21b61Address:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = var224008
        require ext_code.size(address(_2992))
        call address(_2992).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, var224008
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16638 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16638] == bool(mem[_16638])
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[224]]:
            revert with 'NH{q', 50
        if mem[mem[mem[224] + 32]] < 1:
            revert with 'NH{q', 17
        if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
            revert with 'NH{q', 50
        emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var224008);
    else:
        if bool(('cd', 4)[5]) == 1:
            mem[mem[64] + 4] = var224008
            require ext_code.size(sub_b6a21b61Address)
            call sub_b6a21b61Address.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args var224008
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16572 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16572] == mem[_16572]
            call msg.sender with:
               value var224008 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Swapped(msg.sender, address(_2997), sub_ba32e624Address, mem[128], var224008);
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var224008
            require ext_code.size(address(_2992))
            call address(_2992).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, var224008
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16645 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16645] == bool(mem[_16645])
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[224]]:
                revert with 'NH{q', 50
            if mem[mem[mem[224] + 32]] < 1:
                revert with 'NH{q', 17
            if mem[mem[mem[224] + 32]] - 1 >= mem[mem[mem[224] + 32]]:
                revert with 'NH{q', 50
            emit Swapped(msg.sender, address(_2997), address(mem[(32 * mem[mem[mem[224] + 32]] - 1) + mem[mem[224] + 32] + 32]), mem[128], var224008);
    return var224008
}



}
