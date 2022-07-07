contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_e59e966d(?)
#
const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const MAX_ALLOCATION = 10000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 sub_22c2fac5;
uint256 sub_032bf4f3;
uint256 sub_f972177d;
address wallet1Address;
address wallet2Address;
address wallet3Address;
uint256 taxFee;
uint256 minSwapAmount;
uint8 stor16; offset 8
uint8 stor16; offset 16
uint256 stor16; offset 16
mapping of uint8 stor17;
uint8 sub_a1f41d67; offset 160
uint128 stor18; offset 160
address feeRecipientAddress;
address unirouterAddress;

function sub_032bf4f3(?) payable {
    return sub_032bf4f3
}

function name() payable {
    return name[0 len name.length]
}

function wallet2() payable {
    return wallet2Address
}

function totalSupply() payable {
    return totalSupply
}

function autoBuyback() payable {
    return bool(uint8(stor16.field_16))
}

function wallet1() payable {
    return wallet1Address
}

function sub_22c2fac5(?) payable {
    return sub_22c2fac5
}

function unirouter() payable {
    return unirouterAddress
}

function decimals() payable {
    return decimals
}

function minSwapAmount() payable {
    return minSwapAmount
}

function wallet3() payable {
    return wallet3Address
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function taxFee() payable {
    return taxFee
}

function sub_a1f41d67(?) payable {
    return bool(sub_a1f41d67)
}

function mintersWithoutFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_c3d0f433(?) payable {
    return bool(uint8(stor16.field_8))
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_f972177d(?) payable {
    return sub_f972177d
}

function _fallback() payable {
    revert
}

function startSale() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor16.field_8) = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor17[address(arg1)] = 1
}

function setUniswapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function includeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor17[address(arg1)] = 0
}

function setMinimumSwapAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    minSwapAmount = arg1
}

function setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    taxFee = arg1
    emit UpdateTaxFee(arg1);
}

function enableAutoBuyback(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(240, 0, stor16.field_16) = Mask(240, 0, arg1)
}

function sub_aaf2c81e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    feeRecipientAddress = arg1
    stor18 = Mask(96, 0, arg2)
    emit 0x6632de8a: arg1
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = uint8(arg2)
    emit UpdateMinter(arg2, arg1);
}

function setWallets(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    wallet1Address = arg1
    wallet2Address = arg2
    wallet3Address = arg3
    emit 0xdd991763: arg1, arg2, arg3
}

function setMinterWithoutFee(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor7[address(arg1)] = uint8(arg2)
    if not stor6[address(arg1)]:
        if arg2:
            stor6[address(arg1)] = 1
    emit UpdateMinter(arg2, arg1);
}

function sub_15d75b59(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if sub_f972177d < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_f972177d + arg2 + arg1 >= 10000:
        revert with 0, 'invalid value'
    sub_22c2fac5 = arg1
    sub_032bf4f3 = arg2
    sub_f972177d = arg3
    emit 0x5b051d92: arg1, arg2, arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_aebb9b79(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[msg.sender]:
        revert with 0, '!minter'
    if 1 == bool(stor7[msg.sender]):
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
        return arg2
    if sub_22c2fac5 > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_032bf4f3 > -sub_22c2fac5 + 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_f972177d > -sub_22c2fac5 + -sub_032bf4f3 + 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, arg1);
        if sub_22c2fac5:
            if not arg2:
                if not wallet1Address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor11] < balanceOf[stor11]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, wallet1Address);
            else:
                if sub_22c2fac5 * arg2 / arg2 != sub_22c2fac5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not wallet1Address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (sub_22c2fac5 * arg2 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += sub_22c2fac5 * arg2 / 10000
                if (sub_22c2fac5 * arg2 / 10000) + balanceOf[stor11] < balanceOf[stor11]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor11] += sub_22c2fac5 * arg2 / 10000
                emit Transfer((sub_22c2fac5 * arg2 / 10000), 0, wallet1Address);
        if sub_032bf4f3:
            if not arg2:
                if not wallet2Address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor12] < balanceOf[stor12]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, wallet2Address);
            else:
                if sub_032bf4f3 * arg2 / arg2 != sub_032bf4f3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not wallet2Address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (sub_032bf4f3 * arg2 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += sub_032bf4f3 * arg2 / 10000
                if (sub_032bf4f3 * arg2 / 10000) + balanceOf[stor12] < balanceOf[stor12]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor12] += sub_032bf4f3 * arg2 / 10000
                emit Transfer((sub_032bf4f3 * arg2 / 10000), 0, wallet2Address);
        if sub_f972177d:
            if not arg2:
                if not wallet3Address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor13] < balanceOf[stor13]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, wallet3Address);
            else:
                if sub_f972177d * arg2 / arg2 != sub_f972177d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not wallet3Address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (sub_f972177d * arg2 / 10000) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += sub_f972177d * arg2 / 10000
                if (sub_f972177d * arg2 / 10000) + balanceOf[stor13] < balanceOf[stor13]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor13] += sub_f972177d * arg2 / 10000
                emit Transfer((sub_f972177d * arg2 / 10000), 0, wallet3Address);
            return 0
        else:
            return 0
    if (10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / arg2 != -sub_22c2fac5 + -sub_032bf4f3 + -sub_f972177d + 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if ((10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / 10000) + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += (10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / 10000
    if ((10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += (10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / 10000
    emit Transfer(((10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / 10000), 0, arg1);
    if sub_22c2fac5:
        if not arg2:
            if not wallet1Address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor11] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, wallet1Address);
        else:
            if sub_22c2fac5 * arg2 / arg2 != sub_22c2fac5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not wallet1Address:
                revert with 0, 'ERC20: mint to the zero address'
            if (sub_22c2fac5 * arg2 / 10000) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += sub_22c2fac5 * arg2 / 10000
            if (sub_22c2fac5 * arg2 / 10000) + balanceOf[stor11] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += sub_22c2fac5 * arg2 / 10000
            emit Transfer((sub_22c2fac5 * arg2 / 10000), 0, wallet1Address);
    if sub_032bf4f3:
        if not arg2:
            if not wallet2Address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor12] < balanceOf[stor12]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, wallet2Address);
        else:
            if sub_032bf4f3 * arg2 / arg2 != sub_032bf4f3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not wallet2Address:
                revert with 0, 'ERC20: mint to the zero address'
            if (sub_032bf4f3 * arg2 / 10000) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += sub_032bf4f3 * arg2 / 10000
            if (sub_032bf4f3 * arg2 / 10000) + balanceOf[stor12] < balanceOf[stor12]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor12] += sub_032bf4f3 * arg2 / 10000
            emit Transfer((sub_032bf4f3 * arg2 / 10000), 0, wallet2Address);
    if sub_f972177d:
        if not arg2:
            if not wallet3Address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor13] < balanceOf[stor13]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, wallet3Address);
        else:
            if sub_f972177d * arg2 / arg2 != sub_f972177d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not wallet3Address:
                revert with 0, 'ERC20: mint to the zero address'
            if (sub_f972177d * arg2 / 10000) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += sub_f972177d * arg2 / 10000
            if (sub_f972177d * arg2 / 10000) + balanceOf[stor13] < balanceOf[stor13]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor13] += sub_f972177d * arg2 / 10000
            emit Transfer((sub_f972177d * arg2 / 10000), 0, wallet3Address);
    return ((10000 * arg2) - (sub_22c2fac5 * arg2) - (sub_032bf4f3 * arg2) - (sub_f972177d * arg2) / 10000)
}



}
