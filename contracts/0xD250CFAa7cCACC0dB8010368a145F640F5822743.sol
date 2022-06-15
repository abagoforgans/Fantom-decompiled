contract main {




// =====================  Runtime code  =====================


const sub_3aa2a062(?) = 10^16

const rm = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb

const craft = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a


address stor0;
address stor1;
mapping of uint256 sub_1bd29448;
array of uint256 stor3;

function sub_1bd29448(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1bd29448[arg1]
}

function _fallback() payable {
    revert
}

function sub_0009ee39(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f1c4de09(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor3.length:
        mem[0] = stor3[idx]
        mem[32] = 2
        if sub_1bd29448[stor3[idx]] > 0:
            if idx >= stor3.length:
                revert with 'NH{q', 50
            mem[32] = 2
            if sub_1bd29448[stor3[idx]] < 1:
                revert with 'NH{q', 17
            sub_1bd29448[stor3[idx]]--
            if idx >= stor3.length:
                revert with 'NH{q', 50
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args stor3[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64] + 4] = stor3[idx]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args stor3[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == mem[_26]
            if idx >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = stor3[idx]
            emit 0x336be4dd: msg.sender, stor3[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    mem[132] = stor1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, stor1
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
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == mem[_25 + 12 len 20]
        if mem[_25 + 12 len 20] != msg.sender:
            revert with 0, 'DCM: sumonerId not belong to owner'
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
        while t < stor3.length:
            mem[0] = 3
            if stor3[t] != cd[((32 * idx) + cd[4] + 36)]:
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
        stor3.length++
        mem[0] = 3
        stor3[stor3.length] = cd[((32 * idx) + cd[4] + 36)]
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
    mem[132] = stor1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, stor1
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
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
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
    return (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
}



}
