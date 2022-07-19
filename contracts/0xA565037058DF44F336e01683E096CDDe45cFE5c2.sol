contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of struct stor1;
uint256 stor2;
uint256 stor3;
address sub_838d56c9Address;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function sub_838d56c9(?) payable {
    return sub_838d56c9Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
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

function sub_b2775c10(?) payable {
    require ext_code.size(sub_838d56c9Address)
    staticcall sub_838d56c9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_35c17976(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Outside of chain distributor index range!'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_838d56c9Address)
    staticcall sub_838d56c9Address.0x70a08231 with:
            gas gas_remaining wei
           args stor1[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HyperJumpMainDistributor has already been initialized!'
    Mask(96, 0, stor0.field_160) = 1
    sub_838d56c9Address = arg1
    stor5 = arg2
    stor6 = arg3
    stor7 = arg4
    if not arg4:
        revert with 'NH{q', 18
    stor8 = arg3 / arg4
    stor9 = arg5
    if arg2 < stor7:
        revert with 'NH{q', 17
    stor10 = arg2 - stor7
}

function sub_9188276b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != stor2:
        revert with 0, 'Can only update all weights at the same time!'
    stor3 = 0
    idx = 0
    while idx < stor2:
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if idx >= mem[96]:
            revert with 'NH{q', 50
        stor1[idx].field_256 = mem[(32 * idx) + 128]
        if stor3 > -mem[(32 * idx) + 128] - 1:
            revert with 'NH{q', 17
        stor3 += mem[(32 * idx) + 128]
        mem[floor32(('cd', 4).length) + 97] = mem[(32 * idx) + 128]
        emit 0x513245e0: mem[floor32(('cd', 4).length) + 97], idx, block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3ab1563d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length++
    stor1[stor1.length].field_0 = address(arg1)
    stor1[stor1.length].field_256 = arg2
    if stor1[stor1.length].field_512:
        if stor1[stor1.length].field_512 == stor1[stor1.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[stor1.length].field_512 = 0
            idx = 0
            while stor1[stor1.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[stor1.length].field_512 == stor1[stor1.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[stor1.length].field_512 = 0
            idx = 0
            while stor1[stor1.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    if stor3 > -arg2 - 1:
        revert with 'NH{q', 17
    stor3 += arg2
    emit 0x498d6b81: arg2, 64, arg3.length, arg3[all], 0, stor2, address(arg1), block.timestamp
    if stor2 == -1:
        revert with 'NH{q', 17
    stor2++
}

function distribute() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= stor5:
        if block.timestamp < stor10:
            revert with 'NH{q', 17
        if not stor7:
            revert with 'NH{q', 18
        if block.timestamp - stor10 / stor7:
            if stor9 and block.timestamp - stor10 / stor7 > -1 / stor9:
                revert with 'NH{q', 17
            if not stor8:
                revert with 'NH{q', 18
            idx = 0
            while idx < stor2:
                if idx >= stor1.length:
                    revert with 'NH{q', 50
                mem[0] = 1
                if stor9 * block.timestamp - stor10 / stor7 / stor8 and stor1[idx].field_256 > -1 / stor9 * block.timestamp - stor10 / stor7 / stor8:
                    revert with 'NH{q', 17
                if not stor3:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = stor1[idx].field_0
                mem[mem[64] + 36] = stor9 * block.timestamp - stor10 / stor7 / stor8 * stor1[idx].field_256 / stor3
                require ext_code.size(sub_838d56c9Address)
                call sub_838d56c9Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1[idx].field_0, stor9 * block.timestamp - stor10 / stor7 / stor8 * stor1[idx].field_256 / stor3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_13] == bool(mem[_13])
                mem[mem[64]] = stor9 * block.timestamp - stor10 / stor7 / stor8 * stor1[idx].field_256 / stor3
                emit Distributed((stor9 * block.timestamp - stor10 / stor7 / stor8 * stor1[idx].field_256 / stor3), idx, block.timestamp);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.timestamp - stor10 / stor7 and stor7 > -1 / block.timestamp - stor10 / stor7:
                revert with 'NH{q', 17
            if stor10 > (-1 * block.timestamp - stor10 / stor7 * stor7) - 1:
                revert with 'NH{q', 17
            stor10 += block.timestamp - stor10 / stor7 * stor7
}



}
