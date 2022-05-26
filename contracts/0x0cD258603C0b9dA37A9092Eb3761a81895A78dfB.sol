contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const sub_2f083c42(?) = 900


array of struct stor0;
array of struct stor1;
uint8 decimals;
uint256 sub_567eef14;
uint256 sellVolume;
uint256 burnTax;
uint256 sub_4f4ad3a6;
uint256 sub_b087a4c7;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint8 sub_50986222;

function totalSupply() payable {
    return totalSupply
}

function burnTax() payable {
    return burnTax
}

function decimals() payable {
    return decimals
}

function sub_4f4ad3a6(?) payable {
    return sub_4f4ad3a6
}

function sub_50986222(?) payable {
    return bool(sub_50986222)
}

function sub_567eef14(?) payable {
    return sub_567eef14
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sellVolume() payable {
    return sellVolume
}

function sub_b087a4c7(?) payable {
    return sub_b087a4c7
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function maxTxn() payable {
    if not sub_b087a4c7:
        revert with 0, 18
    return (totalSupply / sub_b087a4c7)
}

function updateMaxTxnDivisor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'Only dev wallets can call'
    sub_b087a4c7 = arg1
}

function updateBuyingStatus() payable {
    if not stor12[msg.sender]:
        revert with 0, 'Only dev wallets can call'
    if not sub_50986222:
        sub_50986222 = 1
    else:
        sub_50986222 = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function renounceSelfWallet(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[msg.sender]:
        revert with 0, 'Only dev wallets can call'
    stor12[msg.sender] = 0
    if arg1:
        stor13[msg.sender] = 1
}

function addDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor12[msg.sender]:
        revert with 0, 'Only dev wallets can call'
    if stor13[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address has permanently renounced'
    stor12[address(arg1)] = 1
}

function isUniswapPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if mem[140 len 20] == this.address:
        return True
    return (mem[172 len 20] == this.address)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= balanceOf[msg.sender]
    if block.number < 900:
        revert with 0, 17
    if sub_4f4ad3a6 <= block.number - 900:
        if sub_567eef14:
            if sellVolume:
                if sellVolume > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851:
                    revert with 0, 17
                if not sub_567eef14:
                    revert with 0, 18
                burnTax = 800 * sellVolume / sub_567eef14
                if 500 > 800 * sellVolume / sub_567eef14:
                    burnTax = 500
                if burnTax > 1800:
                    burnTax = 1800
                sub_4f4ad3a6 = block.number
                sub_567eef14 = 0
                sellVolume = 0
                emit TaxUpdated(burnTax, burnTax, msg.sender);
    if stor14[msg.sender]:
        require not sub_50986222
        if not sub_b087a4c7:
            revert with 0, 18
        if totalSupply / sub_b087a4c7 < arg2:
            revert with 0, 'Too many tokens'
        if sub_567eef14 > !arg2:
            revert with 0, 17
        sub_567eef14 += arg2
        stor11[address(arg1)] = block.timestamp
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[msg.sender] -= arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function calcTax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[address(arg1)]:
        if burnTax <= 2500:
            return burnTax
    else:
        if 3 * 3600 > !stor11[address(arg1)]:
            revert with 0, 17
        if stor11[address(arg1)] + (3 * 3600) <= block.timestamp:
            if burnTax <= 2500:
                return burnTax
        else:
            if 3600 > !stor11[address(arg1)]:
                revert with 0, 17
            if stor11[address(arg1)] + 3600 > block.timestamp:
                if 3600 > !stor11[address(arg1)]:
                    revert with 0, 17
                if stor11[address(arg1)] + 3600 <= block.timestamp:
                    return 0
                if burnTax > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                    revert with 0, 17
                if 6 * burnTax / 4 <= 2500:
                    return (6 * burnTax / 4)
            else:
                if 3 * 3600 > !stor11[address(arg1)]:
                    revert with 0, 17
                if stor11[address(arg1)] + (3 * 3600) > block.timestamp:
                    if burnTax > 0x3333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if 5 * burnTax / 4 <= 2500:
                        return (5 * burnTax / 4)
                else:
                    if 3600 > !stor11[address(arg1)]:
                        revert with 0, 17
                    if stor11[address(arg1)] + 3600 <= block.timestamp:
                        return 0
                    if burnTax > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                        revert with 0, 17
                    if 6 * burnTax / 4 <= 2500:
                        return (6 * burnTax / 4)
    return 2500
}

function sub_e395b48c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor12[msg.sender]:
        revert with 0, 'Only dev wallets can call'
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor0[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0.length = 0
            idx = 0
            while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor0[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0.length = 0
            idx = 0
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1.length = 0
            idx = 0
            while (uint255(stor1.length) * 0.5) + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function verifyUniAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg2)
            staticcall arg2.factory() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                    return (address(ext_call.return_data[0]) == ext_call.return_data[12 len 20])
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg2)
            staticcall arg2.factory() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                    return (address(ext_call.return_data[0]) == ext_call.return_data[12 len 20])
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    staticcall arg2.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
        return (address(ext_call.return_data[0]) == ext_call.return_data[12 len 20])
    if mem[140 len 20] == this.address:
        return True
    return (mem[172 len 20] == this.address)
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
