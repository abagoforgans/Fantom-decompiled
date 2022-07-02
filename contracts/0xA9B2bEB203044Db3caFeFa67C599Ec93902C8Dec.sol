contract main {




// =====================  Runtime code  =====================


address owner;
address sub_052b307aAddress;
uint256 sub_88273d4d;
uint256 sub_a5c56a2b;
mapping of struct stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;

function sub_052b307a(?) payable {
    return sub_052b307aAddress
}

function sub_88273d4d(?) payable {
    return sub_88273d4d
}

function owner() payable {
    return owner
}

function sub_a5c56a2b(?) payable {
    return sub_a5c56a2b
}

function _fallback() payable {
    revert
}

function sub_350df712(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_88273d4d = arg1
}

function sub_53aa0bdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_052b307aAddress = address(arg1)
}

function setActivePeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'activePeriod error .'
    if arg1 and 24 * 3600 > -1 / arg1:
        revert with 'NH{q', 17
    sub_a5c56a2b = 24 * 3600 * arg1
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

function sub_44ebb5ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getLandIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0]:
        return bool(ext_call.return_data[0]), stor5[ext_call.return_data[32]]
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function sub_03e55d23(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32]:
        return 1, ext_call.return_data[32] / 1000
    if ext_call.return_data[64]:
        return 1, ext_call.return_data[32] / 1000
    else:
        return 0
}

function sub_3905ba8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 0
    if not stor4[arg1].field_512:
        return 1, 0
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] / 1000 != stor4[arg1].field_768:
        return 1, 3
    if block.timestamp < stor4[arg1].field_256:
        revert with 'NH{q', 17
    if block.timestamp - stor4[arg1].field_256 <= sub_a5c56a2b:
        return 1, 1
    return 1, 2
}

function sub_f4ae95bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 0
    if not stor4[arg1].field_512:
        return 1, 0, stor4[arg1].field_0, stor4[arg1].field_256
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] / 1000 != stor4[arg1].field_768:
        return 1, 3, stor4[arg1].field_0, stor4[arg1].field_256
    if block.timestamp < stor4[arg1].field_256:
        revert with 'NH{q', 17
    if block.timestamp - stor4[arg1].field_256 <= sub_a5c56a2b:
        return 1, 1, stor4[arg1].field_0, stor4[arg1].field_256
    return 1, 2, stor4[arg1].field_0, stor4[arg1].field_256
}

function sub_b22c10a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 0
    if not stor4[arg1].field_512:
        return 1, 0, 0, 0
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] / 1000 != stor4[arg1].field_768:
        if block.timestamp < stor4[arg1].field_0:
            revert with 'NH{q', 17
        if block.timestamp < stor4[arg1].field_256:
            revert with 'NH{q', 17
        if block.timestamp - stor4[arg1].field_256 >= sub_a5c56a2b:
            return 1, 3, block.timestamp - stor4[arg1].field_0, 0
        if sub_a5c56a2b < block.timestamp - stor4[arg1].field_256:
            revert with 'NH{q', 17
        return 1, 3, block.timestamp - stor4[arg1].field_0, sub_a5c56a2b - block.timestamp + stor4[arg1].field_256
    if block.timestamp < stor4[arg1].field_256:
        revert with 'NH{q', 17
    if block.timestamp < stor4[arg1].field_0:
        revert with 'NH{q', 17
    if block.timestamp < stor4[arg1].field_256:
        revert with 'NH{q', 17
    if block.timestamp - stor4[arg1].field_256 <= sub_a5c56a2b:
        if block.timestamp - stor4[arg1].field_256 >= sub_a5c56a2b:
            return 1, 1, block.timestamp - stor4[arg1].field_0, 0
        if sub_a5c56a2b < block.timestamp - stor4[arg1].field_256:
            revert with 'NH{q', 17
        return 1, 1, block.timestamp - stor4[arg1].field_0, sub_a5c56a2b - block.timestamp + stor4[arg1].field_256
    if block.timestamp - stor4[arg1].field_256 >= sub_a5c56a2b:
        return 1, 2, block.timestamp - stor4[arg1].field_0, 0
    if sub_a5c56a2b < block.timestamp - stor4[arg1].field_256:
        revert with 'NH{q', 17
    return 1, 2, block.timestamp - stor4[arg1].field_0, sub_a5c56a2b - block.timestamp + stor4[arg1].field_256
}

function sub_d27e5b0a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        return 0
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getLandIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not ext_call.return_data[0]:
        return 0
    if arg2 >= stor5[ext_call.return_data[32]]:
        return 0
    if ext_call.return_data[32] and 100 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[32] > -arg2 - 1:
        revert with 'NH{q', 17
    if not stor6[(100 * ext_call.return_data[32]) + arg2]:
        return 1, 
               0,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
    if not stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_512:
        return 1, 
               0,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args stor6[(100 * ext_call.return_data[32]) + arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] / 1000 != stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_768:
        return 1, 
               3,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
    if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
        revert with 'NH{q', 17
    if block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256 <= sub_a5c56a2b:
        return 1, 
               1,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
               stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
    return 1, 
           2,
           stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
           stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
}

function sub_2b1786c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'no support 0 .'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'no owner .'
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getLandIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not ext_call.return_data[0]:
        revert with 0, 'no land,error .'
    if arg2 >= stor5[ext_call.return_data[32]]:
        revert with 0, 'exile,sIndex,error.'
    if ext_call.return_data[32] and 100 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[32] > -arg2 - 1:
        revert with 'NH{q', 17
    if stor6[(100 * ext_call.return_data[32]) + arg2]:
        if stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_512:
            if not sub_052b307aAddress:
                revert with 0, 'no rlsAddr .'
            require ext_code.size(sub_052b307aAddress)
            staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor6[(100 * ext_call.return_data[32]) + arg2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            if ext_call.return_data[32] / 1000 == stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_768:
                if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
                    revert with 'NH{q', 17
                if block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256 <= sub_a5c56a2b:
                    revert with 0, 'It is not a dangerous state. error !'
    stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_512 = 0
    if ext_call.return_data[32] and 100 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[32] > -stor5[ext_call.return_data[32]] - 1:
        revert with 'NH{q', 17
    if (100 * ext_call.return_data[32]) + stor5[ext_call.return_data[32]] < 1:
        revert with 'NH{q', 17
    if (100 * ext_call.return_data[32]) + arg2 != (100 * ext_call.return_data[32]) + stor5[ext_call.return_data[32]] - 1:
        stor6[(100 * ext_call.return_data[32]) + arg2] = stor6[(100 * ext_call.return_data[32]) + stor5[ext_call.return_data[32]] - 1]
    else:
        stor6[(100 * ext_call.return_data[32]) + arg2] = 0
    if stor5[ext_call.return_data[32]] < 1:
        revert with 'NH{q', 17
    stor5[ext_call.return_data[32]]--
}

function sub_8dcdaf8b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        return 0
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getLandIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not ext_call.return_data[0]:
        return 0
    if arg2 >= stor5[ext_call.return_data[32]]:
        return 0
    if ext_call.return_data[32] and 100 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[32] > -arg2 - 1:
        revert with 'NH{q', 17
    if not stor6[(100 * ext_call.return_data[32]) + arg2]:
        return 1, 0, 0, 0
    if not stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_512:
        return 1, 0, 0, 0
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args stor6[(100 * ext_call.return_data[32]) + arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] / 1000 != stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_768:
        if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0:
            revert with 'NH{q', 17
        if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
            revert with 'NH{q', 17
        if block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256 >= sub_a5c56a2b:
            return 1, 3, block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0, 0
        if sub_a5c56a2b < block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
            revert with 'NH{q', 17
        return 1, 
               3,
               block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
               sub_a5c56a2b - block.timestamp + stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
    if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
        revert with 'NH{q', 17
    if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0:
        revert with 'NH{q', 17
    if block.timestamp < stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
        revert with 'NH{q', 17
    if block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256 <= sub_a5c56a2b:
        if block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256 >= sub_a5c56a2b:
            return 1, 1, block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0, 0
        if sub_a5c56a2b < block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
            revert with 'NH{q', 17
        return 1, 
               1,
               block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
               sub_a5c56a2b - block.timestamp + stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
    if block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256 >= sub_a5c56a2b:
        return 1, 2, block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0, 0
    if sub_a5c56a2b < block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256:
        revert with 'NH{q', 17
    return 1, 
           2,
           block.timestamp - stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_0,
           sub_a5c56a2b - block.timestamp + stor4[stor6[(100 * ext_call.return_data[32]) + arg2]].field_256
}

function activate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'no support 0 .'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'no owner .'
    if not sub_052b307aAddress:
        revert with 0, 'no rlsAddr .'
    require ext_code.size(sub_052b307aAddress)
    staticcall sub_052b307aAddress.getSummonerCoordinates(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            revert with 0, '(0,0),error .'
    if stor4[arg1].field_512 != 1:
        if stor5[ext_call.return_data[32] / 1000] >= sub_88273d4d:
            revert with 0, 'Max value, error.'
        stor4[arg1].field_0 = block.timestamp
        stor4[arg1].field_256 = block.timestamp
        stor4[arg1].field_512 = 1
        stor4[arg1].field_768 = ext_call.return_data[32] / 1000
        stor4[arg1].field_1024 = stor5[ext_call.return_data[32] / 1000]
        if ext_call.return_data[32] / 1000 and 100 > -1 / ext_call.return_data[32] / 1000:
            revert with 'NH{q', 17
        if 100 * ext_call.return_data[32] / 1000 > -stor5[ext_call.return_data[32] / 1000] - 1:
            revert with 'NH{q', 17
        stor6[(100 * ext_call.return_data[32] / 1000) + stor5[ext_call.return_data[32] / 1000]] = arg1
        if stor5[ext_call.return_data[32] / 1000] > -2:
            revert with 'NH{q', 17
        stor5[ext_call.return_data[32] / 1000]++
    else:
        if stor5[stor4[arg1].field_768] <= 0:
            if stor5[ext_call.return_data[32] / 1000] >= sub_88273d4d:
                revert with 0, 'Max value, error.'
            stor4[arg1].field_0 = block.timestamp
            stor4[arg1].field_256 = block.timestamp
            stor4[arg1].field_512 = 1
            stor4[arg1].field_768 = ext_call.return_data[32] / 1000
            stor4[arg1].field_1024 = stor5[ext_call.return_data[32] / 1000]
            if ext_call.return_data[32] / 1000 and 100 > -1 / ext_call.return_data[32] / 1000:
                revert with 'NH{q', 17
            if 100 * ext_call.return_data[32] / 1000 > -stor5[ext_call.return_data[32] / 1000] - 1:
                revert with 'NH{q', 17
            stor6[(100 * ext_call.return_data[32] / 1000) + stor5[ext_call.return_data[32] / 1000]] = arg1
            if stor5[ext_call.return_data[32] / 1000] > -2:
                revert with 'NH{q', 17
            stor5[ext_call.return_data[32] / 1000]++
        else:
            if ext_call.return_data[32] / 1000 == stor4[arg1].field_768:
                stor4[arg1].field_256 = block.timestamp
            else:
                if stor4[arg1].field_768 and 100 > -1 / stor4[arg1].field_768:
                    revert with 'NH{q', 17
                if 100 * stor4[arg1].field_768 > -stor4[arg1].field_1024 - 1:
                    revert with 'NH{q', 17
                if stor4[arg1].field_768 and 100 > -1 / stor4[arg1].field_768:
                    revert with 'NH{q', 17
                if 100 * stor4[arg1].field_768 > -stor5[stor4[arg1].field_768] - 1:
                    revert with 'NH{q', 17
                if (100 * stor4[arg1].field_768) + stor5[stor4[arg1].field_768] < 1:
                    revert with 'NH{q', 17
                if (100 * stor4[arg1].field_768) + stor4[arg1].field_1024 != (100 * stor4[arg1].field_768) + stor5[stor4[arg1].field_768] - 1:
                    stor6[(100 * stor4[arg1].field_768) + stor4[arg1].field_1024] = stor6[(100 * stor4[arg1].field_768) + stor5[stor4[arg1].field_768] - 1]
                else:
                    stor6[(100 * stor4[arg1].field_768) + stor4[arg1].field_1024] = 0
                if stor5[stor4[arg1].field_768] < 1:
                    revert with 'NH{q', 17
                stor5[stor4[arg1].field_768]--
                if stor5[ext_call.return_data[32] / 1000] >= sub_88273d4d:
                    revert with 0, 'Max value, error.'
                stor4[arg1].field_0 = block.timestamp
                stor4[arg1].field_256 = block.timestamp
                stor4[arg1].field_512 = 1
                stor4[arg1].field_768 = ext_call.return_data[32] / 1000
                stor4[arg1].field_1024 = stor5[ext_call.return_data[32] / 1000]
                if ext_call.return_data[32] / 1000 and 100 > -1 / ext_call.return_data[32] / 1000:
                    revert with 'NH{q', 17
                if 100 * ext_call.return_data[32] / 1000 > -stor5[ext_call.return_data[32] / 1000] - 1:
                    revert with 'NH{q', 17
                stor6[(100 * ext_call.return_data[32] / 1000) + stor5[ext_call.return_data[32] / 1000]] = arg1
                if stor5[ext_call.return_data[32] / 1000] > -2:
                    revert with 'NH{q', 17
                stor5[ext_call.return_data[32] / 1000]++
    return 1
}



}
