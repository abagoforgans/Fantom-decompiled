contract main {




// =====================  Runtime code  =====================


#
#  - wealth_by_level(uint256 arg1)
#
const name = 'Rarity RAR', 0

const decimals = 18

const symbol = 'RAR', 0

const maxSupply = 21000000 * 10^18


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 claimed;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function claimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimed[arg1]
}

function _fallback() payable {
    revert
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    allowance[arg1][arg2] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if balanceOf[arg1] < arg3:
        revert with 'NH{q', 17
    balanceOf[arg1] -= arg3
    if balanceOf[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if arg1 != arg2:
        if allowance[arg2][arg1] != -1:
            if allowance[arg2][arg1] < arg4:
                revert with 'NH{q', 17
            allowance[arg2][arg1] -= arg4
            emit Approval((allowance[arg2][arg1] - arg4), arg2, arg1);
    if balanceOf[arg2] < arg4:
        revert with 'NH{q', 17
    balanceOf[arg2] -= arg4
    if balanceOf[arg3] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function claimable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 21000000 * 10^18 < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There will be only 21 million RAR in existence'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    if ext_call.return_data[12 len 20] != msg.sender:
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 1:
        revert with 0, 'Only true heroes can claim RAR!'
    if claimed[arg1] > -2:
        revert with 'NH{q', 17
    idx = claimed[arg1] + 1
    while idx <= ext_call.return_data[0]:
        s = 1
        t = 0
        while s < idx:
            if s and 100 * 10^18 > -1 / s:
                revert with 'NH{q', 17
            if t > (-100 * 10^18 * s) - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + (100 * 10^18 * s)
            continue 
        if 0 > -t - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 21000000 * 10^18 < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There will be only 21 million RAR in existence'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    if ext_call.return_data[12 len 20] == msg.sender:
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 1:
            revert with 0, 'Only true heroes can claim RAR!'
        mem[0] = arg1
        mem[32] = 3
        if claimed[arg1] > -2:
            revert with 'NH{q', 17
        idx = stor[sha3(mem[0 len 64])] + 1
        while idx <= ext_call.return_data[0]:
            s = 1
            t = 0
            while s < idx:
                if s and 100 * 10^18 > -1 / s:
                    revert with 'NH{q', 17
                if t > (-100 * 10^18 * s) - 1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + (100 * 10^18 * s)
                continue 
            if totalSupply > -t - 1:
                revert with 'NH{q', 17
            totalSupply += t
            mem[0] = arg1
            mem[32] = 2
            if balanceOf[arg1] > -t - 1:
                revert with 'NH{q', 17
            balanceOf[arg1] += t
            mem[(2 * ceil32(return_data.size)) + 96] = t
            emit Transfer(t, arg1, arg1);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 1:
            revert with 0, 'Only true heroes can claim RAR!'
        mem[0] = arg1
        mem[32] = 3
        if claimed[arg1] > -2:
            revert with 'NH{q', 17
        idx = stor[sha3(mem[0 len 64])] + 1
        while idx <= ext_call.return_data[0]:
            s = 1
            t = 0
            while s < idx:
                if s and 100 * 10^18 > -1 / s:
                    revert with 'NH{q', 17
                if t > (-100 * 10^18 * s) - 1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + (100 * 10^18 * s)
                continue 
            if totalSupply > -t - 1:
                revert with 'NH{q', 17
            totalSupply += t
            mem[0] = arg1
            mem[32] = 2
            if balanceOf[arg1] > -t - 1:
                revert with 'NH{q', 17
            balanceOf[arg1] += t
            mem[(4 * ceil32(return_data.size)) + 96] = t
            emit Transfer(t, arg1, arg1);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    claimed[arg1] = ext_call.return_data[0]
}



}
