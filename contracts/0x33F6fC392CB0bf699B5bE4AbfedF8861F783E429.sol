contract main {




// =====================  Runtime code  =====================


const decimals = 18

const genesis_supply = 20000 * 10^18

const BURN_ADDRESS = 57005


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
array of address sub_32adb9a5;
mapping of uint8 stor7;
uint16 sub_5024ec1f; offset 160
uint16 sub_a6e7ab16; offset 176
uint128 stor8; offset 176
address sub_105481afAddress;
address sub_3e5f13d4Address;
address sub_c3bdf613Address;
uint256 burnThreshold;
uint256 sub_77d1440d;
uint8 sub_242b8f64;
uint8 sub_8d3cc818; offset 8
uint16 sub_e48849b2; offset 16
uint16 sub_887d882f; offset 32
uint32 sub_fb1c80b2; offset 48
uint32 sub_05a04aae; offset 80
mapping of uint8 stor14;
uint8 stor16;
uint8 stor16; offset 8
uint16 stor16;
uint256 MAX_TOTAL_SUPPLY;
mapping of uint256 minters;
mapping of uint256 minters_minted;

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
    return bool(sub_242b8f64)
}

function sub_32adb9a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_32adb9a5.length
    return sub_32adb9a5[arg1]
}

function MAX_TOTAL_SUPPLY() payable {
    return MAX_TOTAL_SUPPLY
}

function sub_3e5f13d4(?) payable {
    return sub_3e5f13d4Address
}

function burnThreshold() payable {
    return burnThreshold
}

function sub_5024ec1f(?) payable {
    return sub_5024ec1f
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_77d1440d(?) payable {
    return sub_77d1440d
}

function minters_minted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minters_minted[arg1]
}

function sub_887d882f(?) payable {
    return sub_887d882f
}

function sub_8d3cc818(?) payable {
    return bool(sub_8d3cc818)
}

function owner() payable {
    return owner
}

function sub_a6e7ab16(?) payable {
    return sub_a6e7ab16
}

function sub_c3bdf613(?) payable {
    return sub_c3bdf613Address
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e48849b2(?) payable {
    return sub_e48849b2
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minters[arg1]
}

function sub_f6a2db8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function sub_fb1c80b2(?) payable {
    return sub_fb1c80b2
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

function resetMaxTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_newCap is below current total supply'
    MAX_TOTAL_SUPPLY = arg1
    emit MaxTotalSupplyUpdated(arg1);
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

function enableTax() payable {
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_242b8f64 = 1
}

function disableTax() payable {
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_242b8f64 = 0
}

function sub_65bbacd9(?) payable {
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_8d3cc818 = 0
}

function sub_ff87fc7c(?) payable {
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_8d3cc818 = 1
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address detected'
    if stor7[address(arg1)]:
        revert with 0, 'Address already exists'
    stor7[address(arg1)] = 1
    sub_32adb9a5.length++
    sub_32adb9a5[sub_32adb9a5.length] = arg1
    emit PoolAdded(arg1);
}

function sub_07a212be(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_77d1440d = arg1
    return 1
}

function setBurnThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    burnThreshold = arg1
    return 1
}

function sub_2084acbc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_05a04aae = uint32(arg1)
}

function sub_3a987489(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    sub_fb1c80b2 = uint32(arg1)
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_a0025c4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if uint16(arg1) >= 5000:
        revert with 0, 'Tax rates are too high.'
    sub_e48849b2 = uint16(arg1)
}

function sub_5c26606a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if sub_5024ec1f >= 2500:
        revert with 0, 'Tax rates are too high. '
    sub_5024ec1f = uint16(arg1)
}

function sub_94771e90(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if stor14[address(arg1)]:
        revert with 0, 'Account is already excluded'
    stor14[address(arg1)] = 1
    return 1
}

function sub_19db099d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if not stor14[address(arg1)]:
        revert with 0, 'Account is already included'
    stor14[address(arg1)] = 0
    return 1
}

function pool_mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor7[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only coffin pools can call this function'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Minted(arg2, msg.sender, arg1);
}

function sub_cd428af3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if sub_887d882f >= 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'basis tax rates should be only few. '
    sub_887d882f = uint16(arg1)
}

function sub_8e6c7722(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oracle address cannot be 0 address'
    sub_105481afAddress = address(arg1)
}

function sub_69356d47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tax collector address must be non-zero address'
    sub_c3bdf613Address = address(arg1)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_3f07d76a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe43616c6c6572206973206e6f7420746865206f776e6572206f722074686520,
                        'ax office' << 184
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tax office address cannot be 0 address'
    emit 0x75237613: sub_3e5f13d4Address, address(arg1)
    sub_3e5f13d4Address = address(arg1)
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor7[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor7[address(arg1)] = 0
    idx = 0
    while idx < sub_32adb9a5.length:
        mem[0] = 6
        if sub_32adb9a5[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_32adb9a5.length:
            revert with 0, 50
        sub_32adb9a5[idx] = 0
        emit PoolRemoved(arg1);
    emit PoolRemoved(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_e7b46218(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_77d1440d:
        return 0
    if sub_77d1440d < arg1:
        revert with 0, 17
    if not sub_05a04aae:
        revert with 0, 18
    if sub_77d1440d - arg1 / sub_05a04aae and sub_77d1440d - arg1 / sub_05a04aae > -1 / sub_77d1440d - arg1 / sub_05a04aae:
        revert with 0, 17
    if sub_77d1440d - arg1 / sub_05a04aae * sub_77d1440d - arg1 / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - arg1 / sub_05a04aae * sub_77d1440d - arg1 / sub_05a04aae / 10^18:
        revert with 0, 17
    if sub_77d1440d - arg1 / sub_05a04aae * sub_77d1440d - arg1 / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
        revert with 0, 17
    if (sub_77d1440d - arg1 / sub_05a04aae * sub_77d1440d - arg1 / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
        return uint16((sub_77d1440d - arg1 / sub_05a04aae * sub_77d1440d - arg1 / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
    return sub_e48849b2
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor16.field_8):
        if uint8(stor16.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor16.field_8):
            uint16(stor16.field_0) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
    sub_32adb9a5.length++
    sub_32adb9a5[sub_32adb9a5.length] = arg1
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffffbc3cc3e6c8a9b7fffff:
        revert with 0, 17
    totalSupply += 20000 * 10^18
    if balanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffffffbc3cc3e6c8a9b7fffff:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 20000 * 10^18
    emit Transfer(20000 * 10^18, 0, msg.sender);
    if not uint8(stor16.field_8):
        uint8(stor16.field_8) = 0
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function pool_burn_from(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor7[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only coffin pools can call this function'
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burned(arg2, arg1, msg.sender);
}

function sub_739272ad(?) payable {
    require ext_code.size(sub_105481afAddress)
    staticcall sub_105481afAddress.0xe61574b0 with:
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
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
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
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
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
    if not sub_242b8f64:
        sub_a6e7ab16 = 0
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        require ext_code.size(sub_105481afAddress)
        staticcall sub_105481afAddress.0xe61574b0 with:
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
            if ext_call.return_data[0] >= sub_77d1440d:
                sub_a6e7ab16 = 0
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if ext_call.return_data[0] < burnThreshold:
                    if not sub_8d3cc818:
                        stor8 = sub_5024ec1f
                        if not sub_5024ec1f:
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7[address(arg1)]:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7[address(arg2)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg1)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg2)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and sub_5024ec1f > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * sub_5024ec1f / 10000:
                                                revert with 0, 17
                                            if arg3 * sub_5024ec1f / 10000:
                                                if not arg1:
                                                    revert with 0, 'ERC20: burn from the zero address'
                                                if balanceOf[address(arg1)] < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 * sub_5024ec1f / 10000
                                                if totalSupply < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                totalSupply -= arg3 * sub_5024ec1f / 10000
                                                emit Transfer((arg3 * sub_5024ec1f / 10000), arg1, 0);
                                            if arg3 - (arg3 * sub_5024ec1f / 10000):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5024ec1f / 10000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5024ec1f / 10000)
                                                if balanceOf[arg2] > !(arg3 - (arg3 * sub_5024ec1f / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5024ec1f / 10000)
                                                emit Transfer((arg3 - (arg3 * sub_5024ec1f / 10000)), arg1, arg2);
                    else:
                        if ext_call.return_data[0] >= sub_77d1440d:
                            sub_a6e7ab16 = 0
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if sub_77d1440d < ext_call.return_data[0]:
                                revert with 0, 17
                            if not sub_05a04aae:
                                revert with 0, 18
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae and sub_77d1440d - ext_call.return_data[0] / sub_05a04aae > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                revert with 0, 17
                            if (sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                sub_a6e7ab16 = uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                if not uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg1)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg2)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg2)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        revert with 0, 17
                                                    if arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if balanceOf[address(arg1)] < arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        if totalSupply < arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        totalSupply -= arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        emit Transfer((arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), arg1, 0);
                                                    if arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                            else:
                                stor8 = sub_e48849b2
                                if not sub_e48849b2:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg1)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg2)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg2)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and sub_e48849b2 > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * sub_e48849b2 / 10000:
                                                        revert with 0, 17
                                                    if arg3 * sub_e48849b2 / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if balanceOf[address(arg1)] < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3 * sub_e48849b2 / 10000
                                                        if totalSupply < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        totalSupply -= arg3 * sub_e48849b2 / 10000
                                                        emit Transfer((arg3 * sub_e48849b2 / 10000), arg1, 0);
                                                    if arg3 - (arg3 * sub_e48849b2 / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e48849b2 / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e48849b2 / 10000)
                                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_e48849b2 / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e48849b2 / 10000)
                                                        emit Transfer((arg3 - (arg3 * sub_e48849b2 / 10000)), arg1, arg2);
                else:
                    if not sub_8d3cc818:
                        stor8 = sub_5024ec1f
                        if not sub_5024ec1f:
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor7[address(arg1)]:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7[address(arg2)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg1)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg2)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and sub_5024ec1f > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 < arg3 * sub_5024ec1f / 10000:
                                                revert with 0, 17
                                            if arg3 * sub_5024ec1f / 10000:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_c3bdf613Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 * sub_5024ec1f / 10000
                                                if balanceOf[stor10] > !(arg3 * sub_5024ec1f / 10000):
                                                    revert with 0, 17
                                                balanceOf[stor10] += arg3 * sub_5024ec1f / 10000
                                                emit Transfer((arg3 * sub_5024ec1f / 10000), arg1, sub_c3bdf613Address);
                                            if arg3 - (arg3 * sub_5024ec1f / 10000):
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5024ec1f / 10000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5024ec1f / 10000)
                                                if balanceOf[arg2] > !(arg3 - (arg3 * sub_5024ec1f / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5024ec1f / 10000)
                                                emit Transfer((arg3 - (arg3 * sub_5024ec1f / 10000)), arg1, arg2);
                    else:
                        if ext_call.return_data[0] >= sub_77d1440d:
                            sub_a6e7ab16 = 0
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if sub_77d1440d < ext_call.return_data[0]:
                                revert with 0, 17
                            if not sub_05a04aae:
                                revert with 0, 18
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae and sub_77d1440d - ext_call.return_data[0] / sub_05a04aae > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                revert with 0, 17
                            if (sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                sub_a6e7ab16 = uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                if not uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg1)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg2)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg2)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        revert with 0, 17
                                                    if arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not sub_c3bdf613Address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        if balanceOf[stor10] > !(arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            revert with 0, 17
                                                        balanceOf[stor10] += arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        emit Transfer((arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), arg1, sub_c3bdf613Address);
                                                    if arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                            else:
                                stor8 = sub_e48849b2
                                if not sub_e48849b2:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg1)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg2)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg2)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and sub_e48849b2 > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 < arg3 * sub_e48849b2 / 10000:
                                                        revert with 0, 17
                                                    if arg3 * sub_e48849b2 / 10000:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not sub_c3bdf613Address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3 * sub_e48849b2 / 10000
                                                        if balanceOf[stor10] > !(arg3 * sub_e48849b2 / 10000):
                                                            revert with 0, 17
                                                        balanceOf[stor10] += arg3 * sub_e48849b2 / 10000
                                                        emit Transfer((arg3 * sub_e48849b2 / 10000), arg1, sub_c3bdf613Address);
                                                    if arg3 - (arg3 * sub_e48849b2 / 10000):
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e48849b2 / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e48849b2 / 10000)
                                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_e48849b2 / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e48849b2 / 10000)
                                                        emit Transfer((arg3 - (arg3 * sub_e48849b2 / 10000)), arg1, arg2);
        else:
            if bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 32)):
                if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[63 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= sub_77d1440d:
                    sub_a6e7ab16 = 0
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) < burnThreshold:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and sub_5024ec1f > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg3 * sub_5024ec1f / 10000:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: burn from the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * sub_5024ec1f / 10000
                                                    if totalSupply < arg3 * sub_5024ec1f / 10000:
                                                        revert with 0, 17
                                                    totalSupply -= arg3 * sub_5024ec1f / 10000
                                                    emit Transfer((arg3 * sub_5024ec1f / 10000), arg1, 0);
                                                if arg3 - (arg3 * sub_5024ec1f / 10000):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg3 - (arg3 * sub_5024ec1f / 10000)), arg1, arg2);
                        else:
                            if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18):
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if not arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if totalSupply < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), arg1, 0);
                                                            if arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and sub_e48849b2 > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg3 * sub_e48849b2 / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * sub_e48849b2 / 10000
                                                            if totalSupply < arg3 * sub_e48849b2 / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg3 * sub_e48849b2 / 10000
                                                            emit Transfer((arg3 * sub_e48849b2 / 10000), arg1, 0);
                                                        if arg3 - (arg3 * sub_e48849b2 / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg3 - (arg3 * sub_e48849b2 / 10000)), arg1, arg2);
                    else:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and sub_5024ec1f > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg3 * sub_5024ec1f / 10000:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_c3bdf613Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * sub_5024ec1f / 10000
                                                    if balanceOf[stor10] > !(arg3 * sub_5024ec1f / 10000):
                                                        revert with 0, 17
                                                    balanceOf[stor10] += arg3 * sub_5024ec1f / 10000
                                                    emit Transfer((arg3 * sub_5024ec1f / 10000), arg1, sub_c3bdf613Address);
                                                if arg3 - (arg3 * sub_5024ec1f / 10000):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg3 - (arg3 * sub_5024ec1f / 10000)), arg1, arg2);
                        else:
                            if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18):
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if not arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if balanceOf[stor10] > !(arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), arg1, sub_c3bdf613Address);
                                                            if arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg2:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and sub_e48849b2 > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg3 * sub_e48849b2 / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * sub_e48849b2 / 10000
                                                            if balanceOf[stor10] > !(arg3 * sub_e48849b2 / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg3 * sub_e48849b2 / 10000
                                                            emit Transfer((arg3 * sub_e48849b2 / 10000), arg1, sub_c3bdf613Address);
                                                        if arg3 - (arg3 * sub_e48849b2 / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg3 - (arg3 * sub_e48849b2 / 10000)), arg1, arg2);
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
                if ext_call.return_data[0] * s * t >= sub_77d1440d:
                    sub_a6e7ab16 = 0
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if ext_call.return_data[0] * s * t < burnThreshold:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and sub_5024ec1f > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg3 * sub_5024ec1f / 10000:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: burn from the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * sub_5024ec1f / 10000
                                                    if totalSupply < arg3 * sub_5024ec1f / 10000:
                                                        revert with 0, 17
                                                    totalSupply -= arg3 * sub_5024ec1f / 10000
                                                    emit Transfer((arg3 * sub_5024ec1f / 10000), arg1, 0);
                                                if arg3 - (arg3 * sub_5024ec1f / 10000):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg3 - (arg3 * sub_5024ec1f / 10000)), arg1, arg2);
                        else:
                            if ext_call.return_data[0] * s * t >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * s * t:
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if totalSupply < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), arg1, 0);
                                                        if arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and sub_e48849b2 > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg3 * sub_e48849b2 / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * sub_e48849b2 / 10000
                                                            if totalSupply < arg3 * sub_e48849b2 / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg3 * sub_e48849b2 / 10000
                                                            emit Transfer((arg3 * sub_e48849b2 / 10000), arg1, 0);
                                                        if arg3 - (arg3 * sub_e48849b2 / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg3 - (arg3 * sub_e48849b2 / 10000)), arg1, arg2);
                    else:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor7[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor14[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor14[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and sub_5024ec1f > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 < arg3 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg3 * sub_5024ec1f / 10000:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_c3bdf613Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * sub_5024ec1f / 10000
                                                    if balanceOf[stor10] > !(arg3 * sub_5024ec1f / 10000):
                                                        revert with 0, 17
                                                    balanceOf[stor10] += arg3 * sub_5024ec1f / 10000
                                                    emit Transfer((arg3 * sub_5024ec1f / 10000), arg1, sub_c3bdf613Address);
                                                if arg3 - (arg3 * sub_5024ec1f / 10000):
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg3 - (arg3 * sub_5024ec1f / 10000)), arg1, arg2);
                        else:
                            if ext_call.return_data[0] * s * t >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * s * t:
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if balanceOf[stor10] > !(arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), arg1, sub_c3bdf613Address);
                                                        if arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            if balanceOf[arg2] > !(arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            emit Transfer((arg3 - (arg3 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), arg1, arg2);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            balanceOf[arg2] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor7[address(arg2)]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[arg2] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[arg2] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if stor14[address(arg2)]:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[arg2] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[arg2] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if arg3 and sub_e48849b2 > -1 / arg3:
                                                            revert with 0, 17
                                                        if arg3 < arg3 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg3 * sub_e48849b2 / 10000:
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] -= arg3 * sub_e48849b2 / 10000
                                                            if balanceOf[stor10] > !(arg3 * sub_e48849b2 / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg3 * sub_e48849b2 / 10000
                                                            emit Transfer((arg3 * sub_e48849b2 / 10000), arg1, sub_c3bdf613Address);
                                                        if arg3 - (arg3 * sub_e48849b2 / 10000):
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg2:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg3 - (arg3 * sub_e48849b2 / 10000)), arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
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
    if not sub_242b8f64:
        sub_a6e7ab16 = 0
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require ext_code.size(sub_105481afAddress)
        staticcall sub_105481afAddress.0xe61574b0 with:
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
            if ext_call.return_data[0] >= sub_77d1440d:
                sub_a6e7ab16 = 0
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if ext_call.return_data[0] < burnThreshold:
                    if not sub_8d3cc818:
                        stor8 = sub_5024ec1f
                        if not sub_5024ec1f:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and sub_5024ec1f > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * sub_5024ec1f / 10000:
                                                revert with 0, 17
                                            if arg2 * sub_5024ec1f / 10000:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: burn from the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * sub_5024ec1f / 10000
                                                if totalSupply < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                totalSupply -= arg2 * sub_5024ec1f / 10000
                                                emit Transfer((arg2 * sub_5024ec1f / 10000), msg.sender, 0);
                                            if arg2 - (arg2 * sub_5024ec1f / 10000):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5024ec1f / 10000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5024ec1f / 10000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * sub_5024ec1f / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_5024ec1f / 10000)
                                                emit Transfer((arg2 - (arg2 * sub_5024ec1f / 10000)), msg.sender, arg1);
                    else:
                        if ext_call.return_data[0] >= sub_77d1440d:
                            sub_a6e7ab16 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if sub_77d1440d < ext_call.return_data[0]:
                                revert with 0, 17
                            if not sub_05a04aae:
                                revert with 0, 18
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae and sub_77d1440d - ext_call.return_data[0] / sub_05a04aae > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                revert with 0, 17
                            if (sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                sub_a6e7ab16 = uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                if not uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        revert with 0, 17
                                                    if arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        if totalSupply < arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        totalSupply -= arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        emit Transfer((arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), msg.sender, 0);
                                                    if arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                            else:
                                stor8 = sub_e48849b2
                                if not sub_e48849b2:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_e48849b2 > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * sub_e48849b2 / 10000:
                                                        revert with 0, 17
                                                    if arg2 * sub_e48849b2 / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 'ERC20: burn amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * sub_e48849b2 / 10000
                                                        if totalSupply < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        totalSupply -= arg2 * sub_e48849b2 / 10000
                                                        emit Transfer((arg2 * sub_e48849b2 / 10000), msg.sender, 0);
                                                    if arg2 - (arg2 * sub_e48849b2 / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_e48849b2 / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_e48849b2 / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_e48849b2 / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_e48849b2 / 10000)
                                                        emit Transfer((arg2 - (arg2 * sub_e48849b2 / 10000)), msg.sender, arg1);
                else:
                    if not sub_8d3cc818:
                        stor8 = sub_5024ec1f
                        if not sub_5024ec1f:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and sub_5024ec1f > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * sub_5024ec1f / 10000:
                                                revert with 0, 17
                                            if arg2 * sub_5024ec1f / 10000:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not sub_c3bdf613Address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * sub_5024ec1f / 10000
                                                if balanceOf[stor10] > !(arg2 * sub_5024ec1f / 10000):
                                                    revert with 0, 17
                                                balanceOf[stor10] += arg2 * sub_5024ec1f / 10000
                                                emit Transfer((arg2 * sub_5024ec1f / 10000), msg.sender, sub_c3bdf613Address);
                                            if arg2 - (arg2 * sub_5024ec1f / 10000):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5024ec1f / 10000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5024ec1f / 10000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * sub_5024ec1f / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_5024ec1f / 10000)
                                                emit Transfer((arg2 - (arg2 * sub_5024ec1f / 10000)), msg.sender, arg1);
                    else:
                        if ext_call.return_data[0] >= sub_77d1440d:
                            sub_a6e7ab16 = 0
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if sub_77d1440d < ext_call.return_data[0]:
                                revert with 0, 17
                            if not sub_05a04aae:
                                revert with 0, 18
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae and sub_77d1440d - ext_call.return_data[0] / sub_05a04aae > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18:
                                revert with 0, 17
                            if sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                revert with 0, 17
                            if (sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                sub_a6e7ab16 = uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                if not uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        revert with 0, 17
                                                    if arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not sub_c3bdf613Address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        if balanceOf[stor10] > !(arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            revert with 0, 17
                                                        balanceOf[stor10] += arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                        emit Transfer((arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), msg.sender, sub_c3bdf613Address);
                                                    if arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                        emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - ext_call.return_data[0] / sub_05a04aae * sub_77d1440d - ext_call.return_data[0] / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                            else:
                                stor8 = sub_e48849b2
                                if not sub_e48849b2:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_e48849b2 > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * sub_e48849b2 / 10000:
                                                        revert with 0, 17
                                                    if arg2 * sub_e48849b2 / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not sub_c3bdf613Address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * sub_e48849b2 / 10000
                                                        if balanceOf[stor10] > !(arg2 * sub_e48849b2 / 10000):
                                                            revert with 0, 17
                                                        balanceOf[stor10] += arg2 * sub_e48849b2 / 10000
                                                        emit Transfer((arg2 * sub_e48849b2 / 10000), msg.sender, sub_c3bdf613Address);
                                                    if arg2 - (arg2 * sub_e48849b2 / 10000):
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_e48849b2 / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_e48849b2 / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_e48849b2 / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_e48849b2 / 10000)
                                                        emit Transfer((arg2 - (arg2 * sub_e48849b2 / 10000)), msg.sender, arg1);
        else:
            if bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[63 len 1] + 18) < 32)):
                if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[63 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= sub_77d1440d:
                    sub_a6e7ab16 = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) < burnThreshold:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and sub_5024ec1f > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg2 * sub_5024ec1f / 10000:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: burn from the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sub_5024ec1f / 10000
                                                    if totalSupply < arg2 * sub_5024ec1f / 10000:
                                                        revert with 0, 17
                                                    totalSupply -= arg2 * sub_5024ec1f / 10000
                                                    emit Transfer((arg2 * sub_5024ec1f / 10000), msg.sender, 0);
                                                if arg2 - (arg2 * sub_5024ec1f / 10000):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg2 - (arg2 * sub_5024ec1f / 10000)), msg.sender, arg1);
                        else:
                            if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18):
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if not arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if totalSupply < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), msg.sender, 0);
                                                            if arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_e48849b2 > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg2 * sub_e48849b2 / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sub_e48849b2 / 10000
                                                            if totalSupply < arg2 * sub_e48849b2 / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg2 * sub_e48849b2 / 10000
                                                            emit Transfer((arg2 * sub_e48849b2 / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * sub_e48849b2 / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg2 - (arg2 * sub_e48849b2 / 10000)), msg.sender, arg1);
                    else:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and sub_5024ec1f > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg2 * sub_5024ec1f / 10000:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_c3bdf613Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sub_5024ec1f / 10000
                                                    if balanceOf[stor10] > !(arg2 * sub_5024ec1f / 10000):
                                                        revert with 0, 17
                                                    balanceOf[stor10] += arg2 * sub_5024ec1f / 10000
                                                    emit Transfer((arg2 * sub_5024ec1f / 10000), msg.sender, sub_c3bdf613Address);
                                                if arg2 - (arg2 * sub_5024ec1f / 10000):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg2 - (arg2 * sub_5024ec1f / 10000)), msg.sender, arg1);
                        else:
                            if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18) >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18):
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if not arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if balanceOf[stor10] > !(arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[63 len 1] + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), msg.sender, sub_c3bdf613Address);
                                                            if arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                                emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[32]) + 18)) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_e48849b2 > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg2 * sub_e48849b2 / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sub_e48849b2 / 10000
                                                            if balanceOf[stor10] > !(arg2 * sub_e48849b2 / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg2 * sub_e48849b2 / 10000
                                                            emit Transfer((arg2 * sub_e48849b2 / 10000), msg.sender, sub_c3bdf613Address);
                                                        if arg2 - (arg2 * sub_e48849b2 / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg2 - (arg2 * sub_e48849b2 / 10000)), msg.sender, arg1);
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
                if ext_call.return_data[0] * s * t >= sub_77d1440d:
                    sub_a6e7ab16 = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if ext_call.return_data[0] * s * t < burnThreshold:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and sub_5024ec1f > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg2 * sub_5024ec1f / 10000:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: burn from the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sub_5024ec1f / 10000
                                                    if totalSupply < arg2 * sub_5024ec1f / 10000:
                                                        revert with 0, 17
                                                    totalSupply -= arg2 * sub_5024ec1f / 10000
                                                    emit Transfer((arg2 * sub_5024ec1f / 10000), msg.sender, 0);
                                                if arg2 - (arg2 * sub_5024ec1f / 10000):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg2 - (arg2 * sub_5024ec1f / 10000)), msg.sender, arg1);
                        else:
                            if ext_call.return_data[0] * s * t >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * s * t:
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if totalSupply < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_e48849b2 > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg2 * sub_e48849b2 / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: burn from the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sub_e48849b2 / 10000
                                                            if totalSupply < arg2 * sub_e48849b2 / 10000:
                                                                revert with 0, 17
                                                            totalSupply -= arg2 * sub_e48849b2 / 10000
                                                            emit Transfer((arg2 * sub_e48849b2 / 10000), msg.sender, 0);
                                                        if arg2 - (arg2 * sub_e48849b2 / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg2 - (arg2 * sub_e48849b2 / 10000)), msg.sender, arg1);
                    else:
                        if not sub_8d3cc818:
                            stor8 = sub_5024ec1f
                            if not sub_5024ec1f:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor14[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and sub_5024ec1f > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < arg2 * sub_5024ec1f / 10000:
                                                    revert with 0, 17
                                                if arg2 * sub_5024ec1f / 10000:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not sub_c3bdf613Address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sub_5024ec1f / 10000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sub_5024ec1f / 10000
                                                    if balanceOf[stor10] > !(arg2 * sub_5024ec1f / 10000):
                                                        revert with 0, 17
                                                    balanceOf[stor10] += arg2 * sub_5024ec1f / 10000
                                                    emit Transfer((arg2 * sub_5024ec1f / 10000), msg.sender, sub_c3bdf613Address);
                                                if arg2 - (arg2 * sub_5024ec1f / 10000):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_5024ec1f / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_5024ec1f / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_5024ec1f / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_5024ec1f / 10000)
                                                    emit Transfer((arg2 - (arg2 * sub_5024ec1f / 10000)), msg.sender, arg1);
                        else:
                            if ext_call.return_data[0] * s * t >= sub_77d1440d:
                                sub_a6e7ab16 = 0
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if sub_77d1440d < ext_call.return_data[0] * s * t:
                                    revert with 0, 17
                                if not sub_05a04aae:
                                    revert with 0, 18
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae and sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 and sub_fb1c80b2 > -1 / sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18:
                                    revert with 0, 17
                                if sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18 > !sub_887d882f:
                                    revert with 0, 17
                                if (sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f <= sub_e48849b2:
                                    sub_a6e7ab16 = uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f)
                                    if not uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            revert with 0, 17
                                                        if arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            if balanceOf[stor10] > !(arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000
                                                            emit Transfer((arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000), msg.sender, sub_c3bdf613Address);
                                                        if arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)
                                                            emit Transfer((arg2 - (arg2 * uint16((sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae * sub_77d1440d - (ext_call.return_data[0] * s * t) / sub_05a04aae / 10^18 * sub_fb1c80b2 / 10^18) + sub_887d882f) / 10000)), msg.sender, arg1);
                                else:
                                    stor8 = sub_e48849b2
                                    if not sub_e48849b2:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_e48849b2 > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 < arg2 * sub_e48849b2 / 10000:
                                                            revert with 0, 17
                                                        if arg2 * sub_e48849b2 / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not sub_c3bdf613Address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sub_e48849b2 / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sub_e48849b2 / 10000
                                                            if balanceOf[stor10] > !(arg2 * sub_e48849b2 / 10000):
                                                                revert with 0, 17
                                                            balanceOf[stor10] += arg2 * sub_e48849b2 / 10000
                                                            emit Transfer((arg2 * sub_e48849b2 / 10000), msg.sender, sub_c3bdf613Address);
                                                        if arg2 - (arg2 * sub_e48849b2 / 10000):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_e48849b2 / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_e48849b2 / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_e48849b2 / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_e48849b2 / 10000)
                                                            emit Transfer((arg2 - (arg2 * sub_e48849b2 / 10000)), msg.sender, arg1);
    return 1
}



}
