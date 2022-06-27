contract main {




// =====================  Runtime code  =====================


const decimals = 18

const genesis_supply = 3000000 * 10^18

const sub_e06c73b1(?) = 97000000 * 10^18

const BURN_ADDRESS = 57005


function rewardClaimed() payable {
    return rewardClaimed
}

function policy() payable {
    return policyAddress
}

function sub_05a04aae(?) payable {
    return sub_05a04aae
}

function poolLength() payable {
    return sub_32adb9a5.length
}

function sub_105481af(?) payable {
    return sub_105481afAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_242b8f64(?) payable {
    return bool(('storage', 8, 0, 14))
}

function sub_32adb9a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < ('storage', 256, 0, 6)
    return ('storage', 160, 0, ('add', ('sha3', 6), ('param', 'arg1')))
}

function sub_3e5f13d4(?) payable {
    return ('storage', 160, 0, 9)
}

function burnThreshold() payable {
    return ('storage', 256, 0, 12)
}

function sub_5024ec1f(?) payable {
    return ('storage', 16, 160, 8)
}

function sub_52b779ea(?) payable {
    return bool(('storage', 8, 160, 11))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0)))
}

function sub_77d1440d(?) payable {
    return ('storage', 256, 0, 13)
}

function sub_887d882f(?) payable {
    return ('storage', 16, 32, 14)
}

function sub_8d3cc818(?) payable {
    return bool(('storage', 8, 8, 14))
}

function owner() payable {
    return ('storage', 160, 0, 5)
}

function sub_a6e7ab16(?) payable {
    return ('storage', 16, 176, 8)
}

function sub_c3bdf613(?) payable {
    return ('storage', 160, 0, 10)
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))))
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))))
}

function sub_e48849b2(?) payable {
    return ('storage', 16, 16, 14)
}

function sub_f6a2db8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 7))))
}

function sub_fb1c80b2(?) payable {
    return ('storage', 32, 48, 14)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if ('storage', 160, 0, 5) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[5].field_0) = 0
    emit OwnershipTransferred(('storage', 160, 0, 5), 0);
}

function enableTax() payable {
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint8(stor[14].field_0) = 1
}

function disableTax() payable {
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint8(stor[14].field_0) = 0
}

function sub_65bbacd9(?) payable {
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint8(stor[14].field_8) = 0
}

function sub_ff87fc7c(?) payable {
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint8(stor[14].field_8) = 1
}

function sub_53788a6b(?) payable {
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint8(stor[11].field_160) = 1
}

function sub_be8ec6d2(?) payable {
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint8(stor[11].field_160) = 0
}

function sub_07a212be(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    sub_77d1440d = arg1
    return 1
}

function sub_4cace7ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'wrong tax policy'
    address(stor[11].field_0) = address(arg1)
}

function sub_2084acbc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    sub_05a04aae = uint32(arg1)
}

function setBurnThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint256(stor[12].field_0) = arg1
    return 1
}

function sub_3a987489(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    uint32(stor[14].field_48) = uint32(arg1)
}

function sub_19db099d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if not stor15[address(arg1)]:
        revert with 0, 'Account is already included'
    stor15[address(arg1)] = 0
    return 1
}

function sub_a0025c4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if uint16(arg1) >= 5000:
        revert with 0, 'Tax rates are too high.'
    uint16(stor[14].field_16) = uint16(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 5) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(stor[5].field_0) = arg1
    emit OwnershipTransferred(('storage', 160, 0, 5), arg1);
}

function sub_5c26606a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if ('storage', 16, 160, 8) >= 2500:
        revert with 0, 'Tax rates are too high. '
    uint16(stor[8].field_160) = uint16(arg1)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_8e6c7722(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oracle address cannot be 0 address'
    address(stor[8].field_0) = address(arg1)
}

function sub_69356d47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tax collector address must be non-zero address'
    address(stor[10].field_0) = address(arg1)
}

function sub_cd428af3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if ('storage', 16, 32, 14) >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'basis tax rates should be only few. '
    uint16(stor[14].field_32) = uint16(arg1)
}

function sub_be94f86b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
        revert with 0, 'Account is already excluded'
    uint8(stor[sha3(address(arg1), 15)].field_0) = 1
    return 1
}

function sub_3f07d76a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 5) != msg.sender:
        if ('storage', 160, 0, 9) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner or the tax office'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tax office address cannot be 0 address'
    emit 0x75237613: ('storage', 160, 0, 9), address(arg1)
    address(stor[9].field_0) = address(arg1)
}

function sub_e7b46218(?) payable {
    require calldata.size - 4 >= 32
    if not ('storage', 160, 0, 11):
        return 0
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
            gas gas_remaining wei
           args 0, arg1, ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 80, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    return ext_call.return_data[30 len 2]
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 5) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address detected'
    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        revert with 0, 'Address already exists'
    uint8(stor[sha3(address(arg1), 7)].field_0) = 1
    uint256(stor[6].field_0) = ('storage', 256, 0, 6) + 1
    address(stor[('storage', 256, 0, 6) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1].field_0) = arg1
    emit PoolAdded(arg1);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg1
    if ('storage', 256, 0, 2) < arg1:
        revert with 0, 17
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) - arg1
    emit Transfer(arg1, msg.sender, 0);
}

function pool_mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only coffin pools can call this function'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if ('storage', 256, 0, 2) > !arg2:
        revert with 0, 17
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) + arg2
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) > !arg2:
        revert with 0, 17
    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) + arg2
    emit Transfer(arg2, 0, arg1);
    emit Minted(arg2, msg.sender, arg1);
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 5) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))) != 1:
        revert with 0, 'Address nonexistant'
    uint8(stor[sha3(address(arg1), 7)].field_0) = 0
    idx = 0
    while idx < ('storage', 256, 0, 6):
        mem[0] = 6
        if ('storage', 160, 0, ('add', ('sha3', 6), ('var', 0))) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= ('storage', 256, 0, 6):
            revert with 0, 50
        address(stor[sha3(6) + idx].field_0) = 0
        emit PoolRemoved(arg1);
    emit PoolRemoved(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', 'msg.sender', 1))))) > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', 'msg.sender', 1))))) + arg2
    emit Approval((('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', 'msg.sender', 1))))) + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', 'msg.sender', 1))))) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', 'msg.sender', 1))))) - arg2
    emit Approval((('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', 'msg.sender', 1))))) - arg2), msg.sender, arg1);
    return 1
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor17.field_8):
        if uint8(stor17.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor17.field_8):
            uint16(stor17.field_0) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
    sub_32adb9a5.length++
    sub_32adb9a5[sub_32adb9a5.length] = arg1
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffd84b9ac9399371cffffff:
        revert with 0, 17
    totalSupply += 3000000 * 10^18
    if balanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffffd84b9ac9399371cffffff:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 3000000 * 10^18
    emit Transfer(3000000 * 10^18, 0, msg.sender);
    if not uint8(stor17.field_8):
        uint8(stor17.field_8) = 0
}

function sub_5c6b16c1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only coffin pools can call this function'
    if arg2 <= 0:
        revert with 0, 'invalidAmount'
    if not address(arg1):
        revert with 0, '!rewardController'
    if 97000000 * 10^18 < ('storage', 256, 0, 18):
        revert with 0, 17
    if arg2 > -('storage', 256, 0, 18) + 97000000 * 10^18:
        revert with 0, 'exceedRewards'
    if ('storage', 256, 0, 18) > !arg2:
        revert with 0, 17
    uint256(stor[18].field_0) = ('storage', 256, 0, 18) + arg2
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if ('storage', 256, 0, 2) > !arg2:
        revert with 0, 17
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) + arg2
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) > !arg2:
        revert with 0, 17
    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) + arg2
    emit Transfer(arg2, 0, address(arg1));
    emit Minted(arg2, msg.sender, address(arg1));
}

function sub_739272ad(?) payable {
    require ext_code.size(('storage', 160, 0, 8))
    if not ('storage', 8, 160, 11):
        staticcall ('storage', 160, 0, 8).0xe61574b0 with:
                gas gas_remaining wei
    else:
        staticcall ('storage', 160, 0, 8).0xd34410ba with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    if 18 < ext_call.return_data[63 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[63 len 1] + 18):
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0]
    if bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 32)):
        if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[63 len 1] + 18) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18))
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[63 len 1] + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * s * t)
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ('storage', 160, 0, 5) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    uint256(stor[sha3(address(msg.sender), sha3(address(arg1), 1))].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) - arg2
    emit Approval((('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg2
    if ('storage', 256, 0, 2) < arg2:
        revert with 0, 17
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) - arg2
    emit Transfer(arg2, arg1, 0);
    emit Minted(arg2, msg.sender, arg1);
}

function pool_burn_from(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only coffin pools can call this function'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    uint256(stor[sha3(address(msg.sender), sha3(address(arg1), 1))].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) - arg2
    emit Approval((('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg2
    if ('storage', 256, 0, 2) < arg2:
        revert with 0, 17
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) - arg2
    emit Transfer(arg2, arg1, 0);
    emit Burned(arg2, arg1, msg.sender);
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[ceil32(stor3.length.field_1 % 128) + stor3.length.field_1 % 128 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() payable {
    if ('storage', 1, 0, 4):
        if ('storage', 1, 0, 4) == uint255(('storage', 256, 0, 4)) * 0.5 < 32:
            revert with 0, 34
        if ('storage', 1, 0, 4):
            if ('storage', 1, 0, 4) == uint255(('storage', 256, 0, 4)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, ('storage', 256, 0, 4)):
                if 31 < uint255(('storage', 256, 0, 4)) * 0.5:
                    mem[128] = ('storage', 256, 0, ('sha3', 4))
                    idx = 128
                    s = 0
                    while (uint255(('storage', 256, 0, 4)) * 0.5) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 4)))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, ('storage', 256, 0, 4)), data=mem[128 len ceil32(uint255(('storage', 256, 0, 4)) * 0.5)])
                mem[128] = 256 * ('storage', 248, 8, 4)
        else:
            if ('storage', 1, 0, 4) == ('storage', 7, 1, 4) < 32:
                revert with 0, 34
            if ('storage', 7, 1, 4):
                if 31 < ('storage', 7, 1, 4):
                    mem[128] = ('storage', 256, 0, ('sha3', 4))
                    idx = 128
                    s = 0
                    while ('storage', 7, 1, 4) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 4)))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, ('storage', 256, 0, 4)), data=mem[128 len ceil32(uint255(('storage', 256, 0, 4)) * 0.5)])
                mem[128] = 256 * ('storage', 248, 8, 4)
        mem[ceil32(uint255(('storage', 256, 0, 4)) * 0.5) + 192 len ceil32(uint255(('storage', 256, 0, 4)) * 0.5)] = mem[128 len ceil32(uint255(('storage', 256, 0, 4)) * 0.5)]
        if ceil32(uint255(('storage', 256, 0, 4)) * 0.5) > uint255(('storage', 256, 0, 4)) * 0.5:
            mem[ceil32(uint255(('storage', 256, 0, 4)) * 0.5) + (uint255(('storage', 256, 0, 4)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, ('storage', 256, 0, 4)), data=mem[128 len ceil32(uint255(('storage', 256, 0, 4)) * 0.5)], mem[(2 * ceil32(uint255(('storage', 256, 0, 4)) * 0.5)) + 192 len 2 * ceil32(uint255(('storage', 256, 0, 4)) * 0.5)]), 
    if ('storage', 1, 0, 4) == ('storage', 7, 1, 4) < 32:
        revert with 0, 34
    if ('storage', 1, 0, 4):
        if ('storage', 1, 0, 4) == uint255(('storage', 256, 0, 4)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, ('storage', 256, 0, 4)):
            if 31 < uint255(('storage', 256, 0, 4)) * 0.5:
                mem[128] = ('storage', 256, 0, ('sha3', 4))
                idx = 128
                s = 0
                while (uint255(('storage', 256, 0, 4)) * 0.5) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 4)))
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=('storage', 7, 0, 4), data=mem[128 len ceil32(('storage', 7, 1, 4))])
            mem[128] = 256 * ('storage', 248, 8, 4)
    else:
        if ('storage', 1, 0, 4) == ('storage', 7, 1, 4) < 32:
            revert with 0, 34
        if ('storage', 7, 1, 4):
            if 31 < ('storage', 7, 1, 4):
                mem[128] = ('storage', 256, 0, ('sha3', 4))
                idx = 128
                s = 0
                while ('storage', 7, 1, 4) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', 4)))
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=('storage', 7, 0, 4), data=mem[128 len ceil32(('storage', 7, 1, 4))])
            mem[128] = 256 * ('storage', 248, 8, 4)
    mem[ceil32(('storage', 7, 1, 4)) + 192 len ceil32(('storage', 7, 1, 4))] = mem[128 len ceil32(('storage', 7, 1, 4))]
    if ceil32(('storage', 7, 1, 4)) > ('storage', 7, 1, 4):
        mem[ceil32(('storage', 7, 1, 4)) + ('storage', 7, 1, 4) + 192] = 0
    return Array(len=('storage', 7, 0, 4), data=mem[128 len ceil32(('storage', 7, 1, 4))], mem[(2 * ceil32(('storage', 7, 1, 4))) + 192 len 2 * ceil32(('storage', 7, 1, 4))]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if not ('storage', 8, 0, 14):
        uint16(stor[8].field_176) = 0
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
            revert with 0, 17
        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require ext_code.size(('storage', 160, 0, 8))
        if not ('storage', 8, 160, 11):
            staticcall ('storage', 160, 0, 8).0xe61574b0 with:
                    gas gas_remaining wei
        else:
            staticcall ('storage', 160, 0, 8).0xd34410ba with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        if 18 < ext_call.return_data[63 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[63 len 1] + 18):
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] <= 0:
                uint16(stor[8].field_176) = 0
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                    revert with 0, 17
                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if ext_call.return_data[0] >= ('storage', 256, 0, 13):
                    uint16(stor[8].field_176) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                        revert with 0, 17
                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if ext_call.return_data[0] < ('storage', 256, 0, 12):
                        if not ('storage', 8, 8, 14):
                            Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                            if not ('storage', 16, 160, 8):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                    revert with 0, 17
                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                    if arg2 and ('storage', 16, 160, 8) > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * ('storage', 16, 160, 8) / 10000:
                                                        revert with 0, 17
                                                    if arg2 * ('storage', 16, 160, 8) / 10000 >= arg2:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg2 * ('storage', 16, 160, 8) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg2 * ('storage', 16, 160, 8) / 10000), msg.sender, 0);
                                                    if arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)), msg.sender, arg1);
                                                else:
                                                    if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                        revert with 0, 17
                                                    if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg2 * ('storage', 16, 16, 14) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, 0);
                                                    if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                        else:
                            if not ('storage', 160, 0, 11):
                                uint16(stor[8].field_176) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                    revert with 0, 17
                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                if not ext_call.return_data[30 len 2]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                        if arg2 and ext_call.return_data[30 len 2] > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ext_call.return_data[30 len 2] / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if not arg2 * ext_call.return_data[30 len 2] / 10000:
                                                            if arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)), msg.sender, arg1);
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                            if ('storage', 256, 0, 2) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                            emit Transfer((arg2 * ext_call.return_data[30 len 2] / 10000), msg.sender, 0);
                                                            if arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                emit Transfer((arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 16, 14) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                    else:
                        if not ('storage', 8, 8, 14):
                            Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                            if not ('storage', 16, 160, 8):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                    revert with 0, 17
                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                    if arg2 and ('storage', 16, 160, 8) > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * ('storage', 16, 160, 8) / 10000:
                                                        revert with 0, 17
                                                    if arg2 * ('storage', 16, 160, 8) / 10000 >= arg2:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg2 * ('storage', 16, 160, 8) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not ('storage', 160, 0, 10):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 160, 8) / 10000):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg2 * ('storage', 16, 160, 8) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                    if arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)), msg.sender, arg1);
                                                else:
                                                    if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                        revert with 0, 17
                                                    if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg2 * ('storage', 16, 16, 14) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not ('storage', 160, 0, 10):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 16, 14) / 10000):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                    if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                        else:
                            if not ('storage', 160, 0, 11):
                                uint16(stor[8].field_176) = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                    revert with 0, 17
                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                if not ext_call.return_data[30 len 2]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                        if arg2 and ext_call.return_data[30 len 2] > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ext_call.return_data[30 len 2] / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if not arg2 * ext_call.return_data[30 len 2] / 10000:
                                                            if arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)), msg.sender, arg1);
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                            emit Transfer((arg2 * ext_call.return_data[30 len 2] / 10000), msg.sender, ('storage', 160, 0, 10));
                                                            if arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                emit Transfer((arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 16, 14) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                        if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
        else:
            if bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 32)):
                if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[63 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) <= 0:
                    uint16(stor[8].field_176) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                        revert with 0, 17
                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= ('storage', 256, 0, 13):
                        uint16(stor[8].field_176) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                            revert with 0, 17
                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) < ('storage', 256, 0, 12):
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg2 and ('storage', 16, 160, 8) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 160, 8) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 160, 8) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 160, 8) / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 16, 14) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18), ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg2 and ext_call.return_data[30 len 2] > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ext_call.return_data[30 len 2] / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)), msg.sender, arg1);
                                                            else:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, 2) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg2 * ext_call.return_data[30 len 2] / 10000), msg.sender, 0);
                                                                if arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg2 * ('storage', 16, 16, 14) / 10000:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, 0);
                                                            if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                        else:
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg2 and ('storage', 16, 160, 8) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 160, 8) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 160, 8) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 160, 8) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                        if arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 16, 14) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                        if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18), ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg2 and ext_call.return_data[30 len 2] > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ext_call.return_data[30 len 2] / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)), msg.sender, arg1);
                                                            else:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg2 * ext_call.return_data[30 len 2] / 10000), msg.sender, ('storage', 160, 0, 10));
                                                                if arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg2 * ('storage', 16, 16, 14) / 10000:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                            if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
            else:
                s = 10
                t = 1
                idx = uint8(-ext_call.return_data[63 len 1] + 18)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * s * t <= 0:
                    uint16(stor[8].field_176) = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                        revert with 0, 17
                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if ext_call.return_data[0] * s * t >= ('storage', 256, 0, 13):
                        uint16(stor[8].field_176) = 0
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                            revert with 0, 17
                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if ext_call.return_data[0] * s * t < ('storage', 256, 0, 12):
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg2 and ('storage', 16, 160, 8) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 160, 8) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 160, 8) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 160, 8) / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 16, 14) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * s * t, ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg2 and ext_call.return_data[30 len 2] > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ext_call.return_data[30 len 2] / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)), msg.sender, arg1);
                                                            else:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, 2) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg2 * ext_call.return_data[30 len 2] / 10000), msg.sender, 0);
                                                                if arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg2 * ('storage', 16, 16, 14) / 10000:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, 2) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, 0);
                                                            if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                        else:
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg2 and ('storage', 16, 160, 8) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 160, 8) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 160, 8) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 160, 8) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                        if arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 160, 8) / 10000)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg2 * ('storage', 16, 16, 14) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                        if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * s * t, ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 15))):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !arg2:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg2 and ext_call.return_data[30 len 2] > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ext_call.return_data[30 len 2] / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg2 - (arg2 * ext_call.return_data[30 len 2] / 10000)), msg.sender, arg1);
                                                            else:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg2 * ext_call.return_data[30 len 2] / 10000), msg.sender, ('storage', 160, 0, 10));
                                                                if arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg2 - (arg2 * uint16(ext_call.return_data[0]) / 10000)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and ('storage', 16, 16, 14) > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg2 * ('storage', 16, 16, 14) / 10000 >= arg2:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg2 * ('storage', 16, 16, 14) / 10000:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg2 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 * ('storage', 16, 16, 14) / 10000), msg.sender, ('storage', 160, 0, 10));
                                                            if arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) < arg2 - (arg2 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(msg.sender), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 0))) - arg2 + (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) > !(arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg1, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 0))) + arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg2 - (arg2 * ('storage', 16, 16, 14) / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if not ('storage', 8, 0, 14):
        uint16(stor[8].field_176) = 0
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
            revert with 0, 17
        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
        emit Transfer(arg3, arg1, arg2);
        if ('storage', 256, 0, ('sha3', ('data', 'msg.sender', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        require ext_code.size(('storage', 160, 0, 8))
        if not ('storage', 8, 160, 11):
            staticcall ('storage', 160, 0, 8).0xe61574b0 with:
                    gas gas_remaining wei
        else:
            staticcall ('storage', 160, 0, 8).0xd34410ba with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        if 18 < ext_call.return_data[63 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[63 len 1] + 18):
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] <= 0:
                uint16(stor[8].field_176) = 0
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                    revert with 0, 17
                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if ext_call.return_data[0] >= ('storage', 256, 0, 13):
                    uint16(stor[8].field_176) = 0
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                        revert with 0, 17
                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if ext_call.return_data[0] < ('storage', 256, 0, 12):
                        if not ('storage', 8, 8, 14):
                            Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                            if not ('storage', 16, 160, 8):
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                    revert with 0, 17
                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                    if arg3 and ('storage', 16, 160, 8) > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * ('storage', 16, 160, 8) / 10000:
                                                        revert with 0, 17
                                                    if arg3 * ('storage', 16, 160, 8) / 10000 >= arg3:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg3 * ('storage', 16, 160, 8) / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg3 * ('storage', 16, 160, 8) / 10000), arg1, 0);
                                                    if arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)), arg1, arg2);
                                                else:
                                                    if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                        revert with 0, 17
                                                    if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg3 * ('storage', 16, 16, 14) / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, 0);
                                                    if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                        else:
                            if not ('storage', 160, 0, 11):
                                uint16(stor[8].field_176) = 0
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                    revert with 0, 17
                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                if not ext_call.return_data[30 len 2]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                        if arg3 and ext_call.return_data[30 len 2] > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ext_call.return_data[30 len 2] / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if not arg3 * ext_call.return_data[30 len 2] / 10000:
                                                            if arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)), arg1, arg2);
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                            if ('storage', 256, 0, 2) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                            emit Transfer((arg3 * ext_call.return_data[30 len 2] / 10000), arg1, 0);
                                                            if arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                emit Transfer((arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)), arg1, arg2);
                                                    else:
                                                        if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 16, 14) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, 0);
                                                        if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                    else:
                        if not ('storage', 8, 8, 14):
                            Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                            if not ('storage', 16, 160, 8):
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                    revert with 0, 17
                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                    if arg3 and ('storage', 16, 160, 8) > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * ('storage', 16, 160, 8) / 10000:
                                                        revert with 0, 17
                                                    if arg3 * ('storage', 16, 160, 8) / 10000 >= arg3:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg3 * ('storage', 16, 160, 8) / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not ('storage', 160, 0, 10):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 160, 8) / 10000):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg3 * ('storage', 16, 160, 8) / 10000), arg1, ('storage', 160, 0, 10));
                                                    if arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                        emit Transfer((arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)), arg1, arg2);
                                                else:
                                                    if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                        revert with 0, 17
                                                    if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                        revert with 0, 'the tax amount should be less than the transferred amount.'
                                                    if arg3 * ('storage', 16, 16, 14) / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not ('storage', 160, 0, 10):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 16, 14) / 10000):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, ('storage', 160, 0, 10));
                                                    if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                        emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                        else:
                            if not ('storage', 160, 0, 11):
                                uint16(stor[8].field_176) = 0
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                    revert with 0, 17
                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                if not ext_call.return_data[30 len 2]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                        if arg3 and ext_call.return_data[30 len 2] > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ext_call.return_data[30 len 2] / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if not arg3 * ext_call.return_data[30 len 2] / 10000:
                                                            if arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)), arg1, arg2);
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                            emit Transfer((arg3 * ext_call.return_data[30 len 2] / 10000), arg1, ('storage', 160, 0, 10));
                                                            if arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                emit Transfer((arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)), arg1, arg2);
                                                    else:
                                                        if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 16, 14) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, ('storage', 160, 0, 10));
                                                        if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
        else:
            if bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 32)):
                if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[63 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) <= 0:
                    uint16(stor[8].field_176) = 0
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                        revert with 0, 17
                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= ('storage', 256, 0, 13):
                        uint16(stor[8].field_176) = 0
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                            revert with 0, 17
                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) < ('storage', 256, 0, 12):
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg3 and ('storage', 16, 160, 8) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 160, 8) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 160, 8) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 160, 8) / 10000), arg1, 0);
                                                        if arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)), arg1, arg2);
                                                    else:
                                                        if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 16, 14) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, 0);
                                                        if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18), ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg3 and ext_call.return_data[30 len 2] > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ext_call.return_data[30 len 2] / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)), arg1, arg2);
                                                            else:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, 2) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg3 * ext_call.return_data[30 len 2] / 10000), arg1, 0);
                                                                if arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)), arg1, arg2);
                                                        else:
                                                            if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg3 * ('storage', 16, 16, 14) / 10000:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, 0);
                                                            if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                        else:
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg3 and ('storage', 16, 160, 8) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 160, 8) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 160, 8) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 160, 8) / 10000), arg1, ('storage', 160, 0, 10));
                                                        if arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)), arg1, arg2);
                                                    else:
                                                        if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 16, 14) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, ('storage', 160, 0, 10));
                                                        if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18), ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg3 and ext_call.return_data[30 len 2] > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ext_call.return_data[30 len 2] / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)), arg1, arg2);
                                                            else:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg3 * ext_call.return_data[30 len 2] / 10000), arg1, ('storage', 160, 0, 10));
                                                                if arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)), arg1, arg2);
                                                        else:
                                                            if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg3 * ('storage', 16, 16, 14) / 10000:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, ('storage', 160, 0, 10));
                                                            if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
            else:
                s = 10
                t = 1
                idx = uint8(-ext_call.return_data[63 len 1] + 18)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * s * t <= 0:
                    uint16(stor[8].field_176) = 0
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                        revert with 0, 17
                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if ext_call.return_data[0] * s * t >= ('storage', 256, 0, 13):
                        uint16(stor[8].field_176) = 0
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                            revert with 0, 17
                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if ext_call.return_data[0] * s * t < ('storage', 256, 0, 12):
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg3 and ('storage', 16, 160, 8) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 160, 8) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 160, 8) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 160, 8) / 10000), arg1, 0);
                                                        if arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)), arg1, arg2);
                                                    else:
                                                        if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 16, 14) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, 0);
                                                        if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * s * t, ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg3 and ext_call.return_data[30 len 2] > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ext_call.return_data[30 len 2] / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)), arg1, arg2);
                                                            else:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, 2) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg3 * ext_call.return_data[30 len 2] / 10000), arg1, 0);
                                                                if arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)), arg1, arg2);
                                                        else:
                                                            if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg3 * ('storage', 16, 16, 14) / 10000:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: burn from the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, 2) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 17
                                                                uint256(stor[2].field_0) = ('storage', 256, 0, 2) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, 0);
                                                            if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                        else:
                            if not ('storage', 8, 8, 14):
                                Mask(80, 0, stor[8].field_176) = ('storage', 16, 160, 8)
                                if not ('storage', 16, 160, 8):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 16, 160, 8) <= ('storage', 16, 16, 14):
                                                        if arg3 and ('storage', 16, 160, 8) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 160, 8) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 160, 8) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 160, 8) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 160, 8) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 160, 8) / 10000), arg1, ('storage', 160, 0, 10));
                                                        if arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 160, 8) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 160, 8) / 10000)), arg1, arg2);
                                                    else:
                                                        if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                            revert with 0, 'the tax amount should be less than the transferred amount.'
                                                        if arg3 * ('storage', 16, 16, 14) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not ('storage', 160, 0, 10):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, ('storage', 160, 0, 10));
                                                        if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                revert with 0, 17
                                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                            emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
                            else:
                                if not ('storage', 160, 0, 11):
                                    uint16(stor[8].field_176) = 0
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                        revert with 0, 17
                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x855ee2f7 with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[0] * s * t, ('storage', 256, 0, 13), ('storage', 32, 0, 14), ('storage', 32, 0, 14), ('storage', 16, 0, 14), ('storage', 16, 16, 14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    uint16(stor[8].field_176) = ext_call.return_data[30 len 2]
                                    if not ext_call.return_data[30 len 2]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                            revert with 0, 17
                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                revert with 0, 17
                                            uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                    revert with 0, 17
                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 15))):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                        revert with 0, 17
                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 15))):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3
                                                        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !arg3:
                                                            revert with 0, 17
                                                        uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if ext_call.return_data[30 len 2] <= ('storage', 16, 16, 14):
                                                            if arg3 and ext_call.return_data[30 len 2] > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ext_call.return_data[30 len 2] / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if not arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                if arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                    emit Transfer((arg3 - (arg3 * ext_call.return_data[30 len 2] / 10000)), arg1, arg2);
                                                            else:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ext_call.return_data[30 len 2] / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ext_call.return_data[30 len 2] / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ext_call.return_data[30 len 2] / 10000)
                                                                emit Transfer((arg3 * ext_call.return_data[30 len 2] / 10000), arg1, ('storage', 160, 0, 10));
                                                                if arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg2:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)):
                                                                        revert with 0, 17
                                                                    uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)
                                                                    emit Transfer((arg3 - (arg3 * uint16(ext_call.return_data[0]) / 10000)), arg1, arg2);
                                                        else:
                                                            if arg3 and ('storage', 16, 16, 14) > -1 / arg3:
                                                                revert with 0, 17
                                                            if arg3 < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                revert with 0, 17
                                                            if arg3 * ('storage', 16, 16, 14) / 10000 >= arg3:
                                                                revert with 0, 'the tax amount should be less than the transferred amount.'
                                                            if arg3 * ('storage', 16, 16, 14) / 10000:
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not ('storage', 160, 0, 10):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 * ('storage', 16, 16, 14) / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) > !(arg3 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(('storage', 160, 0, 10), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 10), 0))) + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 * ('storage', 16, 16, 14) / 10000), arg1, ('storage', 160, 0, 10));
                                                            if arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) < arg3 - (arg3 * ('storage', 16, 16, 14) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                uint256(stor[sha3(address(arg1), 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))) - arg3 + (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) > !(arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)):
                                                                    revert with 0, 17
                                                                uint256(stor[sha3(arg2, 0)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 0))) + arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)
                                                                emit Transfer((arg3 - (arg3 * ('storage', 16, 16, 14) / 10000)), arg1, arg2);
        if ('storage', 256, 0, ('sha3', ('data', 'msg.sender', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) < arg3:
            revert with 0, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    uint256(stor[sha3(address(msg.sender), sha3(address(arg1), 1))].field_0) = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) - arg3
    emit Approval((('storage', 256, 0, ('sha3', ('data', 'msg.sender', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))) - arg3), arg1, msg.sender);
    return 1
}



}
