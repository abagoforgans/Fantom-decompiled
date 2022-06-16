contract main {




// =====================  Runtime code  =====================


const getaddress = address(this.address)

const sub_3aa2a062(?) = 10^16

const rm = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb

const craft = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a


address stor0;
mapping of uint256 sub_1bd29448;
array of uint256 sub_bfbdaffd;

function sub_1bd29448(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1bd29448[arg1]
}

function sub_bfbdaffd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_bfbdaffd.length
    return sub_bfbdaffd[arg1]
}

function _fallback() payable {
    revert
}

function sub_a53481a4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7cede3a0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_26998eeb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_fd019150(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == mem[_13]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = cd[((32 * idx) + cd[4] + 36)]
        emit 0x336be4dd: msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f1c4de09(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < sub_bfbdaffd.length:
        mem[0] = sub_bfbdaffd[idx]
        mem[32] = 2
        if sub_1bd29448[stor3[idx]] > 0:
            if idx >= sub_bfbdaffd.length:
                revert with 'NH{q', 50
            mem[32] = 2
            if sub_1bd29448[stor3[idx]] < 1:
                revert with 'NH{q', 17
            sub_1bd29448[stor3[idx]]--
            if idx >= sub_bfbdaffd.length:
                revert with 'NH{q', 50
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_bfbdaffd[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= sub_bfbdaffd.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = sub_bfbdaffd[idx]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_bfbdaffd[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == mem[_26]
            if idx >= sub_bfbdaffd.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = sub_bfbdaffd[idx]
            emit 0x336be4dd: msg.sender, sub_bfbdaffd[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e9f75ea1(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if cd[36] <= 0:
        revert with 0, 'DCM: Cannot daycare for 0 days'
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, ' DCM: please approve operatorAddress !'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == mem[_21 + 12 len 20]
        if mem[_21 + 12 len 20] != msg.sender:
            revert with 0, 'DCM: sumonerId not belong to owner'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if cd[36] and 10^16 > -1 / cd[36]:
            revert with 'NH{q', 17
        if s > (-1 * 10^16 * cd[36]) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (10^16 * cd[36])
        continue 
    return (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
}

function sub_e64ac5ef(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if cd[36] <= 0:
        revert with 0, 'DCM: Cannot daycare for 0 days'
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, ' DCM: please approve operatorAddress !'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == mem[_27 + 12 len 20]
        if mem[_27 + 12 len 20] != msg.sender:
            revert with 0, 'DCM: sumonerId not belong to owner'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[32] = 2
        if sub_1bd29448[cd[((32 * idx) + cd[4] + 36)]] > -cd[36] - 1:
            revert with 'NH{q', 17
        sub_1bd29448[cd[((32 * idx) + cd[4] + 36)]] += cd[36]
        if cd[36] and 10^16 > -1 / cd[36]:
            revert with 'NH{q', 17
        if s > (-1 * 10^16 * cd[36]) - 1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        t = 0
        while t < sub_bfbdaffd.length:
            mem[0] = 3
            if sub_bfbdaffd[t] != cd[((32 * idx) + cd[4] + 36)]:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                continue 
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 64] = cd[36]
            emit 0x5603efb8: msg.sender, cd[((32 * idx) + cd[4] + 36)], cd[36]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (10^16 * cd[36])
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_bfbdaffd.length++
        mem[0] = 3
        sub_bfbdaffd[sub_bfbdaffd.length] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 64] = cd[36]
        emit 0x5603efb8: msg.sender, cd[((32 * idx) + cd[4] + 36)], cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (10^16 * cd[36])
        continue 
    if msg.value < s:
        revert with 0, 'DCM: Insufficient fee'
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
