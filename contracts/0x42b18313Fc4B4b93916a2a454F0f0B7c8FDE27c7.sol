contract main {




// =====================  Runtime code  =====================


#
#  - battle(uint256 arg1, uint256 arg2, uint256 arg3)
#
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
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if arg3 and 10^18 > -1 / arg3:
        revert with 'NH{q', 17
    if balanceOf[arg1] < 10^18 * arg3:
        revert with 'NH{q', 17
    balanceOf[arg1] += -1 * 10^18 * arg3
    if balanceOf[arg2] > (-1 * 10^18 * arg3) - 1:
        revert with 'NH{q', 17
    balanceOf[arg2] += 10^18 * arg3
    emit Transfer((10^18 * arg3), arg1, arg2);
    return 1
}

function isWin(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        if arg1 - arg2 and arg1 - arg2 > -1 / arg1 - arg2:
            revert with 'NH{q', 17
        if (arg1 * arg1) - (arg2 * arg1) - (arg1 * arg2) + (arg2 * arg2) > -6:
            revert with 'NH{q', 17
        if not battleCount:
            if not (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5:
                revert with 'NH{q', 18
            if sha3('0') % (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5 == 1:
                return 0
        else:
            s = 0
            idx = battleCount
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = battleCount
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _141 = mem[64]
                _145 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _217 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + _145 + 32
                    if not (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5:
                        revert with 'NH{q', 18
                    if sha3(mem[_217 + 32 len mem[_217]]) % (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5 == 1:
                        return 0
                else:
                    mem[mem[64] + mem[96] + 32] = 0
                    _229 = mem[64]
                    mem[mem[64]] = _141 + _145 - mem[64]
                    mem[64] = _141 + _145 + 32
                    if not (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5:
                        revert with 'NH{q', 18
                    if sha3(mem[_229 + 32 len mem[_229]]) % (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5 == 1:
                        return 0
            else:
                mem[128 len s] = call.data[calldata.size len s]
                t = s
                idx = battleCount
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _142 = mem[64]
                _146 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _220 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + _146 + 32
                    if not (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5:
                        revert with 'NH{q', 18
                    if sha3(mem[_220 + 32 len mem[_220]]) % (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5 == 1:
                        return 0
                else:
                    mem[mem[64] + mem[96] + 32] = 0
                    _232 = mem[64]
                    mem[mem[64]] = _142 + _146 - mem[64]
                    mem[64] = _142 + _146 + 32
                    if not (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5:
                        revert with 'NH{q', 18
                    if sha3(mem[_232 + 32 len mem[_232]]) % (arg1 * arg1) + (-1 * arg2 * arg1) + (-1 * arg1 * arg2) + (arg2 * arg2) + 5 == 1:
                        return 0
    else:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and arg2 - arg1 > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        if (arg2 * arg2) - (arg1 * arg2) - (arg2 * arg1) + (arg1 * arg1) > -3:
            revert with 'NH{q', 17
        if not battleCount:
            if not (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2:
                revert with 'NH{q', 18
            if sha3('0') % (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2 != 1:
                return 0
        else:
            s = 0
            idx = battleCount
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = battleCount
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _143 = mem[64]
                _147 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _223 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + _147 + 32
                    if not (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2:
                        revert with 'NH{q', 18
                    if sha3(mem[_223 + 32 len mem[_223]]) % (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2 != 1:
                        return 0
                else:
                    mem[mem[64] + mem[96] + 32] = 0
                    _235 = mem[64]
                    mem[mem[64]] = _143 + _147 - mem[64]
                    mem[64] = _143 + _147 + 32
                    if not (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2:
                        revert with 'NH{q', 18
                    if sha3(mem[_235 + 32 len mem[_235]]) % (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2 != 1:
                        return 0
            else:
                mem[128 len s] = call.data[calldata.size len s]
                t = s
                idx = battleCount
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _144 = mem[64]
                _148 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _226 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + _148 + 32
                    if not (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2:
                        revert with 'NH{q', 18
                    if sha3(mem[_226 + 32 len mem[_226]]) % (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2 != 1:
                        return 0
                else:
                    mem[mem[64] + mem[96] + 32] = 0
                    _238 = mem[64]
                    mem[mem[64]] = _144 + _148 - mem[64]
                    mem[64] = _144 + _148 + 32
                    if not (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2:
                        revert with 'NH{q', 18
                    if sha3(mem[_238 + 32 len mem[_238]]) % (arg2 * arg2) + (-1 * arg1 * arg2) + (-1 * arg2 * arg1) + (arg1 * arg1) + 2 != 1:
                        return 0
    return 1
}



}
