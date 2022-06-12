contract main {




// =====================  Runtime code  =====================


const name = 'Rarity Battle', 0

const decimals = 18

const symbol = 'copper', 0


uint256 totalSupply;
uint256 battleCount;
mapping of uint256 balanceOf;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function battleCount() payable {
    return battleCount
}

function _fallback() payable {
    revert
}

function isWin(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > arg2:
        if arg1 < arg2:
            revert with 'NH{q', 17
        if arg1 - arg2 and arg1 - arg2 > -1 / arg1 - arg2:
            revert with 'NH{q', 17
        if (arg1 * arg1) - (arg2 * arg1) - (arg1 * arg2) + (arg2 * arg2) > -3:
            revert with 'NH{q', 17
        if not (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 2:
            revert with 'NH{q', 18
        if sha3(block.timestamp, battleCount) % (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 2 == 1:
            return 0
    else:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and arg2 - arg1 > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        if (arg2 * arg2) - (arg1 * arg2) - (arg2 * arg1) + (arg1 * arg1) > -3:
            revert with 'NH{q', 17
        if not (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2:
            revert with 'NH{q', 18
        if sha3(block.timestamp, battleCount) % (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2 != 1:
            return 0
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

function battle(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require ext_code.size(0xdfc9aaf6c56975a3a498051461a6734af5cbc3cc)
    staticcall 0xdfc9aaf6c56975a3a498051461a6734af5cbc3cc.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xdfc9aaf6c56975a3a498051461a6734af5cbc3cc)
    staticcall 0xdfc9aaf6c56975a3a498051461a6734af5cbc3cc.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if battleCount == -1:
        revert with 'NH{q', 17
    battleCount++
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > -3:
        revert with 'NH{q', 17
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + 2:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if sha3(block.timestamp, battleCount) % (ext_call.return_data[0] * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + 2 == 1:
            return 0
    else:
        if sha3(block.timestamp, battleCount) % (ext_call.return_data[0] * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + 2 != 1:
            return 0
    if not ext_call.return_data[0]:
        if totalSupply > -10000000000000000001:
            revert with 'NH{q', 17
        totalSupply += 10 * 10^18
        if balanceOf[arg1] > -10000000000000000001:
            revert with 'NH{q', 17
        balanceOf[arg1] += 10 * 10^18
        emit Transfer(10 * 10^18, arg1, arg1);
    else:
        if ext_call.return_data[0] > 255:
            revert with 'NH{q', 17
        if 2^ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        if 2^ext_call.return_data[0] and 10 * 10^18 > -1 / 2^ext_call.return_data[0]:
            revert with 'NH{q', 17
        if totalSupply > (-10 * 10^18 * 2^ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        totalSupply += 10 * 10^18 * 2^ext_call.return_data[0]
        if balanceOf[arg1] > (-10 * 10^18 * 2^ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        balanceOf[arg1] += 10 * 10^18 * 2^ext_call.return_data[0]
        emit Transfer((10 * 10^18 * 2^ext_call.return_data[0]), arg1, arg1);
    return 1
}



}
