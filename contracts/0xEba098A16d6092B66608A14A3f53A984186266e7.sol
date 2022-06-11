contract main {




// =====================  Runtime code  =====================


#
#  - sub_98980b43(?)
#
mapping of struct stor-1;
address rarityAddress;
address adminAddress;
address sub_02786e09Address;
mapping of uint256 stor3;
array of struct sub_5b3c2e50;
mapping of struct sub_7ed12b7b;
mapping of struct sub_d106b527;
uint256 sub_da58f56b;
array of struct stor8;

function sub_02786e09(?) payable {
    return sub_02786e09Address
}

function sub_5b3c2e50(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_5b3c2e50[arg1].field_0
    return sub_5b3c2e50[arg1][arg2].field_0, 
           sub_5b3c2e50[arg1][arg2].field_256,
           sub_5b3c2e50[arg1][arg2].field_512,
           sub_5b3c2e50[arg1][arg2].field_768
}

function sub_7ed12b7b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_7ed12b7b[arg1].field_0), bool(sub_7ed12b7b[arg1].field_8)
}

function sub_d106b527(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_d106b527[arg1].field_0), bool(sub_d106b527[arg1].field_8)
}

function sub_da58f56b(?) payable {
    return sub_da58f56b
}

function admin() payable {
    return adminAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function sub_e194f9fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[stor3[arg1]] != arg1:
        return -1
    return stor3[arg1]
}

function sub_f138997b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[stor3[arg1]] != arg1:
        return 0
    return stor3[arg1] != -1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'no authority'
    adminAddress = arg1
}

function sub_6a8de171(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        return sha3(arg2, arg1)
    return sha3(arg1, arg2)
}

function sub_fad424e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'no authority'
    sub_02786e09Address = address(arg1)
}

function sub_776164a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor8[arg1][2].field_0
    idx = 128
    s = 0
    while stor8[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(stor8[arg1].field_0), 
           stor8[arg1].field_256,
           Array(len=stor8[arg1][2].length, data=mem[128 len ceil32(stor8[arg1][2].length)]),
           stor8[arg1].field_768,
           bool(stor8[arg1].field_1024)
}

function sub_6e58d348(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if sub_02786e09Address != msg.sender:
        revert with 0, 'no authority'
    idx = 288
    s = 0
    while stor8[arg1][2].length + 256 > idx:
        mem[idx + 32] = stor8[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor8[arg1].field_0:
        revert with 0, 'neither side has submit a divorce proposal'
    if stor8[arg1].field_1024:
        revert with 0, 'application is already heard'
    if stor3[stor3[stor8[arg1].field_256]] != stor8[arg1].field_256:
        if stor8[arg1].field_256 >= -1:
            emit 0xd8ed420e: -1, stor8[arg1].field_256, Array(len=arg2.length, data=arg2[all])
        else:
            emit 0xd8ed420e: stor8[arg1].field_256, -1, Array(len=arg2.length, data=arg2[all])
    else:
        if stor8[arg1].field_256 >= stor3[stor8[arg1].field_256]:
            emit 0xd8ed420e: stor3[stor8[arg1].field_256], stor8[arg1].field_256, Array(len=arg2.length, data=arg2[all])
        else:
            emit 0xd8ed420e: stor8[arg1].field_256, stor3[stor8[arg1].field_256], Array(len=arg2.length, data=arg2[all])
    return 1
}

function sub_b570f7ce(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        mem[128] = arg2
        mem[160] = arg1
        mem[96] = 64
        mem[0] = sha3(arg2, arg1)
        mem[32] = 4
        mem[64] = (32 * sub_5b3c2e50[arg2][arg1].field_0) + 224
        mem[192] = sub_5b3c2e50[arg2][arg1].field_0
        s = 224
        idx = 0
        while idx < sub_5b3c2e50[arg2][arg1].field_0:
            mem[0] = sha3(sha3(arg2, arg1), 4)
            _34 = mem[64]
            mem[64] = mem[64] + 128
            mem[_34] = sub_5b3c2e50[arg2][arg1][idx].field_0
            mem[_34 + 32] = sub_5b3c2e50[arg2][arg1][idx].field_256
            mem[_34 + 64] = sub_5b3c2e50[arg2][arg1][idx].field_512
            mem[_34 + 96] = sub_5b3c2e50[arg2][arg1][idx].field_768
            mem[s] = _34
            s = s + 32
            idx = idx + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[192]
        mem[mem[64] + 32] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 64
        while idx < _39:
            _53 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_53 + 32]
            mem[t + 64] = mem[_53 + 64]
            mem[t + 96] = mem[_53 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _37 + (128 * _39) + -mem[64] + 64
    mem[128] = arg1
    mem[160] = arg2
    mem[96] = 64
    mem[0] = sha3(arg1, arg2)
    mem[32] = 4
    mem[64] = (32 * sub_5b3c2e50[arg1][arg2].field_0) + 224
    mem[192] = sub_5b3c2e50[arg1][arg2].field_0
    s = 224
    idx = 0
    while idx < sub_5b3c2e50[arg1][arg2].field_0:
        mem[0] = sha3(sha3(arg1, arg2), 4)
        _36 = mem[64]
        mem[64] = mem[64] + 128
        mem[_36] = sub_5b3c2e50[arg1][arg2][idx].field_0
        mem[_36 + 32] = sub_5b3c2e50[arg1][arg2][idx].field_256
        mem[_36 + 64] = sub_5b3c2e50[arg1][arg2][idx].field_512
        mem[_36 + 96] = sub_5b3c2e50[arg1][arg2][idx].field_768
        mem[s] = _36
        s = s + 32
        idx = idx + 1
        continue 
    _38 = mem[64]
    mem[mem[64]] = 32
    _40 = mem[192]
    mem[mem[64] + 32] = mem[192]
    idx = 0
    s = 224
    t = mem[64] + 64
    while idx < _40:
        _54 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_54 + 32]
        mem[t + 64] = mem[_54 + 64]
        mem[t + 96] = mem[_54 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _38 + (128 * _40) + -mem[64] + 64
}

function sub_463ee705(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_02786e09Address != msg.sender:
        revert with 0, 'no authority'
    idx = 288
    s = 0
    while stor8[arg1][2].length + 256 > idx:
        mem[idx + 32] = stor8[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor8[arg1].field_0:
        revert with 0, 'neither side has submit a divorce proposal'
    if stor8[arg1].field_1024:
        revert with 0, 'application is already heard'
    if stor3[stor3[stor8[arg1].field_256]] != stor8[arg1].field_256:
        if stor8[arg1].field_256 < -1:
            stor3[stor8[arg1].field_256] = -1
            stor3[-1] = -1
            stor5[('map', ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))), ('name', 'stor-1', -1))].field_0 = 0
            stor5[('map', ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))), ('name', 'stor-1', -1))].field_8 = 0
            stor8[arg1].field_1024 = 1
            emit 0x3c2a9452: stor8[arg1].field_256, -1, Array(len=9, data='by decree')
        else:
            stor3[-1] = -1
            stor3[stor8[arg1].field_256] = -1
            if -1 >= stor8[arg1].field_256:
                stor5[('map', ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))), ('name', 'stor-1', -1))].field_0 = 0
                stor5[('map', ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor8', 8)))), ('name', 'stor-1', -1))].field_8 = 0
            else:
                sub_7ed12b7b[-1][stor8[arg1].field_256].field_0 = 0
                sub_7ed12b7b[-1][stor8[arg1].field_256].field_8 = 0
            stor8[arg1].field_1024 = 1
            emit 0x3c2a9452: -1, stor8[arg1].field_256, Array(len=9, data='by decree')
    else:
        if stor8[arg1].field_256 < stor3[stor8[arg1].field_256]:
            stor3[stor8[arg1].field_256] = -1
            stor3[stor3[stor8[arg1].field_256]] = -1
            sub_7ed12b7b[stor8[arg1].field_256][stor3[stor8[arg1].field_256]].field_0 = 0
            sub_7ed12b7b[stor8[arg1].field_256][stor3[stor8[arg1].field_256]].field_8 = 0
            stor8[arg1].field_1024 = 1
            emit 0x3c2a9452: stor8[arg1].field_256, stor3[stor8[arg1].field_256], Array(len=9, data='by decree')
        else:
            stor3[stor3[stor8[arg1].field_256]] = -1
            stor3[stor8[arg1].field_256] = -1
            if stor3[stor8[arg1].field_256] >= stor8[arg1].field_256:
                sub_7ed12b7b[stor8[arg1].field_256][stor3[stor8[arg1].field_256]].field_0 = 0
                sub_7ed12b7b[stor8[arg1].field_256][stor3[stor8[arg1].field_256]].field_8 = 0
            else:
                sub_7ed12b7b[stor3[stor8[arg1].field_256]][stor8[arg1].field_256].field_0 = 0
                sub_7ed12b7b[stor3[stor8[arg1].field_256]][stor8[arg1].field_256].field_8 = 0
            stor8[arg1].field_1024 = 1
            emit 0x3c2a9452: stor3[stor8[arg1].field_256], stor8[arg1].field_256, Array(len=9, data='by decree')
    return 1
}

function sub_1f7bf3a1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if arg1 == arg2:
        revert with 0, 'must different summoner'
    require ext_code.size(rarityAddress)
    if arg1 >= arg2:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'none of your business'
        if stor3[stor3[arg2]] != arg2:
            if arg1 != -1:
                revert with 0, 'they are not couple'
        else:
            if stor3[arg2] != arg1:
                revert with 0, 'they are not couple'
        if address(ext_call.return_data[0]) != msg.sender:
            if address(ext_call.return_data[0]) == msg.sender:
                revert with 0, 'why dont they divorce by agreement'
        else:
            if ext_call.return_data[12 len 20] == msg.sender:
                revert with 0, 'why dont they divorce by agreement'
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 288] = arg3.length
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + arg3.length + 320] = 0
        sub_da58f56b++
        stor8[stor7].field_0 = 1
        if address(ext_call.return_data[0]) != msg.sender:
            stor8[stor7].field_256 = arg2
        else:
            stor8[stor7].field_256 = arg1
    else:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'none of your business'
        if stor3[stor3[arg1]] != arg1:
            if arg2 != -1:
                revert with 0, 'they are not couple'
        else:
            if stor3[arg1] != arg2:
                revert with 0, 'they are not couple'
        if address(ext_call.return_data[0]) != msg.sender:
            if address(ext_call.return_data[0]) == msg.sender:
                revert with 0, 'why dont they divorce by agreement'
        else:
            if ext_call.return_data[12 len 20] == msg.sender:
                revert with 0, 'why dont they divorce by agreement'
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 288] = arg3.length
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + arg3.length + 320] = 0
        sub_da58f56b++
        stor8[stor7].field_0 = 1
        if address(ext_call.return_data[0]) != msg.sender:
            stor8[stor7].field_256 = arg1
        else:
            stor8[stor7].field_256 = arg2
    if Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[(2 * ceil32(return_data.size)) + arg3.length + 320 len -arg3.length + ceil32(arg3.length)]:
        stor8[stor7][2][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[(2 * ceil32(return_data.size)) + arg3.length + 320 len -arg3.length + ceil32(arg3.length)], data=mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[(2 * ceil32(return_data.size)) + arg3.length + 320 len -arg3.length + ceil32(arg3.length)]])
    else:
        stor8[stor7].field_512 = 0
        idx = 0
        while stor8[stor7][2].length + 31 / 32 > idx:
            stor8[stor7][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor8[stor7].field_768 = block.timestamp
    stor8[stor7].field_1024 = 0
    emit 0x413e8885: sub_da58f56b
    return sub_da58f56b
}

function sub_4f60b21c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0, 'must different summoner'
    require ext_code.size(rarityAddress)
    if arg1 >= arg2:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg2 >= arg1:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
        else:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
                    else:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
        emit 0xff4f7666: arg2, arg1
    else:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 >= arg2:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg2][arg1].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg2][arg1].field_8))
        else:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_7ed12b7b[arg2][arg1].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg2][arg1].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
                    else:
                        sub_7ed12b7b[arg1][arg2].field_0 = uint8(bool(sub_7ed12b7b[arg1][arg2].field_0))
                        sub_7ed12b7b[arg1][arg2].field_8 = Mask(248, 0, bool(sub_7ed12b7b[arg1][arg2].field_8))
        emit 0xff4f7666: arg1, arg2
    return 1
}

function sub_a57ff5ff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0, 'must different summoner'
    require ext_code.size(rarityAddress)
    if arg1 >= arg2:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg2 >= arg1:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
        else:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
        emit 0x1f229b52: arg2, arg1
    else:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 >= arg2:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
        else:
            if address(ext_call.return_data[0]) == msg.sender:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(address(ext_call.return_data[0]) != msg.sender)
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
            else:
                if address(ext_call.return_data[0]) == msg.sender:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, address(ext_call.return_data[0]) != msg.sender)
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
        emit 0x1f229b52: arg1, arg2
    return 1
}

function sub_3ed871fe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0, 'must different summoner'
    require ext_code.size(rarityAddress)
    if arg1 >= arg2:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'none of your business'
        if stor3[stor3[arg2]] != arg2:
            if arg1 != -1:
                revert with 0, 'they are not couple'
        else:
            if stor3[arg2] != arg1:
                revert with 0, 'they are not couple'
        if arg2 >= arg1:
            if sub_d106b527[arg1][arg2].field_0:
                if sub_d106b527[arg1][arg2].field_8:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    if not sub_d106b527[arg1][arg2].field_0:
                        return 0
                    if not sub_d106b527[arg1][arg2].field_8:
                        return 0
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if not sub_d106b527[arg1][arg2].field_0:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
            else:
                if sub_d106b527[arg1][arg2].field_8:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if not sub_d106b527[arg1][arg2].field_8:
                        return 0
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
        else:
            if sub_d106b527[arg2][arg1].field_0:
                if sub_d106b527[arg2][arg1].field_8:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    if not sub_d106b527[arg2][arg1].field_0:
                        return 0
                    if not sub_d106b527[arg2][arg1].field_8:
                        return 0
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if not sub_d106b527[arg2][arg1].field_0:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
            else:
                if sub_d106b527[arg2][arg1].field_8:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if not sub_d106b527[arg2][arg1].field_8:
                        return 0
                else:
                    if arg2 >= arg1:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
        stor3[arg2] = -1
        stor3[arg1] = -1
        if arg2 >= arg1:
            sub_7ed12b7b[arg1][arg2].field_0 = 0
            sub_7ed12b7b[arg1][arg2].field_8 = 0
            require sub_5b3c2e50[arg1][arg2].field_0 - 1 < sub_5b3c2e50[arg1][arg2].field_0
            sub_5b3c2e50[arg1][arg2][sub_5b3c2e50[arg1][arg2].field_0 - 1].field_768 = block.timestamp
        else:
            sub_7ed12b7b[arg2][arg1].field_0 = 0
            sub_7ed12b7b[arg2][arg1].field_8 = 0
            require sub_5b3c2e50[arg2][arg1].field_0 - 1 < sub_5b3c2e50[arg2][arg1].field_0
            sub_5b3c2e50[arg2][arg1][sub_5b3c2e50[arg2][arg1].field_0 - 1].field_768 = block.timestamp
        emit 0x3c2a9452: arg2, arg1, Array(len=12, data='by agreement')
    else:
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'none of your business'
        if stor3[stor3[arg1]] != arg1:
            if arg2 != -1:
                revert with 0, 'they are not couple'
        else:
            if stor3[arg1] != arg2:
                revert with 0, 'they are not couple'
        if arg1 >= arg2:
            if sub_d106b527[arg2][arg1].field_0:
                if sub_d106b527[arg2][arg1].field_8:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    if not sub_d106b527[arg2][arg1].field_0:
                        return 0
                    if not sub_d106b527[arg2][arg1].field_8:
                        return 0
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg2][arg1].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if not sub_d106b527[arg2][arg1].field_0:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
            else:
                if sub_d106b527[arg2][arg1].field_8:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg2][arg1].field_8))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if not sub_d106b527[arg2][arg1].field_8:
                        return 0
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
        else:
            if sub_d106b527[arg1][arg2].field_0:
                if sub_d106b527[arg1][arg2].field_8:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    if not sub_d106b527[arg1][arg2].field_0:
                        return 0
                    if not sub_d106b527[arg1][arg2].field_8:
                        return 0
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(sub_d106b527[arg1][arg2].field_0))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if not sub_d106b527[arg1][arg2].field_0:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
            else:
                if sub_d106b527[arg1][arg2].field_8:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(sub_d106b527[arg1][arg2].field_8))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if not sub_d106b527[arg1][arg2].field_8:
                        return 0
                else:
                    if arg1 >= arg2:
                        sub_d106b527[arg2][arg1].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg2][arg1].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    else:
                        sub_d106b527[arg1][arg2].field_0 = uint8(bool(address(ext_call.return_data[0]) == msg.sender))
                        sub_d106b527[arg1][arg2].field_8 = Mask(248, 0, bool(address(ext_call.return_data[0]) == msg.sender))
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
                    if address(ext_call.return_data[0]) != msg.sender:
                        return 0
        stor3[arg1] = -1
        stor3[arg2] = -1
        if arg1 >= arg2:
            sub_7ed12b7b[arg2][arg1].field_0 = 0
            sub_7ed12b7b[arg2][arg1].field_8 = 0
            require sub_5b3c2e50[arg2][arg1].field_0 - 1 < sub_5b3c2e50[arg2][arg1].field_0
            sub_5b3c2e50[arg2][arg1][sub_5b3c2e50[arg2][arg1].field_0 - 1].field_768 = block.timestamp
        else:
            sub_7ed12b7b[arg1][arg2].field_0 = 0
            sub_7ed12b7b[arg1][arg2].field_8 = 0
            require sub_5b3c2e50[arg1][arg2].field_0 - 1 < sub_5b3c2e50[arg1][arg2].field_0
            sub_5b3c2e50[arg1][arg2][sub_5b3c2e50[arg1][arg2].field_0 - 1].field_768 = block.timestamp
        emit 0x3c2a9452: arg1, arg2, Array(len=12, data='by agreement')
    return 1
}



}
