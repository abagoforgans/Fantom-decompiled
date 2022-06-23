contract main {




// =====================  Runtime code  =====================


const name = 'Copper Box', 0

const decimals = 18

const symbol = 'copper', 0


uint256 totalSupply;
uint256 sub_d0aa0106;
uint256 sub_9b49a3c0;
mapping of uint256 sub_a1811e09;
mapping of uint256 sub_d766d9b7;
mapping of uint256 sub_c6dd6b1f;
mapping of uint256 sub_fa978952;
mapping of uint256 sub_5072a136;
mapping of uint8 stor8;

function totalSupply() payable {
    return totalSupply
}

function sub_5072a136(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_5072a136[arg1]
}

function isApproved(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function sub_9b49a3c0(?) payable {
    return sub_9b49a3c0
}

function sub_a1811e09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a1811e09[arg1]
}

function sub_c6dd6b1f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c6dd6b1f[arg1]
}

function sub_d0aa0106(?) payable {
    return sub_d0aa0106
}

function sub_d766d9b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d766d9b7[arg1]
}

function sub_fa978952(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_fa978952[arg1]
}

function _fallback() payable {
    revert
}

function transfer_to_monster(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not approved'
    if sub_5072a136[arg1] < arg3:
        revert with 'NH{q', 17
    sub_5072a136[arg1] -= arg3
    if sub_5072a136[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    sub_5072a136[arg2] += arg3
    emit Transfer(Array(len=7, data='Monster'), arg3, arg1, arg2);
}

function transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not approved'
    if sub_fa978952[arg1] < arg3:
        revert with 'NH{q', 17
    sub_fa978952[arg1] -= arg3
    if sub_fa978952[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    sub_fa978952[arg2] += arg3
    emit Transfer(Array(len=8, data='Summoner'), arg3, arg1, arg2);
}

function mint_to_monster(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not approved'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if sub_9b49a3c0 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_9b49a3c0 += arg2
    if sub_a1811e09[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_a1811e09[address(msg.sender)] += arg2
    if sub_c6dd6b1f[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_c6dd6b1f[address(msg.sender)] += arg2
    if sub_5072a136[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_5072a136[arg1] += arg2
    emit Transfer(Array(len=7, data='Monster'), arg2, arg1, arg1);
}

function mint_to_summoner(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not approved'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if sub_d0aa0106 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_d0aa0106 += arg2
    if sub_a1811e09[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_a1811e09[address(msg.sender)] += arg2
    if sub_d766d9b7[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_d766d9b7[address(msg.sender)] += arg2
    if sub_fa978952[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_fa978952[arg1] += arg2
    emit Transfer(Array(len=8, data='Summoner'), arg2, arg1, arg1);
}

function whitelist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x1a71f46f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0x7b4b69b489c2b1000a61c3bfa9934194ece68159)
    staticcall 0x7b4b69b489c2b1000a61c3bfa9934194ece68159.0x1a71f46f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _135 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] == uint32(arg1), mem[132 len 28]
        _137 = mem[160]
        require mem[160] == mem[172 len 20]
        _139 = mem[192]
        require mem[192] == bool(mem[192])
        _141 = mem[64]
        mem[64] = mem[64] + 64
        mem[_141] = 6
        mem[_141 + 32] = 'copper'
        _142 = mem[64]
        mem[mem[64] + 32] = 'copper'
        mem[mem[64] + 38] = 0
        _271 = mem[64]
        mem[mem[64]] = 6
        mem[64] = mem[64] + 38
        _273 = sha3(mem[_271 + 32 len mem[_271]])
        mem[_142 + 70 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_142 + _5 + 70] = 0
        mem[_142 + 38] = _5
        mem[64] = _142 + _5 + 70
        require sha3(mem[_142 + 70 len _5]) == _273
        if _135 < 2:
            revert with 0, 'Less than 2'
        stor8[address(_137)] = uint8(bool(_139))
        mem[_142 + _5 + 70] = 128
        mem[_142 + _5 + 198] = _5
        mem[_142 + _5 + 230 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_142 + (2 * _5) + 230] = 0
        emit Whitelist(Array(len=_5, data=mem[_142 + _5 + 230 len ceil32(_5)]), arg1, address(_137), bool(_139));
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        _136 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] == uint32(arg1), mem[132 len 28]
        _138 = mem[160]
        require mem[160] == mem[172 len 20]
        _140 = mem[192]
        require mem[192] == bool(mem[192])
        _143 = mem[64]
        mem[64] = mem[64] + 64
        mem[_143] = 6
        mem[_143 + 32] = 'copper'
        _144 = mem[64]
        mem[mem[64] + 32] = 'copper'
        mem[mem[64] + 38] = 0
        _275 = mem[64]
        mem[mem[64]] = 6
        mem[64] = mem[64] + 38
        _277 = sha3(mem[_275 + 32 len mem[_275]])
        mem[_144 + 70 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_144 + _5 + 70] = 0
        mem[_144 + 38] = _5
        mem[64] = _144 + _5 + 70
        require sha3(mem[_144 + 70 len _5]) == _277
        if _136 < 2:
            revert with 0, 'Less than 2'
        stor8[address(_138)] = uint8(bool(_140))
        mem[_144 + _5 + 70] = 128
        mem[_144 + _5 + 198] = _5
        mem[_144 + _5 + 230 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_144 + (2 * _5) + 230] = 0
        emit Whitelist(Array(len=_5, data=mem[_144 + _5 + 230 len ceil32(_5)]), arg1, address(_138), bool(_140));
}



}
