contract main {




// =====================  Runtime code  =====================


#
#  - getProfit(address arg1, address arg2)
#  - sub_c88e8583(?)
#
address owner;
array of struct stor2;
mapping of uint256 stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function baseTokensContains(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor3[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addBaseToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
    emit BaseTokenAdded(arg1);
}

function getBaseTokens() payable {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if idx >= stor2.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor2[idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_58252437(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        return arg2
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
            revert with 'NH{q', 17
        if arg2 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / arg2:
            revert with 'NH{q', 17
        return (arg2 * 10^(-ext_call.return_data[31 len 1] + 18))
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if arg2 and t * s > -1 / arg2:
        revert with 'NH{q', 17
    return (arg2 * t * s)
}

function removeBaseToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 != stor3[address(arg1)] - 1:
            if stor2.length - 1 >= stor2.length:
                revert with 'NH{q', 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 'NH{q', 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not stor2.length:
            revert with 'NH{q', 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
    emit BaseTokenRemoved(arg1);
}



}
