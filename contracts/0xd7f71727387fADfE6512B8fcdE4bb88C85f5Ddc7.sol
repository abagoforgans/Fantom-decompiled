contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - autoCompound()
#  - sub_8dc5b6fb(?)
#  - migrate(address arg1)
#  - deposit()
#  - _fallback()
#
const decimals = 18

const sub_d2802be5(?) = 1

const withdrawFee = 15


mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of struct strategyInfo;
mapping of uint8 stor8;
array of struct stor9;
uint256 sub_5e8f09aa;
uint256 sub_66f2b1a7;
address governmentAddress;
address sub_97091078Address;
address sub_d7959960Address;
address USDTAddress;
uint256 stor16;
address stor18;
address stor19;
address stor20;
address stor21;
address stor22;
address stor23;

function totalSupply() {
    return totalSupply
}

function government() {
    return governmentAddress
}

function sub_5e8f09aa(?) {
    return sub_5e8f09aa
}

function sub_66f2b1a7(?) {
    return sub_66f2b1a7
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_97091078(?) {
    return sub_97091078Address
}

function USDT() {
    return USDTAddress
}

function sub_d7959960(?) {
    return sub_d7959960Address
}

function getStrategyInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return strategyInfo[arg1].field_0, 
           strategyInfo[arg1].field_256,
           strategyInfo[arg1].field_1792,
           strategyInfo[arg1].field_1536,
           strategyInfo[arg1].field_1280,
           strategyInfo[arg1].field_512
}

function getCurrentStrategy() {
    return stor22, stor23, stor20, stor19, stor18, stor16
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Approve is not supporting for share tokens.'
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer is not supporting for share tokens.'
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance is not supporting for share tokens.'
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'IncreaseAllowance is not supporting for share tokens.'
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'DecreaseAllowance is not supporting for share tokens.'
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferFrom is not supporting for share tokens.'
}

function sub_463b4b70(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setGovernment(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The address of government can not be a zero address'
    governmentAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f5da03e8(?) {
    if stor9.length:
        mem[128] = uint256(stor9.field_0)
        idx = 128
        s = 0
        while (32 * stor9.length) + 96 > idx:
            mem[idx + 32] = stor9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor9.length, data=mem[128 len 32 * stor9.length])
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    mem[(32 * stor9.length) + 192 len 32 * stor9.length] = mem[128 len 32 * stor9.length]
    return memory
      from (32 * stor9.length) + 128
       len (96 * stor9.length) + 64
}

function earn() {
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor18)
    if stor16 >= 999999:
        call stor18.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    else:
        call stor18.0xe2bbb158 with:
             gas gas_remaining wei
            args stor16, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Earn(ext_call.return_data[0]);
}

function sub_00d791b5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(USDTAddress)
    staticcall USDTAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'GrowthVault: USDT balance should be more then 0'
    require ext_code.size(USDTAddress)
    call USDTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_5e8f09aa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_5e8f09aa = 0
}

function sub_bd7a107b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x93f1a40b with:
            gas gas_remaining wei
           args arg3, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg1))
    call address(arg1).0x441a3e70 with:
         gas gas_remaining wei
        args arg3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_030bcab3(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newStrategy can not be a zero address'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'lpToken can not be a zero address'
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'liquidityRouter can not be a zero address'
    require ext_code.size(address(arg3))
    staticcall address(arg3).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    strategyInfo[arg5].field_0 = address(arg4)
    strategyInfo[arg5].field_256 = address(arg3)
    strategyInfo[arg5].field_512 = arg2
    strategyInfo[arg5].field_1280 = address(arg1)
    strategyInfo[arg5].field_1536 = address(ext_call.return_data[0])
    strategyInfo[arg5].field_1792 = ext_call.return_data[12 len 20]
    if not stor8[arg5]:
        stor9.length++
        stor9[stor9.length].field_0 = arg5
        stor8[arg5] = 1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7f5ed9f9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newStrategy can not be a zero address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'lpToken can not be a zero address'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'liquidityRouter can not be a zero address'
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    strategyInfo[arg4].field_0 = address(arg3)
    strategyInfo[arg4].field_256 = address(arg2)
    strategyInfo[arg4].field_512 = 999999
    strategyInfo[arg4].field_1280 = address(arg1)
    strategyInfo[arg4].field_1536 = address(ext_call.return_data[0])
    strategyInfo[arg4].field_1792 = ext_call.return_data[12 len 20]
    if not stor8[arg4]:
        stor9.length++
        stor9[stor9.length].field_0 = arg4
        stor8[arg4] = 1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() {
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
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
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
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function getTotalCapital() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 2
    mem[64] = 448
    mem[384 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 96
    t = 0
    u = 0
    v = 0
    v = 96
    v = 0
    v = 0
    while idx < stor9.length:
        mem[0] = stor9[idx].field_0
        mem[32] = 6
        _232 = mem[64]
        mem[64] = mem[64] + 256
        mem[_232] = strategyInfo[stor9[idx].field_0].field_0
        mem[_232 + 32] = strategyInfo[stor9[idx].field_0].field_256
        mem[_232 + 64] = strategyInfo[stor9[idx].field_0].field_512
        mem[_232 + 96] = strategyInfo[stor9[idx].field_0].field_768
        mem[_232 + 128] = strategyInfo[stor9[idx].field_0].field_1024
        mem[_232 + 160] = strategyInfo[stor9[idx].field_0].field_1280
        mem[_232 + 192] = strategyInfo[stor9[idx].field_0].field_1536
        mem[_232 + 224] = strategyInfo[stor9[idx].field_0].field_1792
        if 999999 > strategyInfo[stor9[idx].field_0].field_512:
            mem[mem[64] + 36] = this.address
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_1280)
            staticcall strategyInfo[stor9[idx].field_0].field_1280.0x93f1a40b with:
                    gas gas_remaining wei
                   args strategyInfo[stor9[idx].field_0].field_512, this.address
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _244 = mem[_242]
            if not mem[_242]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                u = u
                v = mem[_242]
                v = _232
                v = stor9[idx].field_0
                v = v
                continue 
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_256)
            staticcall strategyInfo[stor9[idx].field_0].field_256.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _263 = mem[_261]
            require mem[_261] == mem[_261 + 18 len 14]
            _265 = mem[_261 + 32]
            require mem[_261 + 32] == mem[_261 + 50 len 14]
            require mem[_261 + 64] == mem[_261 + 92 len 4]
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_256)
            staticcall strategyInfo[stor9[idx].field_0].field_256.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _275 = mem[_273]
            if _244 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not mem[_273]:
                revert with 0, 18
            if 10^12 * _244 / mem[_273] and Mask(112, 0, _263) > -1 / 10^12 * _244 / mem[_273]:
                revert with 0, 17
            if 10^12 * _244 / mem[_273] and Mask(112, 0, _265) > -1 / 10^12 * _244 / mem[_273]:
                revert with 0, 17
            if 1 >= mem[352]:
                revert with 0, 50
            mem[416] = stor21
            if 0 >= mem[352]:
                revert with 0, 50
            if stor21 == strategyInfo[stor9[idx].field_0].field_1536:
                mem[384] = strategyInfo[stor9[idx].field_0].field_1792
                _291 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12
                mem[mem[64] + 36] = 64
                _298 = mem[352]
                mem[mem[64] + 68] = mem[352]
                s = 0
                t = 384
                u = mem[64] + 100
                while s < _298:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(strategyInfo[stor9[idx].field_0].field_0)
                staticcall strategyInfo[stor9[idx].field_0].field_0.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _291 + (32 * _298) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _478 = mem[_472]
                require mem[_472] <= test266151307()
                require _472 + mem[_472] + 31 < _472 + return_data.size
                _484 = mem[_472 + mem[_472]]
                if mem[_472 + mem[_472]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_472 + mem[_472]]) + 1 < 0 or _472 + ceil32(return_data.size) + ceil32(32 * mem[_472 + mem[_472]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _472 + ceil32(return_data.size) + ceil32(32 * mem[_472 + mem[_472]]) + 1
                mem[_472 + ceil32(return_data.size)] = _484
                require _478 + (32 * _484) + 32 <= return_data.size
                t = _472 + ceil32(return_data.size) + 32
                s = _472 + _478 + 32
                while s < _472 + _478 + (32 * _484) + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _484:
                    revert with 0, 50
                _584 = mem[_472 + ceil32(return_data.size) + 64]
                if 10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12 > !mem[_472 + ceil32(return_data.size) + 64]:
                    revert with 0, 17
                mem[_232 + 128] = (10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12) + mem[_472 + ceil32(return_data.size) + 64]
                if v > !((10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12) + _584):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _472 + ceil32(return_data.size)
                t = 10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12
                u = 10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12
                v = _244
                v = _232
                v = stor9[idx].field_0
                v = v + (10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12) + _584
                continue 
            mem[384] = strategyInfo[stor9[idx].field_0].field_1536
            if stor21 == strategyInfo[stor9[idx].field_0].field_1792:
                _295 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12
                mem[mem[64] + 36] = 64
                _299 = mem[352]
                mem[mem[64] + 68] = mem[352]
                s = 0
                t = 384
                u = mem[64] + 100
                while s < _299:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(strategyInfo[stor9[idx].field_0].field_0)
                staticcall strategyInfo[stor9[idx].field_0].field_0.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _295 + (32 * _299) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_471]
                require mem[_471] <= test266151307()
                require _471 + mem[_471] + 31 < _471 + return_data.size
                _483 = mem[_471 + mem[_471]]
                if mem[_471 + mem[_471]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_471 + mem[_471]]) + 1 < 0 or _471 + ceil32(return_data.size) + ceil32(32 * mem[_471 + mem[_471]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _471 + ceil32(return_data.size) + ceil32(32 * mem[_471 + mem[_471]]) + 1
                mem[_471 + ceil32(return_data.size)] = _483
                require _477 + (32 * _483) + 32 <= return_data.size
                t = _471 + ceil32(return_data.size) + 32
                s = _471 + _477 + 32
                while s < _471 + _477 + (32 * _483) + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _483:
                    revert with 0, 50
                _583 = mem[_471 + ceil32(return_data.size) + 64]
                if 10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12 > !mem[_471 + ceil32(return_data.size) + 64]:
                    revert with 0, 17
                mem[_232 + 128] = (10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12) + mem[_471 + ceil32(return_data.size) + 64]
                if v > !((10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12) + _583):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _471 + ceil32(return_data.size)
                t = 10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12
                u = 10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12
                v = _244
                v = _232
                v = stor9[idx].field_0
                v = v + (10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12) + _583
                continue 
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_1536)
            staticcall strategyInfo[stor9[idx].field_0].field_1536.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _304 = mem[_300]
            mem[mem[64] + 4] = this.address
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_1536)
            staticcall strategyInfo[stor9[idx].field_0].field_1536.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _331 = mem[_324]
            if mem[_324] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not _304:
                revert with 0, 18
            mem[mem[64] + 4] = strategyInfo[stor9[idx].field_0].field_0
            require ext_code.size(stor21)
            staticcall stor21.0x70a08231 with:
                    gas gas_remaining wei
                   args strategyInfo[stor9[idx].field_0].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _363 = mem[_357]
            if 10^12 * _331 / _304 and mem[_357] > -1 / 10^12 * _331 / _304:
                revert with 0, 17
            _373 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10^12 * _331 / _304 * _363 / 10^12
            mem[mem[64] + 36] = 64
            _376 = mem[352]
            mem[mem[64] + 68] = mem[352]
            t = 0
            u = 384
            w = mem[64] + 100
            while t < _376:
                mem[w] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                w = w + 32
                continue 
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_0)
            staticcall strategyInfo[stor9[idx].field_0].field_0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _373 + (32 * _376) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _476 = mem[_470]
            require mem[_470] <= test266151307()
            require _470 + mem[_470] + 31 < _470 + return_data.size
            _482 = mem[_470 + mem[_470]]
            if mem[_470 + mem[_470]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_470 + mem[_470]]) + 1 < 0 or _470 + ceil32(return_data.size) + ceil32(32 * mem[_470 + mem[_470]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _470 + ceil32(return_data.size) + ceil32(32 * mem[_470 + mem[_470]]) + 1
            mem[_470 + ceil32(return_data.size)] = _482
            require _476 + (32 * _482) + 32 <= return_data.size
            u = _470 + ceil32(return_data.size) + 32
            t = _470 + _476 + 32
            while t < _470 + _476 + (32 * _482) + 32:
                mem[u] = mem[t]
                u = u + 32
                t = t + 32
                continue 
            if 1 >= _482:
                revert with 0, 50
            _582 = mem[_470 + ceil32(return_data.size) + 64]
            mem[_232 + 128] = mem[_470 + ceil32(return_data.size) + 64]
            if v > !_582:
                revert with 0, 17
            if 0 >= mem[352]:
                revert with 0, 50
            mem[384] = mem[_232 + 236 len 20]
            _591 = mem[_232 + 224]
            _592 = mem[_232]
            require ext_code.size(mem[_232 + 236 len 20])
            staticcall mem[_232 + 236 len 20].0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _598 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _600 = mem[_598]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_591))
            staticcall address(_591).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _608 = mem[_606]
            if mem[_606] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not _600:
                revert with 0, 18
            mem[mem[64] + 4] = address(_592)
            require ext_code.size(stor21)
            staticcall stor21.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_592)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _614 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _616 = mem[_614]
            if 10^12 * _608 / _600 and mem[_614] > -1 / 10^12 * _608 / _600:
                revert with 0, 17
            _618 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10^12 * _608 / _600 * _616 / 10^12
            mem[mem[64] + 36] = 64
            _620 = mem[352]
            mem[mem[64] + 68] = mem[352]
            t = 0
            u = 384
            w = mem[64] + 100
            while t < _620:
                mem[w] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                w = w + 32
                continue 
            require ext_code.size(address(_592))
            staticcall address(_592).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _618 + (32 * _620) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _648 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _650 = mem[_648]
            require mem[_648] <= test266151307()
            require _648 + mem[_648] + 31 < _648 + return_data.size
            _652 = mem[_648 + mem[_648]]
            if mem[_648 + mem[_648]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_648 + mem[_648]]) + 1 < 0 or _648 + ceil32(return_data.size) + ceil32(32 * mem[_648 + mem[_648]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _648 + ceil32(return_data.size) + ceil32(32 * mem[_648 + mem[_648]]) + 1
            mem[_648 + ceil32(return_data.size)] = _652
            require _650 + (32 * _652) + 32 <= return_data.size
            u = _648 + ceil32(return_data.size) + 32
            t = _648 + _650 + 32
            while t < _648 + _650 + (32 * _652) + 32:
                mem[u] = mem[t]
                u = u + 32
                t = t + 32
                continue 
            if 1 >= _652:
                revert with 0, 50
            if mem[_232 + 128] > !mem[_648 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            mem[_232 + 128] = mem[_232 + 128] + mem[_648 + ceil32(return_data.size) + 64]
            if v + _582 > !mem[_232 + 128]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = 10^12 * _244 / _275 * Mask(112, 0, _265) / 10^12
            u = 10^12 * _244 / _275 * Mask(112, 0, _263) / 10^12
            v = _244
            v = _232
            v = stor9[idx].field_0
            v = v + _582 + mem[_232 + 128]
            continue 
        require ext_code.size(strategyInfo[stor9[idx].field_0].field_1280)
        staticcall strategyInfo[stor9[idx].field_0].field_1280.info(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 320
        _243 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 192
        mem[_243] = mem[_241]
        mem[_243 + 32] = mem[_241 + 32]
        mem[_243 + 64] = mem[_241 + 64]
        require return_data.size - 96 >= 96
        _249 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_249] = mem[_241 + 96]
        mem[_249 + 32] = mem[_241 + 128]
        mem[_249 + 64] = mem[_241 + 160]
        mem[_243 + 96] = _249
        mem[_243 + 128] = mem[_241 + 192]
        require return_data.size - 224 >= 96
        _257 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_257] = mem[_241 + 224]
        mem[_257 + 32] = mem[_241 + 256]
        mem[_257 + 64] = mem[_241 + 288]
        mem[_243 + 160] = _257
        _262 = mem[_243 + 64]
        if not mem[_243 + 64]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            u = u
            v = mem[_243 + 64]
            v = _232
            v = stor9[idx].field_0
            v = v
            continue 
        require ext_code.size(strategyInfo[stor9[idx].field_0].field_256)
        staticcall strategyInfo[stor9[idx].field_0].field_256.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _269 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _270 = mem[_269]
        require mem[_269] == mem[_269 + 18 len 14]
        _274 = mem[_269 + 32]
        require mem[_269 + 32] == mem[_269 + 50 len 14]
        require mem[_269 + 64] == mem[_269 + 92 len 4]
        require ext_code.size(strategyInfo[stor9[idx].field_0].field_256)
        staticcall strategyInfo[stor9[idx].field_0].field_256.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _280 = mem[_279]
        if _262 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not mem[_279]:
            revert with 0, 18
        if 10^12 * _262 / mem[_279] and Mask(112, 0, _270) > -1 / 10^12 * _262 / mem[_279]:
            revert with 0, 17
        if 10^12 * _262 / mem[_279] and Mask(112, 0, _274) > -1 / 10^12 * _262 / mem[_279]:
            revert with 0, 17
        if 1 >= mem[352]:
            revert with 0, 50
        mem[416] = stor21
        if 0 >= mem[352]:
            revert with 0, 50
        if stor21 == strategyInfo[stor9[idx].field_0].field_1536:
            mem[384] = strategyInfo[stor9[idx].field_0].field_1792
            _318 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12
            mem[mem[64] + 36] = 64
            _328 = mem[352]
            mem[mem[64] + 68] = mem[352]
            s = 0
            t = 384
            u = mem[64] + 100
            while s < _328:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_0)
            staticcall strategyInfo[stor9[idx].field_0].field_0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _318 + (32 * _328) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _469 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _475 = mem[_469]
            require mem[_469] <= test266151307()
            require _469 + mem[_469] + 31 < _469 + return_data.size
            _481 = mem[_469 + mem[_469]]
            if mem[_469 + mem[_469]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_469 + mem[_469]]) + 1 < 0 or _469 + ceil32(return_data.size) + ceil32(32 * mem[_469 + mem[_469]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _469 + ceil32(return_data.size) + ceil32(32 * mem[_469 + mem[_469]]) + 1
            mem[_469 + ceil32(return_data.size)] = _481
            require _475 + (32 * _481) + 32 <= return_data.size
            t = _469 + ceil32(return_data.size) + 32
            s = _469 + _475 + 32
            while s < _469 + _475 + (32 * _481) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 1 >= _481:
                revert with 0, 50
            _581 = mem[_469 + ceil32(return_data.size) + 64]
            if 10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12 > !mem[_469 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            mem[_232 + 128] = (10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12) + mem[_469 + ceil32(return_data.size) + 64]
            if v > !((10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12) + _581):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _469 + ceil32(return_data.size)
            t = 10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12
            u = 10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12
            v = _262
            v = _232
            v = stor9[idx].field_0
            v = v + (10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12) + _581
            continue 
        mem[384] = strategyInfo[stor9[idx].field_0].field_1536
        if stor21 == strategyInfo[stor9[idx].field_0].field_1792:
            _323 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12
            mem[mem[64] + 36] = 64
            _330 = mem[352]
            mem[mem[64] + 68] = mem[352]
            s = 0
            t = 384
            w = mem[64] + 100
            while s < _330:
                mem[w] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                w = w + 32
                continue 
            require ext_code.size(strategyInfo[stor9[idx].field_0].field_0)
            staticcall strategyInfo[stor9[idx].field_0].field_0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _323 + (32 * _330) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _468 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _474 = mem[_468]
            require mem[_468] <= test266151307()
            require _468 + mem[_468] + 31 < _468 + return_data.size
            _480 = mem[_468 + mem[_468]]
            if mem[_468 + mem[_468]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_468 + mem[_468]]) + 1 < 0 or _468 + ceil32(return_data.size) + ceil32(32 * mem[_468 + mem[_468]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _468 + ceil32(return_data.size) + ceil32(32 * mem[_468 + mem[_468]]) + 1
            mem[_468 + ceil32(return_data.size)] = _480
            require _474 + (32 * _480) + 32 <= return_data.size
            t = _468 + ceil32(return_data.size) + 32
            s = _468 + _474 + 32
            while s < _468 + _474 + (32 * _480) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 1 >= _480:
                revert with 0, 50
            _580 = mem[_468 + ceil32(return_data.size) + 64]
            if 10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12 > !mem[_468 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            mem[_232 + 128] = (10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12) + mem[_468 + ceil32(return_data.size) + 64]
            if v > !((10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12) + _580):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _468 + ceil32(return_data.size)
            t = 10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12
            s = 10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12
            v = _262
            v = _232
            v = stor9[idx].field_0
            v = v + (10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12) + _580
            continue 
        require ext_code.size(strategyInfo[stor9[idx].field_0].field_1536)
        staticcall strategyInfo[stor9[idx].field_0].field_1536.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _338 = mem[_333]
        mem[mem[64] + 4] = this.address
        require ext_code.size(strategyInfo[stor9[idx].field_0].field_1536)
        staticcall strategyInfo[stor9[idx].field_0].field_1536.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _352 = mem[_346]
        if mem[_346] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not _338:
            revert with 0, 18
        mem[mem[64] + 4] = strategyInfo[stor9[idx].field_0].field_0
        require ext_code.size(stor21)
        staticcall stor21.0x70a08231 with:
                gas gas_remaining wei
               args strategyInfo[stor9[idx].field_0].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _375 = mem[_370]
        if 10^12 * _352 / _338 and mem[_370] > -1 / 10^12 * _352 / _338:
            revert with 0, 17
        _379 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^12 * _352 / _338 * _375 / 10^12
        mem[mem[64] + 36] = 64
        _381 = mem[352]
        mem[mem[64] + 68] = mem[352]
        t = 0
        u = 384
        w = mem[64] + 100
        while t < _381:
            mem[w] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            w = w + 32
            continue 
        require ext_code.size(strategyInfo[stor9[idx].field_0].field_0)
        staticcall strategyInfo[stor9[idx].field_0].field_0.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _379 + (32 * _381) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _467 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _473 = mem[_467]
        require mem[_467] <= test266151307()
        require _467 + mem[_467] + 31 < _467 + return_data.size
        _479 = mem[_467 + mem[_467]]
        if mem[_467 + mem[_467]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_467 + mem[_467]]) + 1 < 0 or _467 + ceil32(return_data.size) + ceil32(32 * mem[_467 + mem[_467]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _467 + ceil32(return_data.size) + ceil32(32 * mem[_467 + mem[_467]]) + 1
        mem[_467 + ceil32(return_data.size)] = _479
        require _473 + (32 * _479) + 32 <= return_data.size
        u = _467 + ceil32(return_data.size) + 32
        t = _467 + _473 + 32
        while t < _467 + _473 + (32 * _479) + 32:
            mem[u] = mem[t]
            u = u + 32
            t = t + 32
            continue 
        if 1 >= _479:
            revert with 0, 50
        _579 = mem[_467 + ceil32(return_data.size) + 64]
        mem[_232 + 128] = mem[_467 + ceil32(return_data.size) + 64]
        if v > !_579:
            revert with 0, 17
        if 0 >= mem[352]:
            revert with 0, 50
        mem[384] = mem[_232 + 236 len 20]
        _589 = mem[_232 + 224]
        _590 = mem[_232]
        require ext_code.size(mem[_232 + 236 len 20])
        staticcall mem[_232 + 236 len 20].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _597 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _599 = mem[_597]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_589))
        staticcall address(_589).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _605 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _607 = mem[_605]
        if mem[_605] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not _599:
            revert with 0, 18
        mem[mem[64] + 4] = address(_590)
        require ext_code.size(stor21)
        staticcall stor21.0x70a08231 with:
                gas gas_remaining wei
               args address(_590)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _613 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _615 = mem[_613]
        if 10^12 * _607 / _599 and mem[_613] > -1 / 10^12 * _607 / _599:
            revert with 0, 17
        _617 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^12 * _607 / _599 * _615 / 10^12
        mem[mem[64] + 36] = 64
        _619 = mem[352]
        mem[mem[64] + 68] = mem[352]
        t = 0
        u = 384
        w = mem[64] + 100
        while t < _619:
            mem[w] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            w = w + 32
            continue 
        require ext_code.size(address(_590))
        staticcall address(_590).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _617 + (32 * _619) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _647 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _649 = mem[_647]
        require mem[_647] <= test266151307()
        require _647 + mem[_647] + 31 < _647 + return_data.size
        _651 = mem[_647 + mem[_647]]
        if mem[_647 + mem[_647]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_647 + mem[_647]]) + 1 < 0 or _647 + ceil32(return_data.size) + ceil32(32 * mem[_647 + mem[_647]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _647 + ceil32(return_data.size) + ceil32(32 * mem[_647 + mem[_647]]) + 1
        mem[_647 + ceil32(return_data.size)] = _651
        require _649 + (32 * _651) + 32 <= return_data.size
        u = _647 + ceil32(return_data.size) + 32
        t = _647 + _649 + 32
        while t < _647 + _649 + (32 * _651) + 32:
            mem[u] = mem[t]
            u = u + 32
            t = t + 32
            continue 
        if 1 >= _651:
            revert with 0, 50
        if mem[_232 + 128] > !mem[_647 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        mem[_232 + 128] = mem[_232 + 128] + mem[_647 + ceil32(return_data.size) + 64]
        if v + _579 > !mem[_232 + 128]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s
        t = 10^12 * _262 / _280 * Mask(112, 0, _274) / 10^12
        u = 10^12 * _262 / _280 * Mask(112, 0, _270) / 10^12
        v = _262
        v = _232
        v = stor9[idx].field_0
        v = v + _579 + mem[_232 + 128]
        continue 
    return v
}



}
