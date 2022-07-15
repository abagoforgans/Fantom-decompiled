contract main {




// =====================  Runtime code  =====================


#
#  - calculateUserGlobalData(address arg1)
#
const getHealthFactorLiquidationThreshold = 10^18

const DATA_PROVIDER_REVISION = 1

const HEALTH_FACTOR_LIQUIDATION_THRESHOLD = 10^18


uint256 stor0;
uint8 stor1;
address coreAddress;
uint256 stor52;
address addressesProvider;

function addressesProvider() payable {
    return addressesProvider
}

function core() payable {
    return address(coreAddress)
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1:
        if ext_code.size(this.address):
            if 1 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not stor1:
            stor1 = 1
            stor0 = 1
    addressesProvider = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor52) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor52))
    if not stor1:
        stor1 = 0
}

function sub_00f529c9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x5fc526ff with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfca513a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 10^ext_call.return_data[0]
}

function getReserveConfigurationData(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x5fc526ff with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x9e674848 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x5cf2e656 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xc76a6c9c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x6ae14416 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[32], 
           ext_call.return_data[32 len 96],
           bool(ext_call.return_data[96]),
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0])
}

function calculateCollateralNeededInETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xa2353fdc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfca513a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg5 + arg4 < arg4:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / 10^ext_call.return_data[0]) + arg5 + arg4:
            if not arg6:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg6)
        if (100 * 0 / 10^ext_call.return_data[0]) + (100 * arg5) + (100 * arg4) / (0 / 10^ext_call.return_data[0]) + arg5 + arg4 != 100:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not arg6:
            revert with 0, 'SafeMath: division by zero'
        return ((100 * 0 / 10^ext_call.return_data[0]) + (100 * arg5) + (100 * arg4) / arg6)
    if (arg3 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / ext_call.return_data[0] != arg3 + arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if arg5 + arg4 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    if (arg3 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / 10^ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not ((arg3 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + arg5 + arg4:
        if not arg6:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg6)
    if (100 * (arg3 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + (100 * arg5) + (100 * arg4) / ((arg3 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + arg5 + arg4 != 100:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg6:
        revert with 0, 'SafeMath: division by zero'
    return ((100 * (arg3 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) / 10^ext_call.return_data[0]) + (100 * arg5) + (100 * arg4) / arg6)
}

function getReserveData(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xc33cfd90 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xe2403019 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x7f90fec5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x98bd4737 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xc540148e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x906c0a41 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x88079d88 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x46bc0f28 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xbfacad84 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xbd7fd79a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xb701d093 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x3af361d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x4f144609 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           address(ext_call.return_data[0]),
           ext_call.return_data[0] % 1099511627776
}

function getUserReserveData(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x3af361d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x1ca19f19 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x9fb8afcd with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] == 1:
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0x6fffab0c with:
                gas gas_remaining wei
               args address(arg1), arg2
    else:
        require ext_call.return_data[0] <= 2
        if ext_call.return_data[0] != 2:
            require ext_call.return_data[0] <= 2
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0xc540148e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0xfeab31ac with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0xf6ea8d76 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0x66d103f3 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0x9e3c4f3b with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0x906c0a41 with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xc540148e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xfeab31ac with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0xf6ea8d76 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x66d103f3 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x9e3c4f3b with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[32 len 64],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0])
}

function getUserAccountData(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfca513a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[448]
    require mem[448] <= 4294967296
    require mem[448] + 32 <= return_data.size
    require mem[mem[448] + 448] <= 4294967296 and mem[448] + (32 * mem[mem[448] + 448]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 448] = mem[mem[448] + 448]
    _12 = mem[_9 + 448]
    mem[ceil32(return_data.size) + 480 len floor32(mem[_9 + 448])] = mem[_9 + 480 len floor32(mem[_9 + 448])]
    mem[64] = (32 * _12) + ceil32(return_data.size) + 480
    _4347 = mem[ceil32(return_data.size) + 448]
    idx = 0
    while idx < _4347:
        require idx < mem[ceil32(return_data.size) + 448]
        mem[416] = mem[(32 * idx) + ceil32(return_data.size) + 492 len 20]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 492 len 20]
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0xe10076ad with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[384] = bool(ext_call.return_data[96])
        mem[320] = ext_call.return_data[64]
        mem[192] = ext_call.return_data[32]
        mem[160] = ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0x5fc526ff with:
                    gas gas_remaining wei
                   args address(mem[416])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            mem[352] = bool(ext_call.return_data[96])
            mem[288] = ext_call.return_data[64]
            mem[256] = ext_call.return_data[32]
            mem[224] = ext_call.return_data[0]
            mem[128] = 10^ext_call.return_data[0]
            _4370 = mem[416]
            mem[mem[64] + 4] = mem[428 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_4370)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _4409 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4409] = 26
                    mem[_4409 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4419 + 68] = mem[idx + _4409 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4419 + 68] = mem[_4419 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4419 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4532] = 26
                        mem[_4532 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _4563 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4563 + 68] = mem[idx + _4532 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4563 + 68] = mem[_4563 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4563 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4562 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4562] = 26
                    mem[_4562 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _4593 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4593 + 68] = mem[idx + _4562 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4593 + 68] = mem[_4593 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4593 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4418] = 26
                mem[_4418 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4434 + 68] = mem[idx + _4418 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4434 + 68] = mem[_4434 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4434 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _4561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4561] = 26
                    mem[_4561 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _4590 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4590 + 68] = mem[idx + _4561 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4590 + 68] = mem[_4590 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4590 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4589 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4589] = 26
                mem[_4589 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _4627 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4627 + 68] = mem[idx + _4589 + 32]
                    idx = idx + 32
                    continue 
                mem[_4627 + 68] = mem[_4627 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4627 + -mem[64] + 100
            if not ext_call.return_data[0]:
                _4406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4406] = 26
                mem[_4406 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4414 + 68] = mem[idx + _4406 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4414 + 68] = mem[_4414 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4414 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[96]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _4578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4578] = 26
                        mem[_4578 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4611 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4611 + 68] = mem[idx + _4578 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4611 + 68] = mem[_4611 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4611 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4925 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4925] = 26
                            mem[_4925 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _4958 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4958 + 68] = mem[idx + _4925 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4958 + 68] = mem[_4958 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4958 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4957] = 26
                        mem[_4957 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5016 + 68] = mem[idx + _4957 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5016 + 68] = mem[_5016 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5016 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4610] = 26
                    mem[_4610 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4662 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4662 + 68] = mem[idx + _4610 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4662 + 68] = mem[_4662 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4662 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4956] = 26
                        mem[_4956 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5013 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5013 + 68] = mem[idx + _4956 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5013 + 68] = mem[_5013 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5013 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5012 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5012] = 26
                    mem[_5012 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5095 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5095 + 68] = mem[idx + _5012 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5095 + 68] = mem[_5095 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5095 + -mem[64] + 100
                if not ext_call.return_data[96]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _4599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4599] = 26
                        mem[_4599 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4635 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4635 + 68] = mem[idx + _4599 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4635 + 68] = mem[_4635 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4635 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4943 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4943] = 26
                            mem[_4943 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _4984 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4984 + 68] = mem[idx + _4943 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4984 + 68] = mem[_4984 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4984 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4983 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4983] = 26
                        mem[_4983 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5052 + 68] = mem[idx + _4983 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5052 + 68] = mem[_5052 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5052 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4634] = 26
                    mem[_4634 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4689 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4689 + 68] = mem[idx + _4634 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4689 + 68] = mem[_4689 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4689 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4982 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4982] = 26
                        mem[_4982 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5049 + 68] = mem[idx + _4982 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5049 + 68] = mem[_5049 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5049 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5048 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5048] = 26
                    mem[_5048 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5141 + 68] = mem[idx + _5048 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5141 + 68] = mem[_5141 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5141 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / 10^ext_call.return_data[0]:
                    if not 0 / 10^ext_call.return_data[0]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5147] = 26
                            mem[_5147 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5244 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5244 + 68] = mem[idx + _5147 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5244 + 68] = mem[_5244 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5244 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5750 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5750] = 26
                                mem[_5750 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5808 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5808 + 68] = mem[idx + _5750 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5808 + 68] = mem[_5808 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5808 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5807 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5807] = 26
                            mem[_5807 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5878 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5878 + 68] = mem[idx + _5807 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5878 + 68] = mem[_5878 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5878 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5243] = 26
                        mem[_5243 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5346 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5346 + 68] = mem[idx + _5243 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5346 + 68] = mem[_5346 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5346 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5806 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5806] = 26
                            mem[_5806 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5875 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5875 + 68] = mem[idx + _5806 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5875 + 68] = mem[_5875 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5875 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5874 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5874] = 26
                        mem[_5874 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5973 + 68] = mem[idx + _5874 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5973 + 68] = mem[_5973 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5973 + -mem[64] + 100
                    if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5242 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5242] = 26
                        mem[_5242 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5343 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5343 + 68] = mem[idx + _5242 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5343 + 68] = mem[_5343 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5343 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5805 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5805] = 26
                            mem[_5805 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5871 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5871 + 68] = mem[idx + _5805 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5871 + 68] = mem[_5871 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5871 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5870 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5870] = 26
                        mem[_5870 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5969 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5969 + 68] = mem[idx + _5870 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5969 + 68] = mem[_5969 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5969 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5342] = 26
                    mem[_5342 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5444 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5444 + 68] = mem[idx + _5342 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5444 + 68] = mem[_5444 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5444 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5869] = 26
                        mem[_5869 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5966 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5966 + 68] = mem[idx + _5869 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5966 + 68] = mem[_5966 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5966 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5965] = 26
                    mem[_5965 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6088 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6088 + 68] = mem[idx + _5965 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6088 + 68] = mem[_6088 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6088 + -mem[64] + 100
                if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5241 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5241] = 26
                        mem[_5241 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5339 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5339 + 68] = mem[idx + _5241 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5339 + 68] = mem[_5339 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5339 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5804 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5804] = 26
                            mem[_5804 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5866 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5866 + 68] = mem[idx + _5804 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5866 + 68] = mem[_5866 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5866 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5865] = 26
                        mem[_5865 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5961 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5961 + 68] = mem[idx + _5865 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5961 + 68] = mem[_5961 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5961 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5338 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5338] = 26
                    mem[_5338 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5440 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5440 + 68] = mem[idx + _5338 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5440 + 68] = mem[_5440 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5440 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5864] = 26
                        mem[_5864 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5958 + 68] = mem[idx + _5864 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5958 + 68] = mem[_5958 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5958 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5957 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5957] = 26
                    mem[_5957 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6082 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6082 + 68] = mem[idx + _5957 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6082 + 68] = mem[_6082 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6082 + -mem[64] + 100
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5337 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5337] = 26
                    mem[_5337 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5437 + 68] = mem[idx + _5337 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5437 + 68] = mem[_5437 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5437 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5863 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5863] = 26
                        mem[_5863 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5954 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5954 + 68] = mem[idx + _5863 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5954 + 68] = mem[_5954 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5954 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5953] = 26
                    mem[_5953 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6078 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6078 + 68] = mem[idx + _5953 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6078 + 68] = mem[_6078 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6078 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5436 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5436] = 26
                mem[_5436 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5523 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5523 + 68] = mem[idx + _5436 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5523 + 68] = mem[_5523 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5523 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5952] = 26
                    mem[_5952 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6075 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6075 + 68] = mem[idx + _5952 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6075 + 68] = mem[_6075 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6075 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6074 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6074] = 26
                mem[_6074 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6208 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6208 + 68] = mem[idx + _6074 + 32]
                    idx = idx + 32
                    continue 
                mem[_6208 + 68] = mem[_6208 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6208 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _4413 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4413] = 26
            mem[_4413 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _4426 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4426 + 68] = mem[idx + _4413 + 32]
                    idx = idx + 32
                    continue 
                mem[_4426 + 68] = mem[_4426 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4426 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _4607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4607] = 26
                    mem[_4607 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4657 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4657 + 68] = mem[idx + _4607 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4657 + 68] = mem[_4657 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4657 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4953] = 26
                        mem[_4953 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5004 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5004 + 68] = mem[idx + _4953 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5004 + 68] = mem[_5004 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5004 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5003 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5003] = 26
                    mem[_5003 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5085 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5085 + 68] = mem[idx + _5003 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5085 + 68] = mem[_5085 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5085 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4656] = 26
                mem[_4656 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4711 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4711 + 68] = mem[idx + _4656 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4711 + 68] = mem[_4711 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4711 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5002 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5002] = 26
                    mem[_5002 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5082 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5082 + 68] = mem[idx + _5002 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5082 + 68] = mem[_5082 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5082 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5081] = 26
                mem[_5081 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5175 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5175 + 68] = mem[idx + _5081 + 32]
                    idx = idx + 32
                    continue 
                mem[_5175 + 68] = mem[_5175 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5175 + -mem[64] + 100
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _4633 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4633] = 26
                    mem[_4633 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4684 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4684 + 68] = mem[idx + _4633 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4684 + 68] = mem[_4684 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4684 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4978] = 26
                        mem[_4978 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5041 + 68] = mem[idx + _4978 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5041 + 68] = mem[_5041 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5041 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5040 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5040] = 26
                    mem[_5040 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5132 + 68] = mem[idx + _5040 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5132 + 68] = mem[_5132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5132 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4683] = 26
                mem[_4683 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4746 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4746 + 68] = mem[idx + _4683 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4746 + 68] = mem[_4746 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4746 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5039] = 26
                    mem[_5039 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5129 + 68] = mem[idx + _5039 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5129 + 68] = mem[_5129 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5129 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5128] = 26
                mem[_5128 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5227 + 68] = mem[idx + _5128 + 32]
                    idx = idx + 32
                    continue 
                mem[_5227 + 68] = mem[_5227 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5227 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5233 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5233] = 26
                        mem[_5233 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5329 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5329 + 68] = mem[idx + _5233 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5329 + 68] = mem[_5329 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5329 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5803 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5803] = 26
                            mem[_5803 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5860 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5860 + 68] = mem[idx + _5803 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5860 + 68] = mem[_5860 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5860 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5859] = 26
                        mem[_5859 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5948 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5948 + 68] = mem[idx + _5859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5948 + 68] = mem[_5948 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5948 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5328 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5328] = 26
                    mem[_5328 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5430 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5430 + 68] = mem[idx + _5328 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5430 + 68] = mem[_5430 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5430 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5858] = 26
                        mem[_5858 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5945 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5945 + 68] = mem[idx + _5858 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5945 + 68] = mem[_5945 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5945 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5944] = 26
                    mem[_5944 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6068 + 68] = mem[idx + _5944 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6068 + 68] = mem[_6068 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6068 + -mem[64] + 100
                if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5327] = 26
                    mem[_5327 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5427 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5427 + 68] = mem[idx + _5327 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5427 + 68] = mem[_5427 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5427 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5857] = 26
                        mem[_5857 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5941 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5941 + 68] = mem[idx + _5857 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5941 + 68] = mem[_5941 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5941 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5940] = 26
                    mem[_5940 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6064 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6064 + 68] = mem[idx + _5940 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6064 + 68] = mem[_6064 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6064 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5426] = 26
                mem[_5426 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5517 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5517 + 68] = mem[idx + _5426 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5517 + 68] = mem[_5517 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5517 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5939] = 26
                    mem[_5939 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6061 + 68] = mem[idx + _5939 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6061 + 68] = mem[_6061 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6061 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6060 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6060] = 26
                mem[_6060 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6197 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6197 + 68] = mem[idx + _6060 + 32]
                    idx = idx + 32
                    continue 
                mem[_6197 + 68] = mem[_6197 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6197 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5326] = 26
                    mem[_5326 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5423 + 68] = mem[idx + _5326 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5423 + 68] = mem[_5423 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5423 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5856 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5856] = 26
                        mem[_5856 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5936 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5936 + 68] = mem[idx + _5856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5936 + 68] = mem[_5936 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5936 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5935] = 26
                    mem[_5935 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6056 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6056 + 68] = mem[idx + _5935 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6056 + 68] = mem[_6056 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6056 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5422] = 26
                mem[_5422 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5513 + 68] = mem[idx + _5422 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5513 + 68] = mem[_5513 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5513 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5934] = 26
                    mem[_5934 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6053 + 68] = mem[idx + _5934 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6053 + 68] = mem[_6053 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6053 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6052 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6052] = 26
                mem[_6052 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6191 + 68] = mem[idx + _6052 + 32]
                    idx = idx + 32
                    continue 
                mem[_6191 + 68] = mem[_6191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6191 + -mem[64] + 100
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _5421 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5421] = 26
                mem[_5421 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5510 + 68] = mem[idx + _5421 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5510 + 68] = mem[_5510 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5510 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5933] = 26
                    mem[_5933 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6049 + 68] = mem[idx + _5933 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6049 + 68] = mem[_6049 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6049 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6048 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6048] = 26
                mem[_6048 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6187 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6187 + 68] = mem[idx + _6048 + 32]
                    idx = idx + 32
                    continue 
                mem[_6187 + 68] = mem[_6187 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6187 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _5509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5509] = 26
            mem[_5509 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _5583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5583 + 68] = mem[idx + _5509 + 32]
                    idx = idx + 32
                    continue 
                mem[_5583 + 68] = mem[_5583 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5583 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _6047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6047] = 26
                mem[_6047 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6184 + 68] = mem[idx + _6047 + 32]
                    idx = idx + 32
                    continue 
                mem[_6184 + 68] = mem[_6184 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6184 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6183] = 26
            mem[_6183 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6315 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6315 + 68] = mem[idx + _6183 + 32]
                idx = idx + 32
                continue 
            mem[_6315 + 68] = mem[_6315 + 74 len 26]
            revert with memory
              from mem[64]
               len _6315 + -mem[64] + 100
        if not ext_call.return_data[32]:
            idx = idx + 1
            continue 
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0x5fc526ff with:
                gas gas_remaining wei
               args address(mem[416])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[352] = bool(ext_call.return_data[96])
        mem[288] = ext_call.return_data[64]
        mem[256] = ext_call.return_data[32]
        mem[224] = ext_call.return_data[0]
        mem[128] = 10^ext_call.return_data[0]
        _4378 = mem[416]
        mem[mem[64] + 4] = mem[428 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(_4378)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _4417 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4417] = 26
                mem[_4417 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4431 + 68] = mem[idx + _4417 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4431 + 68] = mem[_4431 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4431 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _4556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4556] = 26
                    mem[_4556 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _4583 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4583 + 68] = mem[idx + _4556 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4583 + 68] = mem[_4583 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4583 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4582 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4582] = 26
                mem[_4582 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _4620 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4620 + 68] = mem[idx + _4582 + 32]
                    idx = idx + 32
                    continue 
                mem[_4620 + 68] = mem[_4620 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4620 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _4430 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4430] = 26
            mem[_4430 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _4448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4448 + 68] = mem[idx + _4430 + 32]
                    idx = idx + 32
                    continue 
                mem[_4448 + 68] = mem[_4448 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4448 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _4581 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4581] = 26
                mem[_4581 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _4617 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4617 + 68] = mem[idx + _4581 + 32]
                    idx = idx + 32
                    continue 
                mem[_4617 + 68] = mem[_4617 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4617 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _4616 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4616] = 26
            mem[_4616 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _4666 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _4666 + 68] = mem[idx + _4616 + 32]
                idx = idx + 32
                continue 
            mem[_4666 + 68] = mem[_4666 + 74 len 26]
            revert with memory
              from mem[64]
               len _4666 + -mem[64] + 100
        if not ext_call.return_data[0]:
            _4412 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4412] = 26
            mem[_4412 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _4423 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4423 + 68] = mem[idx + _4412 + 32]
                    idx = idx + 32
                    continue 
                mem[_4423 + 68] = mem[_4423 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4423 + -mem[64] + 100
            if 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _4601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4601] = 26
                    mem[_4601 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4644 + 68] = mem[idx + _4601 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4644 + 68] = mem[_4644 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4644 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4950] = 26
                        mem[_4950 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _4994 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4994 + 68] = mem[idx + _4950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4994 + 68] = mem[_4994 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4994 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4993] = 26
                    mem[_4993 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5071 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5071 + 68] = mem[idx + _4993 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5071 + 68] = mem[_5071 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5071 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4643] = 26
                mem[_4643 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4703 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4703 + 68] = mem[idx + _4643 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4703 + 68] = mem[_4703 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4703 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _4992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4992] = 26
                    mem[_4992 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5068 + 68] = mem[idx + _4992 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5068 + 68] = mem[_5068 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5068 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5067] = 26
                mem[_5067 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5162 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5162 + 68] = mem[idx + _5067 + 32]
                    idx = idx + 32
                    continue 
                mem[_5162 + 68] = mem[_5162 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5162 + -mem[64] + 100
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _4626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4626] = 26
                    mem[_4626 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4674 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4674 + 68] = mem[idx + _4626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4674 + 68] = mem[_4674 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4674 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4972] = 26
                        mem[_4972 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5034 + 68] = mem[idx + _4972 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5034 + 68] = mem[_5034 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5034 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5033] = 26
                    mem[_5033 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5121 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5121 + 68] = mem[idx + _5033 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5121 + 68] = mem[_5121 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5121 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4673 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4673] = 26
                mem[_4673 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4733 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4733 + 68] = mem[idx + _4673 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4733 + 68] = mem[_4733 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4733 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5032 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5032] = 26
                    mem[_5032 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5118 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5118 + 68] = mem[idx + _5032 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5118 + 68] = mem[_5118 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5118 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5117] = 26
                mem[_5117 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5216 + 68] = mem[idx + _5117 + 32]
                    idx = idx + 32
                    continue 
                mem[_5216 + 68] = mem[_5216 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5216 + -mem[64] + 100
            if 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / 10^ext_call.return_data[0]:
                if not 0 / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5222] = 26
                        mem[_5222 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5316 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5316 + 68] = mem[idx + _5222 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5316 + 68] = mem[_5316 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5316 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5802 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5802] = 26
                            mem[_5802 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5853 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5853 + 68] = mem[idx + _5802 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5853 + 68] = mem[_5853 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5853 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5852 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5852] = 26
                        mem[_5852 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5929 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5929 + 68] = mem[idx + _5852 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5929 + 68] = mem[_5929 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5929 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5315] = 26
                    mem[_5315 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5412 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5412 + 68] = mem[idx + _5315 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5412 + 68] = mem[_5412 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5412 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5851] = 26
                        mem[_5851 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5926 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5926 + 68] = mem[idx + _5851 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5926 + 68] = mem[_5926 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5926 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5925 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5925] = 26
                    mem[_5925 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6041 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6041 + 68] = mem[idx + _5925 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6041 + 68] = mem[_6041 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6041 + -mem[64] + 100
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5314] = 26
                    mem[_5314 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5409 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5409 + 68] = mem[idx + _5314 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5409 + 68] = mem[_5409 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5409 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5850] = 26
                        mem[_5850 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5922 + 68] = mem[idx + _5850 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5922 + 68] = mem[_5922 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5922 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5921 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5921] = 26
                    mem[_5921 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6037 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6037 + 68] = mem[idx + _5921 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6037 + 68] = mem[_6037 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6037 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5408] = 26
                mem[_5408 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5501 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5501 + 68] = mem[idx + _5408 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5501 + 68] = mem[_5501 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5501 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5920] = 26
                    mem[_5920 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6034 + 68] = mem[idx + _5920 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6034 + 68] = mem[_6034 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6034 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6033] = 26
                mem[_6033 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6172 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6172 + 68] = mem[idx + _6033 + 32]
                    idx = idx + 32
                    continue 
                mem[_6172 + 68] = mem[_6172 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6172 + -mem[64] + 100
            if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / 10^ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5313] = 26
                    mem[_5313 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5405 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5405 + 68] = mem[idx + _5313 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5405 + 68] = mem[_5405 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5405 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5849] = 26
                        mem[_5849 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5917 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5917 + 68] = mem[idx + _5849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5917 + 68] = mem[_5917 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5917 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5916 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5916] = 26
                    mem[_5916 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6029 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6029 + 68] = mem[idx + _5916 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6029 + 68] = mem[_6029 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6029 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5404] = 26
                mem[_5404 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5497 + 68] = mem[idx + _5404 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5497 + 68] = mem[_5497 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5497 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5915 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5915] = 26
                    mem[_5915 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6026 + 68] = mem[idx + _5915 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6026 + 68] = mem[_6026 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6026 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6025] = 26
                mem[_6025 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6166 + 68] = mem[idx + _6025 + 32]
                    idx = idx + 32
                    continue 
                mem[_6166 + 68] = mem[_6166 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6166 + -mem[64] + 100
            if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _5403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5403] = 26
                mem[_5403 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5494 + 68] = mem[idx + _5403 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5494 + 68] = mem[_5494 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5494 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5914 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5914] = 26
                    mem[_5914 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6022 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6022 + 68] = mem[idx + _5914 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6022 + 68] = mem[_6022 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6022 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6021] = 26
                mem[_6021 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6162 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6162 + 68] = mem[idx + _6021 + 32]
                    idx = idx + 32
                    continue 
                mem[_6162 + 68] = mem[_6162 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6162 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _5493 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5493] = 26
            mem[_5493 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _5572 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5572 + 68] = mem[idx + _5493 + 32]
                    idx = idx + 32
                    continue 
                mem[_5572 + 68] = mem[_5572 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5572 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _6020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6020] = 26
                mem[_6020 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6159 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6159 + 68] = mem[idx + _6020 + 32]
                    idx = idx + 32
                    continue 
                mem[_6159 + 68] = mem[_6159 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6159 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6158] = 26
            mem[_6158 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6294 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6294 + 68] = mem[idx + _6158 + 32]
                idx = idx + 32
                continue 
            mem[_6294 + 68] = mem[_6294 + 74 len 26]
            revert with memory
              from mem[64]
               len _6294 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        _4422 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4422] = 26
        mem[_4422 + 32] = 'SafeMath: division by zero' << 48
        if not 10^ext_call.return_data[0]:
            _4440 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _4440 + 68] = mem[idx + _4422 + 32]
                idx = idx + 32
                continue 
            mem[_4440 + 68] = mem[_4440 + 74 len 26]
            revert with memory
              from mem[64]
               len _4440 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[96]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _4640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4640] = 26
                mem[_4640 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4698 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4698 + 68] = mem[idx + _4640 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4698 + 68] = mem[_4698 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4698 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _4989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4989] = 26
                    mem[_4989 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5059 + 68] = mem[idx + _4989 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5059 + 68] = mem[_5059 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5059 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5058] = 26
                mem[_5058 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5152 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5152 + 68] = mem[idx + _5058 + 32]
                    idx = idx + 32
                    continue 
                mem[_5152 + 68] = mem[_5152 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5152 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _4697 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4697] = 26
            mem[_4697 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _4756 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4756 + 68] = mem[idx + _4697 + 32]
                    idx = idx + 32
                    continue 
                mem[_4756 + 68] = mem[_4756 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4756 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _5057 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5057] = 26
                mem[_5057 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5149 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5149 + 68] = mem[idx + _5057 + 32]
                    idx = idx + 32
                    continue 
                mem[_5149 + 68] = mem[_5149 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5149 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _5148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5148] = 26
            mem[_5148 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _5247 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _5247 + 68] = mem[idx + _5148 + 32]
                idx = idx + 32
                continue 
            mem[_5247 + 68] = mem[_5247 + 74 len 26]
            revert with memory
              from mem[64]
               len _5247 + -mem[64] + 100
        if not ext_call.return_data[96]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _4672 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4672] = 26
                mem[_4672 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4728 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4728 + 68] = mem[idx + _4672 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4728 + 68] = mem[_4728 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4728 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5028] = 26
                    mem[_5028 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5110 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5110 + 68] = mem[idx + _5028 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5110 + 68] = mem[_5110 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5110 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5109] = 26
                mem[_5109 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5207 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5207 + 68] = mem[idx + _5109 + 32]
                    idx = idx + 32
                    continue 
                mem[_5207 + 68] = mem[_5207 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5207 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _4727 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4727] = 26
            mem[_4727 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _4789 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4789 + 68] = mem[idx + _4727 + 32]
                    idx = idx + 32
                    continue 
                mem[_4789 + 68] = mem[_4789 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4789 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _5108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5108] = 26
                mem[_5108 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _5204 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5204 + 68] = mem[idx + _5108 + 32]
                    idx = idx + 32
                    continue 
                mem[_5204 + 68] = mem[_5204 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5204 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _5203 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5203] = 26
            mem[_5203 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _5299 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _5299 + 68] = mem[idx + _5203 + 32]
                idx = idx + 32
                continue 
            mem[_5299 + 68] = mem[_5299 + 74 len 26]
            revert with memory
              from mem[64]
               len _5299 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5305 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5305] = 26
                    mem[_5305 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5395 + 68] = mem[idx + _5305 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5395 + 68] = mem[_5395 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5395 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5848] = 26
                        mem[_5848 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5911 + 68] = mem[idx + _5848 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5911 + 68] = mem[_5911 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5911 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5910] = 26
                    mem[_5910 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6016 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6016 + 68] = mem[idx + _5910 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6016 + 68] = mem[_6016 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6016 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5394] = 26
                mem[_5394 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5487 + 68] = mem[idx + _5394 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5487 + 68] = mem[_5487 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5487 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5909 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5909] = 26
                    mem[_5909 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6013 + 68] = mem[idx + _5909 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6013 + 68] = mem[_6013 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6013 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6012] = 26
                mem[_6012 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6152 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6152 + 68] = mem[idx + _6012 + 32]
                    idx = idx + 32
                    continue 
                mem[_6152 + 68] = mem[_6152 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6152 + -mem[64] + 100
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _5393 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5393] = 26
                mem[_5393 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5484 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5484 + 68] = mem[idx + _5393 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5484 + 68] = mem[_5484 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5484 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5908 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5908] = 26
                    mem[_5908 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6009 + 68] = mem[idx + _5908 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6009 + 68] = mem[_6009 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6009 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6008] = 26
                mem[_6008 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6148 + 68] = mem[idx + _6008 + 32]
                    idx = idx + 32
                    continue 
                mem[_6148 + 68] = mem[_6148 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6148 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _5483 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5483] = 26
            mem[_5483 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _5566 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5566 + 68] = mem[idx + _5483 + 32]
                    idx = idx + 32
                    continue 
                mem[_5566 + 68] = mem[_5566 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5566 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _6007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6007] = 26
                mem[_6007 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6145 + 68] = mem[idx + _6007 + 32]
                    idx = idx + 32
                    continue 
                mem[_6145 + 68] = mem[_6145 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6145 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6144] = 26
            mem[_6144 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6283 + 68] = mem[idx + _6144 + 32]
                idx = idx + 32
                continue 
            mem[_6283 + 68] = mem[_6283 + 74 len 26]
            revert with memory
              from mem[64]
               len _6283 + -mem[64] + 100
        if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[32]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _5392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5392] = 26
                mem[_5392 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5480 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5480 + 68] = mem[idx + _5392 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5480 + 68] = mem[_5480 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5480 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _5907 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5907] = 26
                    mem[_5907 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6004 + 68] = mem[idx + _5907 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6004 + 68] = mem[_6004 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6004 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6003] = 26
                mem[_6003 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6140 + 68] = mem[idx + _6003 + 32]
                    idx = idx + 32
                    continue 
                mem[_6140 + 68] = mem[_6140 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6140 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _5479 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5479] = 26
            mem[_5479 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _5562 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5562 + 68] = mem[idx + _5479 + 32]
                    idx = idx + 32
                    continue 
                mem[_5562 + 68] = mem[_5562 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5562 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _6002 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6002] = 26
                mem[_6002 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6137 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6137 + 68] = mem[idx + _6002 + 32]
                    idx = idx + 32
                    continue 
                mem[_6137 + 68] = mem[_6137 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6137 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6136 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6136] = 26
            mem[_6136 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6277 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6277 + 68] = mem[idx + _6136 + 32]
                idx = idx + 32
                continue 
            mem[_6277 + 68] = mem[_6277 + 74 len 26]
            revert with memory
              from mem[64]
               len _6277 + -mem[64] + 100
        if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[32]:
            idx = idx + 1
            continue 
        if not ext_call.return_data[0]:
            _5478 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5478] = 26
            mem[_5478 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _5559 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5559 + 68] = mem[idx + _5478 + 32]
                    idx = idx + 32
                    continue 
                mem[_5559 + 68] = mem[_5559 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5559 + -mem[64] + 100
            if 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _6001 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6001] = 26
                mem[_6001 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6133 + 68] = mem[idx + _6001 + 32]
                    idx = idx + 32
                    continue 
                mem[_6133 + 68] = mem[_6133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6133 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6132] = 26
            mem[_6132 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6273 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6273 + 68] = mem[idx + _6132 + 32]
                idx = idx + 32
                continue 
            mem[_6273 + 68] = mem[_6273 + 74 len 26]
            revert with memory
              from mem[64]
               len _6273 + -mem[64] + 100
        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        _5558 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5558] = 26
        mem[_5558 + 32] = 'SafeMath: division by zero' << 48
        if not 10^ext_call.return_data[0]:
            _5627 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _5627 + 68] = mem[idx + _5558 + 32]
                idx = idx + 32
                continue 
            mem[_5627 + 68] = mem[_5627 + 74 len 26]
            revert with memory
              from mem[64]
               len _5627 + -mem[64] + 100
        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[64]:
            _6131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6131] = 26
            mem[_6131 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6270 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6270 + 68] = mem[idx + _6131 + 32]
                idx = idx + 32
                continue 
            mem[_6270 + 68] = mem[_6270 + 74 len 26]
            revert with memory
              from mem[64]
               len _6270 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        _6269 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6269] = 26
        mem[_6269 + 32] = 'SafeMath: division by zero' << 48
        if 10^ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _6383 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _6383 + 68] = mem[idx + _6269 + 32]
            idx = idx + 32
            continue 
        mem[_6383 + 68] = mem[_6383 + 74 len 26]
        revert with memory
          from mem[64]
           len _6383 + -mem[64] + 100
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfbeefc3c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calculateLoanOriginationFee(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    return 0, 0, 0, 0, -ext_call.return_data[0], 0, 0, -1
}

function sub_b97a4855(?) payable {
    require calldata.size - 4 >= 128
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x5fc526ff with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[416] = bool(ext_call.return_data[96])
    mem[256] = ext_call.return_data[64]
    mem[96] = ext_call.return_data[0]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfca513a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[800 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _16 = mem[800]
    require mem[800] <= 4294967296
    require mem[800] + 32 <= return_data.size
    require mem[mem[800] + 800] <= 4294967296 and mem[800] + (32 * mem[mem[800] + 800]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 800] = mem[mem[800] + 800]
    _19 = mem[_16 + 800]
    mem[ceil32(return_data.size) + 832 len floor32(mem[_16 + 800])] = mem[_16 + 832 len floor32(mem[_16 + 800])]
    mem[64] = (32 * _19) + ceil32(return_data.size) + 832
    _6556 = mem[ceil32(return_data.size) + 800]
    idx = 0
    while idx < _6556:
        require idx < mem[ceil32(return_data.size) + 800]
        mem[768] = mem[(32 * idx) + ceil32(return_data.size) + 844 len 20]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 844 len 20]
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0xe10076ad with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(arg2)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[736] = bool(ext_call.return_data[96])
        mem[672] = ext_call.return_data[64]
        mem[544] = ext_call.return_data[32]
        mem[512] = ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).0x5fc526ff with:
                    gas gas_remaining wei
                   args address(mem[768])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            mem[704] = bool(ext_call.return_data[96])
            mem[640] = ext_call.return_data[64]
            mem[608] = ext_call.return_data[32]
            mem[576] = ext_call.return_data[0]
            mem[480] = 10^ext_call.return_data[0]
            _6581 = mem[768]
            mem[mem[64] + 4] = mem[780 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_6581)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[448] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _6628 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6628] = 26
                    mem[_6628 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6639 + 68] = mem[idx + _6628 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6639 + 68] = mem[_6639 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6639 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _6799 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6799] = 26
                        mem[_6799 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6838 + 68] = mem[idx + _6799 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6838 + 68] = mem[_6838 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6838 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6837] = 26
                    mem[_6837 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6877 + 68] = mem[idx + _6837 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6877 + 68] = mem[_6877 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6877 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6638] = 26
                mem[_6638 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _6658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6658 + 68] = mem[idx + _6638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6658 + 68] = mem[_6658 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6658 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _6836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6836] = 26
                    mem[_6836 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6874 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6874 + 68] = mem[idx + _6836 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6874 + 68] = mem[_6874 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6874 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6873] = 26
                mem[_6873 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6920 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6920 + 68] = mem[idx + _6873 + 32]
                    idx = idx + 32
                    continue 
                mem[_6920 + 68] = mem[_6920 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6920 + -mem[64] + 100
            if not ext_call.return_data[0]:
                _6623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6623] = 26
                mem[_6623 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _6634 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6634 + 68] = mem[idx + _6623 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6634 + 68] = mem[_6634 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6634 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[96]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _6863 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6863] = 26
                        mem[_6863 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _6904 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6904 + 68] = mem[idx + _6863 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6904 + 68] = mem[_6904 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6904 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _7374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7374] = 26
                            mem[_7374 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _7452 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7452 + 68] = mem[idx + _7374 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7452 + 68] = mem[_7452 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7452 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _7451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7451] = 26
                        mem[_7451 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7547 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7547 + 68] = mem[idx + _7451 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7547 + 68] = mem[_7547 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7547 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6903] = 26
                    mem[_6903 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6960 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6960 + 68] = mem[idx + _6903 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6960 + 68] = mem[_6960 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6960 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _7450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7450] = 26
                        mem[_7450 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7544 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7544 + 68] = mem[idx + _7450 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7544 + 68] = mem[_7544 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7544 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7543] = 26
                    mem[_7543 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7660 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7660 + 68] = mem[idx + _7543 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7660 + 68] = mem[_7660 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7660 + -mem[64] + 100
                if not ext_call.return_data[96]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _6883 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6883] = 26
                        mem[_6883 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _6928 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6928 + 68] = mem[idx + _6883 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6928 + 68] = mem[_6928 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6928 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _7417 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7417] = 26
                            mem[_7417 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _7505 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7505 + 68] = mem[idx + _7417 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7505 + 68] = mem[_7505 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7505 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _7504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7504] = 26
                        mem[_7504 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7613 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7613 + 68] = mem[idx + _7504 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7613 + 68] = mem[_7613 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7613 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6927] = 26
                    mem[_6927 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6987 + 68] = mem[idx + _6927 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6987 + 68] = mem[_6987 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6987 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _7503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7503] = 26
                        mem[_7503 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7610 + 68] = mem[idx + _7503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7610 + 68] = mem[_7610 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7610 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7609] = 26
                    mem[_7609 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7734 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7734 + 68] = mem[idx + _7609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7734 + 68] = mem[_7734 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7734 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / 10^ext_call.return_data[0]:
                    if not 0 / 10^ext_call.return_data[0]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _7740 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7740] = 26
                            mem[_7740 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _7860 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _7860 + 68] = mem[idx + _7740 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7860 + 68] = mem[_7860 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _7860 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _8452 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8452] = 26
                                mem[_8452 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _8514 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _8514 + 68] = mem[idx + _8452 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8514 + 68] = mem[_8514 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _8514 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _8513 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8513] = 26
                            mem[_8513 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _8599 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8599 + 68] = mem[idx + _8513 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8599 + 68] = mem[_8599 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _8599 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _7859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7859] = 26
                        mem[_7859 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _7983 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7983 + 68] = mem[idx + _7859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7983 + 68] = mem[_7983 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7983 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _8512 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8512] = 26
                            mem[_8512 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _8596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8596 + 68] = mem[idx + _8512 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8596 + 68] = mem[_8596 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _8596 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _8595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8595] = 26
                        mem[_8595 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8725 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8725 + 68] = mem[idx + _8595 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8725 + 68] = mem[_8725 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8725 + -mem[64] + 100
                    if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _7858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7858] = 26
                        mem[_7858 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _7980 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7980 + 68] = mem[idx + _7858 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7980 + 68] = mem[_7980 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7980 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _8511 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8511] = 26
                            mem[_8511 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _8592 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8592 + 68] = mem[idx + _8511 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8592 + 68] = mem[_8592 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _8592 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _8591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8591] = 26
                        mem[_8591 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8721 + 68] = mem[idx + _8591 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8721 + 68] = mem[_8721 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8721 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7979] = 26
                    mem[_7979 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8101 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8101 + 68] = mem[idx + _7979 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8101 + 68] = mem[_8101 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8101 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8590] = 26
                        mem[_8590 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8718 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8718 + 68] = mem[idx + _8590 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8718 + 68] = mem[_8718 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8718 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8717 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8717] = 26
                    mem[_8717 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8891 + 68] = mem[idx + _8717 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8891 + 68] = mem[_8891 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8891 + -mem[64] + 100
                if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 0 / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _7857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7857] = 26
                        mem[_7857 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _7976 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7976 + 68] = mem[idx + _7857 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7976 + 68] = mem[_7976 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7976 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _8510 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8510] = 26
                            mem[_8510 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _8587 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8587 + 68] = mem[idx + _8510 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8587 + 68] = mem[_8587 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _8587 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _8586 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8586] = 26
                        mem[_8586 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8713 + 68] = mem[idx + _8586 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8713 + 68] = mem[_8713 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8713 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7975] = 26
                    mem[_7975 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8097 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8097 + 68] = mem[idx + _7975 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8097 + 68] = mem[_8097 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8097 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8585] = 26
                        mem[_8585 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8710 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8710 + 68] = mem[idx + _8585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8710 + 68] = mem[_8710 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8710 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8709] = 26
                    mem[_8709 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8885 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8885 + 68] = mem[idx + _8709 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8885 + 68] = mem[_8885 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8885 + -mem[64] + 100
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _7974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7974] = 26
                    mem[_7974 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8094 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8094 + 68] = mem[idx + _7974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8094 + 68] = mem[_8094 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8094 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8584] = 26
                        mem[_8584 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8706 + 68] = mem[idx + _8584 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8706 + 68] = mem[_8706 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8706 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8705] = 26
                    mem[_8705 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8881 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8881 + 68] = mem[idx + _8705 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8881 + 68] = mem[_8881 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8881 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8093] = 26
                mem[_8093 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8197 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8197 + 68] = mem[idx + _8093 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8197 + 68] = mem[_8197 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8197 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8704 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8704] = 26
                    mem[_8704 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8878 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8878 + 68] = mem[idx + _8704 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8878 + 68] = mem[_8878 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8878 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8877 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8877] = 26
                mem[_8877 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _9081 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _9081 + 68] = mem[idx + _8877 + 32]
                    idx = idx + 32
                    continue 
                mem[_9081 + 68] = mem[_9081 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _9081 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6633] = 26
            mem[_6633 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _6650 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6650 + 68] = mem[idx + _6633 + 32]
                    idx = idx + 32
                    continue 
                mem[_6650 + 68] = mem[_6650 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6650 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _6900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6900] = 26
                    mem[_6900 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6955 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6955 + 68] = mem[idx + _6900 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6955 + 68] = mem[_6955 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6955 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _7447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7447] = 26
                        mem[_7447 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7535 + 68] = mem[idx + _7447 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7535 + 68] = mem[_7535 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7535 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7534 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7534] = 26
                    mem[_7534 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7650 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7650 + 68] = mem[idx + _7534 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7650 + 68] = mem[_7650 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7650 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6954 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6954] = 26
                mem[_6954 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _7017 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7017 + 68] = mem[idx + _6954 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7017 + 68] = mem[_7017 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7017 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _7533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7533] = 26
                    mem[_7533 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7647 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7647 + 68] = mem[idx + _7533 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7647 + 68] = mem[_7647 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7647 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _7646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7646] = 26
                mem[_7646 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7769 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7769 + 68] = mem[idx + _7646 + 32]
                    idx = idx + 32
                    continue 
                mem[_7769 + 68] = mem[_7769 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7769 + -mem[64] + 100
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _6926 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6926] = 26
                    mem[_6926 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6982 + 68] = mem[idx + _6926 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6982 + 68] = mem[_6982 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6982 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _7499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7499] = 26
                        mem[_7499 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7602 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7602 + 68] = mem[idx + _7499 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7602 + 68] = mem[_7602 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7602 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7601] = 26
                    mem[_7601 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7725 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7725 + 68] = mem[idx + _7601 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7725 + 68] = mem[_7725 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7725 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6981 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6981] = 26
                mem[_6981 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _7054 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7054 + 68] = mem[idx + _6981 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7054 + 68] = mem[_7054 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7054 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _7600 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7600] = 26
                    mem[_7600 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7722 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7722 + 68] = mem[idx + _7600 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7722 + 68] = mem[_7722 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7722 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _7721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7721] = 26
                mem[_7721 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7843 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7843 + 68] = mem[idx + _7721 + 32]
                    idx = idx + 32
                    continue 
                mem[_7843 + 68] = mem[_7843 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7843 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _7849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7849] = 26
                        mem[_7849 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _7966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7966 + 68] = mem[idx + _7849 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7966 + 68] = mem[_7966 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7966 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _8509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8509] = 26
                            mem[_8509 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _8581 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8581 + 68] = mem[idx + _8509 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8581 + 68] = mem[_8581 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _8581 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _8580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8580] = 26
                        mem[_8580 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8700 + 68] = mem[idx + _8580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8700 + 68] = mem[_8700 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8700 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7965] = 26
                    mem[_7965 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8087 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8087 + 68] = mem[idx + _7965 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8087 + 68] = mem[_8087 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8087 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8579] = 26
                        mem[_8579 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8697 + 68] = mem[idx + _8579 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8697 + 68] = mem[_8697 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8697 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8696 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8696] = 26
                    mem[_8696 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8871 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8871 + 68] = mem[idx + _8696 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8871 + 68] = mem[_8871 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8871 + -mem[64] + 100
                if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _7964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7964] = 26
                    mem[_7964 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8084 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8084 + 68] = mem[idx + _7964 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8084 + 68] = mem[_8084 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8084 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8578] = 26
                        mem[_8578 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8693 + 68] = mem[idx + _8578 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8693 + 68] = mem[_8693 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8693 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8692] = 26
                    mem[_8692 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8867 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8867 + 68] = mem[idx + _8692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8867 + 68] = mem[_8867 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8867 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8083 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8083] = 26
                mem[_8083 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8191 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8191 + 68] = mem[idx + _8083 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8191 + 68] = mem[_8191 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8191 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8691] = 26
                    mem[_8691 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8864 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8864 + 68] = mem[idx + _8691 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8864 + 68] = mem[_8864 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8864 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8863 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8863] = 26
                mem[_8863 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _9070 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _9070 + 68] = mem[idx + _8863 + 32]
                    idx = idx + 32
                    continue 
                mem[_9070 + 68] = mem[_9070 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _9070 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _7963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7963] = 26
                    mem[_7963 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8080 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8080 + 68] = mem[idx + _7963 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8080 + 68] = mem[_8080 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8080 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8577] = 26
                        mem[_8577 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8688 + 68] = mem[idx + _8577 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8688 + 68] = mem[_8688 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8688 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8687] = 26
                    mem[_8687 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8859 + 68] = mem[idx + _8687 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8859 + 68] = mem[_8859 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8859 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8079] = 26
                mem[_8079 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8187 + 68] = mem[idx + _8079 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8187 + 68] = mem[_8187 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8187 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8686 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8686] = 26
                    mem[_8686 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8856 + 68] = mem[idx + _8686 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8856 + 68] = mem[_8856 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8856 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8855] = 26
                mem[_8855 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _9064 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _9064 + 68] = mem[idx + _8855 + 32]
                    idx = idx + 32
                    continue 
                mem[_9064 + 68] = mem[_9064 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _9064 + -mem[64] + 100
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _8078 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8078] = 26
                mem[_8078 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8184 + 68] = mem[idx + _8078 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8184 + 68] = mem[_8184 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8184 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8685 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8685] = 26
                    mem[_8685 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8852 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8852 + 68] = mem[idx + _8685 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8852 + 68] = mem[_8852 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8852 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8851 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8851] = 26
                mem[_8851 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _9060 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _9060 + 68] = mem[idx + _8851 + 32]
                    idx = idx + 32
                    continue 
                mem[_9060 + 68] = mem[_9060 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _9060 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8183] = 26
            mem[_8183 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _8271 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8271 + 68] = mem[idx + _8183 + 32]
                    idx = idx + 32
                    continue 
                mem[_8271 + 68] = mem[_8271 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8271 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _8850 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8850] = 26
                mem[_8850 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _9057 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _9057 + 68] = mem[idx + _8850 + 32]
                    idx = idx + 32
                    continue 
                mem[_9057 + 68] = mem[_9057 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _9057 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _9056 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9056] = 26
            mem[_9056 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _9270 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _9270 + 68] = mem[idx + _9056 + 32]
                idx = idx + 32
                continue 
            mem[_9270 + 68] = mem[_9270 + 74 len 26]
            revert with memory
              from mem[64]
               len _9270 + -mem[64] + 100
        if not ext_call.return_data[32]:
            idx = idx + 1
            continue 
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0x5fc526ff with:
                gas gas_remaining wei
               args address(mem[768])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[704] = bool(ext_call.return_data[96])
        mem[640] = ext_call.return_data[64]
        mem[608] = ext_call.return_data[32]
        mem[576] = ext_call.return_data[0]
        mem[480] = 10^ext_call.return_data[0]
        _6589 = mem[768]
        mem[mem[64] + 4] = mem[780 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(_6589)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[448] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _6637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6637] = 26
                mem[_6637 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _6655 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6655 + 68] = mem[idx + _6637 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6655 + 68] = mem[_6655 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6655 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _6829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6829] = 26
                    mem[_6829 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6868 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6868 + 68] = mem[idx + _6829 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6868 + 68] = mem[_6868 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6868 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6867 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6867] = 26
                mem[_6867 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6913 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6913 + 68] = mem[idx + _6867 + 32]
                    idx = idx + 32
                    continue 
                mem[_6913 + 68] = mem[_6913 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6913 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6654 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6654] = 26
            mem[_6654 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _6676 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6676 + 68] = mem[idx + _6654 + 32]
                    idx = idx + 32
                    continue 
                mem[_6676 + 68] = mem[_6676 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6676 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _6866 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6866] = 26
                mem[_6866 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6910 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6910 + 68] = mem[idx + _6866 + 32]
                    idx = idx + 32
                    continue 
                mem[_6910 + 68] = mem[_6910 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6910 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6909 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6909] = 26
            mem[_6909 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _6964 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6964 + 68] = mem[idx + _6909 + 32]
                idx = idx + 32
                continue 
            mem[_6964 + 68] = mem[_6964 + 74 len 26]
            revert with memory
              from mem[64]
               len _6964 + -mem[64] + 100
        if not ext_call.return_data[0]:
            _6631 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6631] = 26
            mem[_6631 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _6643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6643 + 68] = mem[idx + _6631 + 32]
                    idx = idx + 32
                    continue 
                mem[_6643 + 68] = mem[_6643 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6643 + -mem[64] + 100
            if 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _6885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6885] = 26
                    mem[_6885 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6937 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6937 + 68] = mem[idx + _6885 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6937 + 68] = mem[_6937 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6937 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _7424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7424] = 26
                        mem[_7424 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7515 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7515 + 68] = mem[idx + _7424 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7515 + 68] = mem[_7515 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7515 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7514] = 26
                    mem[_7514 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7632 + 68] = mem[idx + _7514 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7632 + 68] = mem[_7632 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7632 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6936] = 26
                mem[_6936 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _7001 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7001 + 68] = mem[idx + _6936 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7001 + 68] = mem[_7001 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7001 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _7513 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7513] = 26
                    mem[_7513 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7629 + 68] = mem[idx + _7513 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7629 + 68] = mem[_7629 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7629 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _7628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7628] = 26
                mem[_7628 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7755 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7755 + 68] = mem[idx + _7628 + 32]
                    idx = idx + 32
                    continue 
                mem[_7755 + 68] = mem[_7755 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7755 + -mem[64] + 100
            if not ext_call.return_data[96]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _6919 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6919] = 26
                    mem[_6919 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _6972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6972 + 68] = mem[idx + _6919 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6972 + 68] = mem[_6972 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6972 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _7466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7466] = 26
                        mem[_7466 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _7565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7565 + 68] = mem[idx + _7466 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7565 + 68] = mem[_7565 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7565 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7564 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7564] = 26
                    mem[_7564 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7686 + 68] = mem[idx + _7564 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7686 + 68] = mem[_7686 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7686 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6971 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6971] = 26
                mem[_6971 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _7039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7039 + 68] = mem[idx + _6971 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7039 + 68] = mem[_7039 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7039 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _7563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7563] = 26
                    mem[_7563 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7683 + 68] = mem[idx + _7563 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7683 + 68] = mem[_7683 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7683 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _7682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7682] = 26
                mem[_7682 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7810 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7810 + 68] = mem[idx + _7682 + 32]
                    idx = idx + 32
                    continue 
                mem[_7810 + 68] = mem[_7810 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7810 + -mem[64] + 100
            if 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / 10^ext_call.return_data[0]:
                if not 0 / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _7816 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7816] = 26
                        mem[_7816 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _7933 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7933 + 68] = mem[idx + _7816 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7933 + 68] = mem[_7933 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7933 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _8508 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8508] = 26
                            mem[_8508 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _8573 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8573 + 68] = mem[idx + _8508 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8573 + 68] = mem[_8573 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _8573 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _8572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8572] = 26
                        mem[_8572 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8674 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8674 + 68] = mem[idx + _8572 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8674 + 68] = mem[_8674 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8674 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _7932 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7932] = 26
                    mem[_7932 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8053 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8053 + 68] = mem[idx + _7932 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8053 + 68] = mem[_8053 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8053 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8571] = 26
                        mem[_8571 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8671 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8671 + 68] = mem[idx + _8571 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8671 + 68] = mem[_8671 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8671 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8670] = 26
                    mem[_8670 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8823 + 68] = mem[idx + _8670 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8823 + 68] = mem[_8823 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8823 + -mem[64] + 100
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _7931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7931] = 26
                    mem[_7931 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8050 + 68] = mem[idx + _7931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8050 + 68] = mem[_8050 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8050 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8570] = 26
                        mem[_8570 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8667 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8667 + 68] = mem[idx + _8570 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8667 + 68] = mem[_8667 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8667 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8666] = 26
                    mem[_8666 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8819 + 68] = mem[idx + _8666 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8819 + 68] = mem[_8819 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8819 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8049 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8049] = 26
                mem[_8049 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8165 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8165 + 68] = mem[idx + _8049 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8165 + 68] = mem[_8165 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8165 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8665] = 26
                    mem[_8665 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8816 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8816 + 68] = mem[idx + _8665 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8816 + 68] = mem[_8816 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8816 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8815] = 26
                mem[_8815 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _9005 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _9005 + 68] = mem[idx + _8815 + 32]
                    idx = idx + 32
                    continue 
                mem[_9005 + 68] = mem[_9005 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _9005 + -mem[64] + 100
            if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / 10^ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _7930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7930] = 26
                    mem[_7930 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8046 + 68] = mem[idx + _7930 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8046 + 68] = mem[_8046 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8046 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8569] = 26
                        mem[_8569 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8662 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8662 + 68] = mem[idx + _8569 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8662 + 68] = mem[_8662 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8662 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8661] = 26
                    mem[_8661 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8811 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8811 + 68] = mem[idx + _8661 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8811 + 68] = mem[_8811 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8811 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8045] = 26
                mem[_8045 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8161 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8161 + 68] = mem[idx + _8045 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8161 + 68] = mem[_8161 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8161 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8660] = 26
                    mem[_8660 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8808 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8808 + 68] = mem[idx + _8660 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8808 + 68] = mem[_8808 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8808 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8807 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8807] = 26
                mem[_8807 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8999 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8999 + 68] = mem[idx + _8807 + 32]
                    idx = idx + 32
                    continue 
                mem[_8999 + 68] = mem[_8999 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8999 + -mem[64] + 100
            if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _8044 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8044] = 26
                mem[_8044 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8158 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8158 + 68] = mem[idx + _8044 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8158 + 68] = mem[_8158 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8158 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8659] = 26
                    mem[_8659 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8804 + 68] = mem[idx + _8659 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8804 + 68] = mem[_8804 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8804 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8803] = 26
                mem[_8803 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8995 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8995 + 68] = mem[idx + _8803 + 32]
                    idx = idx + 32
                    continue 
                mem[_8995 + 68] = mem[_8995 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8995 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8157] = 26
            mem[_8157 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _8254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8254 + 68] = mem[idx + _8157 + 32]
                    idx = idx + 32
                    continue 
                mem[_8254 + 68] = mem[_8254 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8254 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _8802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8802] = 26
                mem[_8802 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8992 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8992 + 68] = mem[idx + _8802 + 32]
                    idx = idx + 32
                    continue 
                mem[_8992 + 68] = mem[_8992 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8992 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8991] = 26
            mem[_8991 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _9193 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _9193 + 68] = mem[idx + _8991 + 32]
                idx = idx + 32
                continue 
            mem[_9193 + 68] = mem[_9193 + 74 len 26]
            revert with memory
              from mem[64]
               len _9193 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        _6642 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6642] = 26
        mem[_6642 + 32] = 'SafeMath: division by zero' << 48
        if not 10^ext_call.return_data[0]:
            _6664 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6664 + 68] = mem[idx + _6642 + 32]
                idx = idx + 32
                continue 
            mem[_6664 + 68] = mem[_6664 + 74 len 26]
            revert with memory
              from mem[64]
               len _6664 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[96]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _6933 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6933] = 26
                mem[_6933 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _6996 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6996 + 68] = mem[idx + _6933 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6996 + 68] = mem[_6996 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6996 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _7510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7510] = 26
                    mem[_7510 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7620 + 68] = mem[idx + _7510 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7620 + 68] = mem[_7620 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7620 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _7619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7619] = 26
                mem[_7619 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7745 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7745 + 68] = mem[idx + _7619 + 32]
                    idx = idx + 32
                    continue 
                mem[_7745 + 68] = mem[_7745 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7745 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _6995 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6995] = 26
            mem[_6995 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _7064 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7064 + 68] = mem[idx + _6995 + 32]
                    idx = idx + 32
                    continue 
                mem[_7064 + 68] = mem[_7064 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7064 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _7618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7618] = 26
                mem[_7618 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7742 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7742 + 68] = mem[idx + _7618 + 32]
                    idx = idx + 32
                    continue 
                mem[_7742 + 68] = mem[_7742 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7742 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _7741 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7741] = 26
            mem[_7741 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _7863 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _7863 + 68] = mem[idx + _7741 + 32]
                idx = idx + 32
                continue 
            mem[_7863 + 68] = mem[_7863 + 74 len 26]
            revert with memory
              from mem[64]
               len _7863 + -mem[64] + 100
        if not ext_call.return_data[96]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _6970 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6970] = 26
                mem[_6970 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _7034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7034 + 68] = mem[idx + _6970 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7034 + 68] = mem[_7034 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7034 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _7559 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7559] = 26
                    mem[_7559 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _7675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7675 + 68] = mem[idx + _7559 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7675 + 68] = mem[_7675 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7675 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _7674 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7674] = 26
                mem[_7674 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7801 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7801 + 68] = mem[idx + _7674 + 32]
                    idx = idx + 32
                    continue 
                mem[_7801 + 68] = mem[_7801 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7801 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _7033 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7033] = 26
            mem[_7033 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _7103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7103 + 68] = mem[idx + _7033 + 32]
                    idx = idx + 32
                    continue 
                mem[_7103 + 68] = mem[_7103 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7103 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _7673 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7673] = 26
                mem[_7673 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _7798 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7798 + 68] = mem[idx + _7673 + 32]
                    idx = idx + 32
                    continue 
                mem[_7798 + 68] = mem[_7798 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7798 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _7797 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7797] = 26
            mem[_7797 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _7916 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _7916 + 68] = mem[idx + _7797 + 32]
                idx = idx + 32
                continue 
            mem[_7916 + 68] = mem[_7916 + 74 len 26]
            revert with memory
              from mem[64]
               len _7916 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _7922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7922] = 26
                    mem[_7922 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _8036 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8036 + 68] = mem[idx + _7922 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8036 + 68] = mem[_8036 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8036 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _8568 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8568] = 26
                        mem[_8568 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _8656 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _8656 + 68] = mem[idx + _8568 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8656 + 68] = mem[_8656 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _8656 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _8655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8655] = 26
                    mem[_8655 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8798 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8798 + 68] = mem[idx + _8655 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8798 + 68] = mem[_8798 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8798 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8035 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8035] = 26
                mem[_8035 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8151 + 68] = mem[idx + _8035 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8151 + 68] = mem[_8151 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8151 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8654] = 26
                    mem[_8654 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8795 + 68] = mem[idx + _8654 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8795 + 68] = mem[_8795 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8795 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8794] = 26
                mem[_8794 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8985 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8985 + 68] = mem[idx + _8794 + 32]
                    idx = idx + 32
                    continue 
                mem[_8985 + 68] = mem[_8985 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8985 + -mem[64] + 100
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _8034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8034] = 26
                mem[_8034 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8148 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8148 + 68] = mem[idx + _8034 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8148 + 68] = mem[_8148 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8148 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8653] = 26
                    mem[_8653 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8791 + 68] = mem[idx + _8653 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8791 + 68] = mem[_8791 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8791 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8790 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8790] = 26
                mem[_8790 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8981 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8981 + 68] = mem[idx + _8790 + 32]
                    idx = idx + 32
                    continue 
                mem[_8981 + 68] = mem[_8981 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8981 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8147 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8147] = 26
            mem[_8147 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _8248 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8248 + 68] = mem[idx + _8147 + 32]
                    idx = idx + 32
                    continue 
                mem[_8248 + 68] = mem[_8248 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8248 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _8789 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8789] = 26
                mem[_8789 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8978 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8978 + 68] = mem[idx + _8789 + 32]
                    idx = idx + 32
                    continue 
                mem[_8978 + 68] = mem[_8978 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8978 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8977 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8977] = 26
            mem[_8977 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _9182 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _9182 + 68] = mem[idx + _8977 + 32]
                idx = idx + 32
                continue 
            mem[_9182 + 68] = mem[_9182 + 74 len 26]
            revert with memory
              from mem[64]
               len _9182 + -mem[64] + 100
        if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[32]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
            if not ext_call.return_data[32]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _8033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8033] = 26
                mem[_8033 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _8144 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8144 + 68] = mem[idx + _8033 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8144 + 68] = mem[_8144 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8144 + -mem[64] + 100
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _8652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8652] = 26
                    mem[_8652 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _8786 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _8786 + 68] = mem[idx + _8652 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8786 + 68] = mem[_8786 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _8786 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _8785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8785] = 26
                mem[_8785 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8973 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8973 + 68] = mem[idx + _8785 + 32]
                    idx = idx + 32
                    continue 
                mem[_8973 + 68] = mem[_8973 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8973 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8143] = 26
            mem[_8143 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _8244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8244 + 68] = mem[idx + _8143 + 32]
                    idx = idx + 32
                    continue 
                mem[_8244 + 68] = mem[_8244 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8244 + -mem[64] + 100
            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _8784 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8784] = 26
                mem[_8784 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8970 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8970 + 68] = mem[idx + _8784 + 32]
                    idx = idx + 32
                    continue 
                mem[_8970 + 68] = mem[_8970 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8970 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8969 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8969] = 26
            mem[_8969 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _9176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _9176 + 68] = mem[idx + _8969 + 32]
                idx = idx + 32
                continue 
            mem[_9176 + 68] = mem[_9176 + 74 len 26]
            revert with memory
              from mem[64]
               len _9176 + -mem[64] + 100
        if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[32]:
            idx = idx + 1
            continue 
        if not ext_call.return_data[0]:
            _8142 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8142] = 26
            mem[_8142 + 32] = 'SafeMath: division by zero' << 48
            if not 10^ext_call.return_data[0]:
                _8241 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8241 + 68] = mem[idx + _8142 + 32]
                    idx = idx + 32
                    continue 
                mem[_8241 + 68] = mem[_8241 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8241 + -mem[64] + 100
            if 0 / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[64]:
                _8783 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8783] = 26
                mem[_8783 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _8966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _8966 + 68] = mem[idx + _8783 + 32]
                    idx = idx + 32
                    continue 
                mem[_8966 + 68] = mem[_8966 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _8966 + -mem[64] + 100
            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[mem[64] + 128 len 4]
            _8965 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8965] = 26
            mem[_8965 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _9172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _9172 + 68] = mem[idx + _8965 + 32]
                idx = idx + 32
                continue 
            mem[_9172 + 68] = mem[_9172 + 74 len 26]
            revert with memory
              from mem[64]
               len _9172 + -mem[64] + 100
        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        _8240 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8240] = 26
        mem[_8240 + 32] = 'SafeMath: division by zero' << 48
        if not 10^ext_call.return_data[0]:
            _8322 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _8322 + 68] = mem[idx + _8240 + 32]
                idx = idx + 32
                continue 
            mem[_8322 + 68] = mem[_8322 + 74 len 26]
            revert with memory
              from mem[64]
               len _8322 + -mem[64] + 100
        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[64]:
            _8964 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8964] = 26
            mem[_8964 + 32] = 'SafeMath: division by zero' << 48
            if 10^ext_call.return_data[0]:
                if 0 / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _9169 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _9169 + 68] = mem[idx + _8964 + 32]
                idx = idx + 32
                continue 
            mem[_9169 + 68] = mem[_9169 + 74 len 26]
            revert with memory
              from mem[64]
               len _9169 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[mem[64] + 128 len 4]
        _9168 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9168] = 26
        mem[_9168 + 32] = 'SafeMath: division by zero' << 48
        if 10^ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _9362 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _9362 + 68] = mem[idx + _9168 + 32]
            idx = idx + 32
            continue 
        mem[_9362 + 68] = mem[_9362 + 74 len 26]
        revert with memory
          from mem[64]
           len _9362 + -mem[64] + 100
    mem[224] = 0
    mem[192] = 0
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfca513a8 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6595 = mem[96]
    mem[mem[64] + 4] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        _6632 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6632] = 26
        mem[_6632 + 32] = 'SafeMath: division by zero' << 48
        if not 10^_6595:
            revert with 0, 'SafeMath: division by zero'
        mem[288] = 0 / 10^_6595
        if not arg4:
            if 0 / 10^_6595 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[320] = 0 / 10^_6595
            if 0 / 10^_6595:
                if mem[256] * 0 / 10^_6595 / 0 / 10^_6595 != mem[256]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if mem[256] * 0 / 10^_6595 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            if not 0 / 10^_6595:
                revert with 0, 'SafeMath: division by zero'
        else:
            _6718 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6718] = 30
            mem[_6718 + 32] = 'SafeMath: subtraction overflow'
            if 0 / 10^_6595 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[320] = -0 / 10^_6595
            if 0 / 10^_6595:
                if mem[256] * 0 / 10^_6595 / 0 / 10^_6595 != mem[256]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if mem[256] * 0 / 10^_6595 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
            if not -0 / 10^_6595:
                revert with 0, 'SafeMath: division by zero'
    else:
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _6646 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6646] = 26
        mem[_6646 + 32] = 'SafeMath: division by zero' << 48
        if not 10^_6595:
            revert with 0, 'SafeMath: division by zero'
        mem[288] = arg3 * ext_call.return_data[0] / 10^_6595
        if not arg4:
            if arg3 * ext_call.return_data[0] / 10^_6595 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[320] = arg3 * ext_call.return_data[0] / 10^_6595
            if arg3 * ext_call.return_data[0] / 10^_6595:
                if mem[256] * arg3 * ext_call.return_data[0] / 10^_6595 / arg3 * ext_call.return_data[0] / 10^_6595 != mem[256]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if mem[256] * arg3 * ext_call.return_data[0] / 10^_6595 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            if not arg3 * ext_call.return_data[0] / 10^_6595:
                revert with 0, 'SafeMath: division by zero'
        else:
            _6740 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6740] = 30
            mem[_6740 + 32] = 'SafeMath: subtraction overflow'
            if arg3 * ext_call.return_data[0] / 10^_6595 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[320] = -arg3 * ext_call.return_data[0] / 10^_6595
            if arg3 * ext_call.return_data[0] / 10^_6595:
                if mem[256] * arg3 * ext_call.return_data[0] / 10^_6595 / arg3 * ext_call.return_data[0] / 10^_6595 != mem[256]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if mem[256] * arg3 * ext_call.return_data[0] / 10^_6595 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
            if not -arg3 * ext_call.return_data[0] / 10^_6595:
                revert with 0, 'SafeMath: division by zero'
    return -1
}

function balanceDecreaseAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x5fc526ff with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[416] = bool(ext_call.return_data[96])
    mem[256] = ext_call.return_data[64]
    mem[96] = ext_call.return_data[0]
    if ext_call.return_data[96]:
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).0x9e3c4f3b with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0xfca513a8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
            mem[544] = 0
            mem[576] = 0
            mem[608] = 0
            mem[640] = 0
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[768] = 0
            mem[800] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(coreAddress))
            staticcall address(coreAddress).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[800 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _24 = mem[800]
            require mem[800] <= 4294967296
            require mem[800] + 32 <= return_data.size
            require mem[mem[800] + 800] <= 4294967296 and mem[800] + (32 * mem[mem[800] + 800]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 800] = mem[mem[800] + 800]
            _27 = mem[_24 + 800]
            mem[ceil32(return_data.size) + 832 len floor32(mem[_24 + 800])] = mem[_24 + 832 len floor32(mem[_24 + 800])]
            mem[64] = (32 * _27) + ceil32(return_data.size) + 832
            _4318 = mem[ceil32(return_data.size) + 800]
            idx = 0
            while idx < _4318:
                require idx < mem[ceil32(return_data.size) + 800]
                mem[768] = mem[(32 * idx) + ceil32(return_data.size) + 844 len 20]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 844 len 20]
                require ext_code.size(address(coreAddress))
                staticcall address(coreAddress).0xe10076ad with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(arg2)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                mem[736] = bool(ext_call.return_data[96])
                mem[672] = ext_call.return_data[64]
                mem[544] = ext_call.return_data[32]
                mem[512] = ext_call.return_data[0]
                if ext_call.return_data[0]:
                    require ext_code.size(address(coreAddress))
                    staticcall address(coreAddress).0x5fc526ff with:
                            gas gas_remaining wei
                           args address(mem[768])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    mem[704] = bool(ext_call.return_data[96])
                    mem[640] = ext_call.return_data[64]
                    mem[608] = ext_call.return_data[32]
                    mem[576] = ext_call.return_data[0]
                    mem[480] = 10^ext_call.return_data[0]
                    _4341 = mem[768]
                    mem[mem[64] + 4] = mem[780 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(_4341)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _4381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4381] = 26
                            mem[_4381 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4391 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4391 + 68] = mem[idx + _4381 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4391 + 68] = mem[_4391 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4391 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4500] = 26
                                mem[_4500 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4528 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4528 + 68] = mem[idx + _4500 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4528 + 68] = mem[_4528 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4528 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4527 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4527] = 26
                            mem[_4527 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _4556 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4556 + 68] = mem[idx + _4527 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4556 + 68] = mem[_4556 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4556 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4390] = 26
                        mem[_4390 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4406 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4406 + 68] = mem[idx + _4390 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4406 + 68] = mem[_4406 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4406 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4526 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4526] = 26
                            mem[_4526 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _4553 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4553 + 68] = mem[idx + _4526 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4553 + 68] = mem[_4553 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4553 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4552] = 26
                        mem[_4552 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _4589 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4589 + 68] = mem[idx + _4552 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4589 + 68] = mem[_4589 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4589 + -mem[64] + 100
                    if not ext_call.return_data[0]:
                        _4378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4378] = 26
                        mem[_4378 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4386 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4386 + 68] = mem[idx + _4378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4386 + 68] = mem[_4386 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4386 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[96]:
                            if not ext_call.return_data[32]:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                _4542 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4542] = 26
                                mem[_4542 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _4573 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4573 + 68] = mem[idx + _4542 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4573 + 68] = mem[_4573 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4573 + -mem[64] + 100
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _4874 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4874] = 26
                                    mem[_4874 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _4907 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4907 + 68] = mem[idx + _4874 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4907 + 68] = mem[_4907 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4907 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _4906 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4906] = 26
                                mem[_4906 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4965 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4965 + 68] = mem[idx + _4906 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4965 + 68] = mem[_4965 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4965 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4572 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4572] = 26
                            mem[_4572 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4621 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4621 + 68] = mem[idx + _4572 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4621 + 68] = mem[_4621 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4621 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4905 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4905] = 26
                                mem[_4905 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4962 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4962 + 68] = mem[idx + _4905 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4962 + 68] = mem[_4962 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4962 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4961 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4961] = 26
                            mem[_4961 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5044 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5044 + 68] = mem[idx + _4961 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5044 + 68] = mem[_5044 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5044 + -mem[64] + 100
                        if not ext_call.return_data[96]:
                            if not ext_call.return_data[32]:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                _4562 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4562] = 26
                                mem[_4562 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _4597 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4597 + 68] = mem[idx + _4562 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4597 + 68] = mem[_4597 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4597 + -mem[64] + 100
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _4892 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4892] = 26
                                    mem[_4892 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _4933 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4933 + 68] = mem[idx + _4892 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4933 + 68] = mem[_4933 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4933 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _4932 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4932] = 26
                                mem[_4932 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5001 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5001 + 68] = mem[idx + _4932 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5001 + 68] = mem[_5001 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5001 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4596 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4596] = 26
                            mem[_4596 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4647 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4647 + 68] = mem[idx + _4596 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4647 + 68] = mem[_4647 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4647 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4931 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4931] = 26
                                mem[_4931 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4998 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4998 + 68] = mem[idx + _4931 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4998 + 68] = mem[_4998 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4998 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4997 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4997] = 26
                            mem[_4997 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5090 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5090 + 68] = mem[idx + _4997 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5090 + 68] = mem[_5090 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5090 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / 10^ext_call.return_data[0]:
                            if not 0 / 10^ext_call.return_data[0]:
                                if not ext_call.return_data[32]:
                                    idx = idx + 1
                                    continue 
                                if not ext_call.return_data[0]:
                                    _5096 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5096] = 26
                                    mem[_5096 + 32] = 'SafeMath: division by zero' << 48
                                    if not 10^ext_call.return_data[0]:
                                        _5193 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _5193 + 68] = mem[idx + _5096 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_5193 + 68] = mem[_5193 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _5193 + -mem[64] + 100
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[64]:
                                        _5699 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5699] = 26
                                        mem[_5699 + 32] = 'SafeMath: division by zero' << 48
                                        if 10^ext_call.return_data[0]:
                                            if 0 / 10^ext_call.return_data[0] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            idx = idx + 1
                                            continue 
                                        _5757 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _5757 + 68] = mem[idx + _5699 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_5757 + 68] = mem[_5757 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _5757 + -mem[64] + 100
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    _5756 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5756] = 26
                                    mem[_5756 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _5827 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5827 + 68] = mem[idx + _5756 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5827 + 68] = mem[_5827 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5827 + -mem[64] + 100
                                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _5192 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5192] = 26
                                mem[_5192 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _5295 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5295 + 68] = mem[idx + _5192 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5295 + 68] = mem[_5295 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5295 + -mem[64] + 100
                                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _5755 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5755] = 26
                                    mem[_5755 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _5824 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5824 + 68] = mem[idx + _5755 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5824 + 68] = mem[_5824 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5824 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _5823 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5823] = 26
                                mem[_5823 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5922 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5922 + 68] = mem[idx + _5823 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5922 + 68] = mem[_5922 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5922 + -mem[64] + 100
                            if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[32]:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                _5191 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5191] = 26
                                mem[_5191 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _5292 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5292 + 68] = mem[idx + _5191 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5292 + 68] = mem[_5292 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5292 + -mem[64] + 100
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _5754 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5754] = 26
                                    mem[_5754 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _5820 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5820 + 68] = mem[idx + _5754 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5820 + 68] = mem[_5820 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5820 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _5819 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5819] = 26
                                mem[_5819 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5918 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5918 + 68] = mem[idx + _5819 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5918 + 68] = mem[_5918 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5918 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5291] = 26
                            mem[_5291 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5393 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5393 + 68] = mem[idx + _5291 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5393 + 68] = mem[_5393 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5393 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5818 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5818] = 26
                                mem[_5818 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5915 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5915 + 68] = mem[idx + _5818 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5915 + 68] = mem[_5915 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5915 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5914 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5914] = 26
                            mem[_5914 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6037 + 68] = mem[idx + _5914 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6037 + 68] = mem[_6037 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6037 + -mem[64] + 100
                        if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / 10^ext_call.return_data[0]:
                            if not ext_call.return_data[32]:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                _5190 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5190] = 26
                                mem[_5190 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _5288 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5288 + 68] = mem[idx + _5190 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5288 + 68] = mem[_5288 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5288 + -mem[64] + 100
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _5753 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5753] = 26
                                    mem[_5753 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _5815 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5815 + 68] = mem[idx + _5753 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5815 + 68] = mem[_5815 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5815 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _5814 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5814] = 26
                                mem[_5814 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5910 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5910 + 68] = mem[idx + _5814 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5910 + 68] = mem[_5910 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5910 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5287 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5287] = 26
                            mem[_5287 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5389 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5389 + 68] = mem[idx + _5287 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5389 + 68] = mem[_5389 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5389 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5813 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5813] = 26
                                mem[_5813 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5907 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5907 + 68] = mem[idx + _5813 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5907 + 68] = mem[_5907 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5907 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5906] = 26
                            mem[_5906 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6031 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6031 + 68] = mem[idx + _5906 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6031 + 68] = mem[_6031 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6031 + -mem[64] + 100
                        if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5286] = 26
                            mem[_5286 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5386 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5386 + 68] = mem[idx + _5286 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5386 + 68] = mem[_5386 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5386 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5812 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5812] = 26
                                mem[_5812 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5903 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5903 + 68] = mem[idx + _5812 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5903 + 68] = mem[_5903 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5903 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5902 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5902] = 26
                            mem[_5902 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6027 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6027 + 68] = mem[idx + _5902 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6027 + 68] = mem[_6027 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6027 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5385] = 26
                        mem[_5385 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5472 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5472 + 68] = mem[idx + _5385 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5472 + 68] = mem[_5472 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5472 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5901 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5901] = 26
                            mem[_5901 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6024 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6024 + 68] = mem[idx + _5901 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6024 + 68] = mem[_6024 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6024 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _6023 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6023] = 26
                        mem[_6023 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6157 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6157 + 68] = mem[idx + _6023 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6157 + 68] = mem[_6157 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6157 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4385 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4385] = 26
                    mem[_4385 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4398 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4398 + 68] = mem[idx + _4385 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4398 + 68] = mem[_4398 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4398 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[96]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _4569 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4569] = 26
                            mem[_4569 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4616 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4616 + 68] = mem[idx + _4569 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4616 + 68] = mem[_4616 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4616 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4902 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4902] = 26
                                mem[_4902 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4953 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4953 + 68] = mem[idx + _4902 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4953 + 68] = mem[_4953 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4953 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4952] = 26
                            mem[_4952 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5034 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5034 + 68] = mem[idx + _4952 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5034 + 68] = mem[_5034 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5034 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4615] = 26
                        mem[_4615 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4667 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4667 + 68] = mem[idx + _4615 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4667 + 68] = mem[_4667 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4667 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4951 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4951] = 26
                            mem[_4951 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5031 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5031 + 68] = mem[idx + _4951 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5031 + 68] = mem[_5031 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5031 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5030 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5030] = 26
                        mem[_5030 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5124 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5124 + 68] = mem[idx + _5030 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5124 + 68] = mem[_5124 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5124 + -mem[64] + 100
                    if not ext_call.return_data[96]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _4595 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4595] = 26
                            mem[_4595 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4642 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4642 + 68] = mem[idx + _4595 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4642 + 68] = mem[_4642 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4642 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4927 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4927] = 26
                                mem[_4927 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4990 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4990 + 68] = mem[idx + _4927 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4990 + 68] = mem[_4990 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4990 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4989 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4989] = 26
                            mem[_4989 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5081 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5081 + 68] = mem[idx + _4989 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5081 + 68] = mem[_5081 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5081 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4641] = 26
                        mem[_4641 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4700 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4700 + 68] = mem[idx + _4641 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4700 + 68] = mem[_4700 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4700 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4988 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4988] = 26
                            mem[_4988 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5078 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5078 + 68] = mem[idx + _4988 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5078 + 68] = mem[_5078 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5078 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5077] = 26
                        mem[_5077 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5176 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5176 + 68] = mem[idx + _5077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5176 + 68] = mem[_5176 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5176 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                            if not ext_call.return_data[32]:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                _5182 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5182] = 26
                                mem[_5182 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _5278 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5278 + 68] = mem[idx + _5182 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5278 + 68] = mem[_5278 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5278 + -mem[64] + 100
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _5752 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5752] = 26
                                    mem[_5752 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _5809 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5809 + 68] = mem[idx + _5752 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5809 + 68] = mem[_5809 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5809 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _5808 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5808] = 26
                                mem[_5808 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5897 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5897 + 68] = mem[idx + _5808 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5897 + 68] = mem[_5897 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5897 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5277 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5277] = 26
                            mem[_5277 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5379 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5379 + 68] = mem[idx + _5277 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5379 + 68] = mem[_5379 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5379 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5807 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5807] = 26
                                mem[_5807 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5894 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5894 + 68] = mem[idx + _5807 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5894 + 68] = mem[_5894 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5894 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5893] = 26
                            mem[_5893 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6017 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6017 + 68] = mem[idx + _5893 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6017 + 68] = mem[_6017 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6017 + -mem[64] + 100
                        if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5276] = 26
                            mem[_5276 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5376 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5376 + 68] = mem[idx + _5276 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5376 + 68] = mem[_5376 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5376 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5806 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5806] = 26
                                mem[_5806 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5890 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5890 + 68] = mem[idx + _5806 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5890 + 68] = mem[_5890 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5890 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5889 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5889] = 26
                            mem[_5889 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6013 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6013 + 68] = mem[idx + _5889 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6013 + 68] = mem[_6013 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6013 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5375 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5375] = 26
                        mem[_5375 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5466 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5466 + 68] = mem[idx + _5375 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5466 + 68] = mem[_5466 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5466 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5888 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5888] = 26
                            mem[_5888 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6010 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6010 + 68] = mem[idx + _5888 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6010 + 68] = mem[_6010 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6010 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _6009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6009] = 26
                        mem[_6009 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6146 + 68] = mem[idx + _6009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6146 + 68] = mem[_6146 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6146 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5275] = 26
                            mem[_5275 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5372 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5372 + 68] = mem[idx + _5275 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5372 + 68] = mem[_5372 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5372 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5805 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5805] = 26
                                mem[_5805 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5885 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5885 + 68] = mem[idx + _5805 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5885 + 68] = mem[_5885 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5885 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5884 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5884] = 26
                            mem[_5884 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6005 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6005 + 68] = mem[idx + _5884 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6005 + 68] = mem[_6005 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6005 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5371] = 26
                        mem[_5371 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5462 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5462 + 68] = mem[idx + _5371 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5462 + 68] = mem[_5462 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5462 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5883 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5883] = 26
                            mem[_5883 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _6002 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6002 + 68] = mem[idx + _5883 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6002 + 68] = mem[_6002 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6002 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _6001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6001] = 26
                        mem[_6001 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6140 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6140 + 68] = mem[idx + _6001 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6140 + 68] = mem[_6140 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6140 + -mem[64] + 100
                    if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5370] = 26
                        mem[_5370 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5459 + 68] = mem[idx + _5370 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5459 + 68] = mem[_5459 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5459 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5882] = 26
                            mem[_5882 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5998 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5998 + 68] = mem[idx + _5882 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5998 + 68] = mem[_5998 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5998 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5997 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5997] = 26
                        mem[_5997 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6136 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6136 + 68] = mem[idx + _5997 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6136 + 68] = mem[_6136 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6136 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5458] = 26
                    mem[_5458 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5532 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5532 + 68] = mem[idx + _5458 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5532 + 68] = mem[_5532 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5532 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5996] = 26
                        mem[_5996 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6133 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6133 + 68] = mem[idx + _5996 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6133 + 68] = mem[_6133 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6133 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6132] = 26
                    mem[_6132 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6264 + 68] = mem[idx + _6132 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6264 + 68] = mem[_6264 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6264 + -mem[64] + 100
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                require ext_code.size(address(coreAddress))
                staticcall address(coreAddress).0x5fc526ff with:
                        gas gas_remaining wei
                       args address(mem[768])
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                mem[704] = bool(ext_call.return_data[96])
                mem[640] = ext_call.return_data[64]
                mem[608] = ext_call.return_data[32]
                mem[576] = ext_call.return_data[0]
                mem[480] = 10^ext_call.return_data[0]
                _4349 = mem[768]
                mem[mem[64] + 4] = mem[780 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_4349)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[448] = ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _4389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4389] = 26
                        mem[_4389 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4403 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4403 + 68] = mem[idx + _4389 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4403 + 68] = mem[_4403 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4403 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4521 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4521] = 26
                            mem[_4521 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _4547 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4547 + 68] = mem[idx + _4521 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4547 + 68] = mem[_4547 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4547 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4546] = 26
                        mem[_4546 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _4582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4582 + 68] = mem[idx + _4546 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4582 + 68] = mem[_4582 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4582 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4402] = 26
                    mem[_4402 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4420 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4420 + 68] = mem[idx + _4402 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4420 + 68] = mem[_4420 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4420 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _4545 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4545] = 26
                        mem[_4545 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _4579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4579 + 68] = mem[idx + _4545 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4579 + 68] = mem[_4579 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4579 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4578] = 26
                    mem[_4578 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _4625 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4625 + 68] = mem[idx + _4578 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4625 + 68] = mem[_4625 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4625 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    _4384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4384] = 26
                    mem[_4384 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4395 + 68] = mem[idx + _4384 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4395 + 68] = mem[_4395 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4395 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[96]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _4564 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4564] = 26
                            mem[_4564 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4606 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4606 + 68] = mem[idx + _4564 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4606 + 68] = mem[_4606 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4606 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4899 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4899] = 26
                                mem[_4899 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4943 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4943 + 68] = mem[idx + _4899 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4943 + 68] = mem[_4943 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4943 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4942 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4942] = 26
                            mem[_4942 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5020 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5020 + 68] = mem[idx + _4942 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5020 + 68] = mem[_5020 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5020 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4605 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4605] = 26
                        mem[_4605 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4661 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4661 + 68] = mem[idx + _4605 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4661 + 68] = mem[_4661 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4661 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4941] = 26
                            mem[_4941 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5017 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5017 + 68] = mem[idx + _4941 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5017 + 68] = mem[_5017 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5017 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5016] = 26
                        mem[_5016 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5111 + 68] = mem[idx + _5016 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5111 + 68] = mem[_5111 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5111 + -mem[64] + 100
                    if not ext_call.return_data[96]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _4588 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4588] = 26
                            mem[_4588 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _4633 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4633 + 68] = mem[idx + _4588 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4633 + 68] = mem[_4633 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4633 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _4921 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4921] = 26
                                mem[_4921 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _4983 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4983 + 68] = mem[idx + _4921 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4983 + 68] = mem[_4983 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4983 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _4982 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4982] = 26
                            mem[_4982 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5070 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5070 + 68] = mem[idx + _4982 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5070 + 68] = mem[_5070 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5070 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _4632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4632] = 26
                        mem[_4632 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4689 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4689 + 68] = mem[idx + _4632 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4689 + 68] = mem[_4689 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4689 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4981] = 26
                            mem[_4981 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5067 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5067 + 68] = mem[idx + _4981 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5067 + 68] = mem[_5067 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5067 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5066 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5066] = 26
                        mem[_5066 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5165 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5165 + 68] = mem[idx + _5066 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5165 + 68] = mem[_5165 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5165 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / 10^ext_call.return_data[0]:
                        if not 0 / 10^ext_call.return_data[0]:
                            if not ext_call.return_data[32]:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                _5171 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5171] = 26
                                mem[_5171 + 32] = 'SafeMath: division by zero' << 48
                                if not 10^ext_call.return_data[0]:
                                    _5265 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5265 + 68] = mem[idx + _5171 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5265 + 68] = mem[_5265 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5265 + -mem[64] + 100
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[64]:
                                    _5751 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5751] = 26
                                    mem[_5751 + 32] = 'SafeMath: division by zero' << 48
                                    if 10^ext_call.return_data[0]:
                                        if 0 / 10^ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    _5802 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5802 + 68] = mem[idx + _5751 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5802 + 68] = mem[_5802 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _5802 + -mem[64] + 100
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                _5801 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5801] = 26
                                mem[_5801 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5878 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5878 + 68] = mem[idx + _5801 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5878 + 68] = mem[_5878 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5878 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5264] = 26
                            mem[_5264 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5361 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5361 + 68] = mem[idx + _5264 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5361 + 68] = mem[_5361 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5361 + -mem[64] + 100
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5800 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5800] = 26
                                mem[_5800 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5875 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5875 + 68] = mem[idx + _5800 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5875 + 68] = mem[_5875 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5875 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5874 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5874] = 26
                            mem[_5874 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5990 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5990 + 68] = mem[idx + _5874 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5990 + 68] = mem[_5990 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5990 + -mem[64] + 100
                        if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5263] = 26
                            mem[_5263 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5358 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5358 + 68] = mem[idx + _5263 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5358 + 68] = mem[_5358 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5358 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5799 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5799] = 26
                                mem[_5799 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5871 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5871 + 68] = mem[idx + _5799 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5871 + 68] = mem[_5871 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5871 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5870] = 26
                            mem[_5870 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5986 + 68] = mem[idx + _5870 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5986 + 68] = mem[_5986 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5986 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5357] = 26
                        mem[_5357 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5450 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5450 + 68] = mem[idx + _5357 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5450 + 68] = mem[_5450 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5450 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5869 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5869] = 26
                            mem[_5869 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5983 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5983 + 68] = mem[idx + _5869 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5983 + 68] = mem[_5983 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5983 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5982 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5982] = 26
                        mem[_5982 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6121 + 68] = mem[idx + _5982 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6121 + 68] = mem[_6121 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6121 + -mem[64] + 100
                    if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[32] * 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / 10^ext_call.return_data[0]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5262 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5262] = 26
                            mem[_5262 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5354 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5354 + 68] = mem[idx + _5262 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5354 + 68] = mem[_5354 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5354 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5798 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5798] = 26
                                mem[_5798 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5866 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5866 + 68] = mem[idx + _5798 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5866 + 68] = mem[_5866 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5866 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5865 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5865] = 26
                            mem[_5865 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5978 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5978 + 68] = mem[idx + _5865 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5978 + 68] = mem[_5978 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5978 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5353] = 26
                        mem[_5353 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5446 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5446 + 68] = mem[idx + _5353 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5446 + 68] = mem[_5446 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5446 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5864 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5864] = 26
                            mem[_5864 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5975 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5975 + 68] = mem[idx + _5864 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5975 + 68] = mem[_5975 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5975 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5974] = 26
                        mem[_5974 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6115 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6115 + 68] = mem[idx + _5974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6115 + 68] = mem[_6115 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6115 + -mem[64] + 100
                    if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] / 0 / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[64] * 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5352] = 26
                        mem[_5352 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5443 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5443 + 68] = mem[idx + _5352 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5443 + 68] = mem[_5443 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5443 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5863 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5863] = 26
                            mem[_5863 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5971 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5971 + 68] = mem[idx + _5863 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5971 + 68] = mem[_5971 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5971 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5970] = 26
                        mem[_5970 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6111 + 68] = mem[idx + _5970 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6111 + 68] = mem[_6111 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6111 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5442] = 26
                    mem[_5442 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5521 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5521 + 68] = mem[idx + _5442 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5521 + 68] = mem[_5521 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5521 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5969 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5969] = 26
                        mem[_5969 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6108 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6108 + 68] = mem[idx + _5969 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6108 + 68] = mem[_6108 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6108 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6107] = 26
                    mem[_6107 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6243 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6243 + 68] = mem[idx + _6107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6243 + 68] = mem[_6243 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6243 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _4394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4394] = 26
                mem[_4394 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _4412 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4412 + 68] = mem[idx + _4394 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4412 + 68] = mem[_4412 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4412 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[96]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _4602 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4602] = 26
                        mem[_4602 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4656 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4656 + 68] = mem[idx + _4602 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4656 + 68] = mem[_4656 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4656 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4938] = 26
                            mem[_4938 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5008 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5008 + 68] = mem[idx + _4938 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5008 + 68] = mem[_5008 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5008 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5007] = 26
                        mem[_5007 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5101 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5101 + 68] = mem[idx + _5007 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5101 + 68] = mem[_5101 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5101 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4655] = 26
                    mem[_4655 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4710 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4710 + 68] = mem[idx + _4655 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4710 + 68] = mem[_4710 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4710 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5006 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5006] = 26
                        mem[_5006 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5098 + 68] = mem[idx + _5006 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5098 + 68] = mem[_5098 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5098 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5097] = 26
                    mem[_5097 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5196 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5196 + 68] = mem[idx + _5097 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5196 + 68] = mem[_5196 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5196 + -mem[64] + 100
                if not ext_call.return_data[96]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _4631 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4631] = 26
                        mem[_4631 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _4684 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4684 + 68] = mem[idx + _4631 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4684 + 68] = mem[_4684 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _4684 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _4977 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4977] = 26
                            mem[_4977 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5059 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5059 + 68] = mem[idx + _4977 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5059 + 68] = mem[_5059 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5059 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5058 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5058] = 26
                        mem[_5058 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5156 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5156 + 68] = mem[idx + _5058 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5156 + 68] = mem[_5156 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5156 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _4683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4683] = 26
                    mem[_4683 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _4741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4741 + 68] = mem[idx + _4683 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4741 + 68] = mem[_4741 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4741 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5057] = 26
                        mem[_5057 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _5153 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5153 + 68] = mem[idx + _5057 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5153 + 68] = mem[_5153 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5153 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5152] = 26
                    mem[_5152 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _5248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5248 + 68] = mem[idx + _5152 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5248 + 68] = mem[_5248 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5248 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                        if not ext_call.return_data[32]:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[0]:
                            _5254 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5254] = 26
                            mem[_5254 + 32] = 'SafeMath: division by zero' << 48
                            if not 10^ext_call.return_data[0]:
                                _5344 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5344 + 68] = mem[idx + _5254 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5344 + 68] = mem[_5344 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5344 + -mem[64] + 100
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[64]:
                                _5797 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5797] = 26
                                mem[_5797 + 32] = 'SafeMath: division by zero' << 48
                                if 10^ext_call.return_data[0]:
                                    if 0 / 10^ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                _5860 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5860 + 68] = mem[idx + _5797 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5860 + 68] = mem[_5860 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _5860 + -mem[64] + 100
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            _5859 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5859] = 26
                            mem[_5859 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5965 + 68] = mem[idx + _5859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5965 + 68] = mem[_5965 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5965 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5343] = 26
                        mem[_5343 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5436 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5436 + 68] = mem[idx + _5343 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5436 + 68] = mem[_5436 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5436 + -mem[64] + 100
                        if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5858 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5858] = 26
                            mem[_5858 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5962 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5962 + 68] = mem[idx + _5858 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5962 + 68] = mem[_5962 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5962 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5961] = 26
                        mem[_5961 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6101 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6101 + 68] = mem[idx + _5961 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6101 + 68] = mem[_6101 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6101 + -mem[64] + 100
                    if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5342] = 26
                        mem[_5342 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5433 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5433 + 68] = mem[idx + _5342 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5433 + 68] = mem[_5433 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5433 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5857 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5857] = 26
                            mem[_5857 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5958 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5958 + 68] = mem[idx + _5857 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5958 + 68] = mem[_5958 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5958 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5957] = 26
                        mem[_5957 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6097 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6097 + 68] = mem[idx + _5957 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6097 + 68] = mem[_6097 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6097 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5432] = 26
                    mem[_5432 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5515 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5515 + 68] = mem[idx + _5432 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5515 + 68] = mem[_5515 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5515 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5956] = 26
                        mem[_5956 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6094 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6094 + 68] = mem[idx + _5956 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6094 + 68] = mem[_6094 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6094 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6093 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6093] = 26
                    mem[_6093 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6232 + 68] = mem[idx + _6093 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6232 + 68] = mem[_6232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6232 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
                    if not ext_call.return_data[32]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        _5341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5341] = 26
                        mem[_5341 + 32] = 'SafeMath: division by zero' << 48
                        if not 10^ext_call.return_data[0]:
                            _5429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5429 + 68] = mem[idx + _5341 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5429 + 68] = mem[_5429 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5429 + -mem[64] + 100
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[64]:
                            _5856 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5856] = 26
                            mem[_5856 + 32] = 'SafeMath: division by zero' << 48
                            if 10^ext_call.return_data[0]:
                                if 0 / 10^ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            _5953 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5953 + 68] = mem[idx + _5856 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5953 + 68] = mem[_5953 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _5953 + -mem[64] + 100
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        _5952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5952] = 26
                        mem[_5952 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6089 + 68] = mem[idx + _5952 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6089 + 68] = mem[_6089 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6089 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _5428 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5428] = 26
                    mem[_5428 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5511 + 68] = mem[idx + _5428 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5511 + 68] = mem[_5511 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5511 + -mem[64] + 100
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5951] = 26
                        mem[_5951 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6086 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6086 + 68] = mem[idx + _5951 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6086 + 68] = mem[_6086 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6086 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6085 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6085] = 26
                    mem[_6085 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6226 + 68] = mem[idx + _6085 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6226 + 68] = mem[_6226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6226 + -mem[64] + 100
                if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    _5427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5427] = 26
                    mem[_5427 + 32] = 'SafeMath: division by zero' << 48
                    if not 10^ext_call.return_data[0]:
                        _5508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5508 + 68] = mem[idx + _5427 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5508 + 68] = mem[_5508 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5508 + -mem[64] + 100
                    if 0 / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[64]:
                        _5950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5950] = 26
                        mem[_5950 + 32] = 'SafeMath: division by zero' << 48
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _6082 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6082 + 68] = mem[idx + _5950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6082 + 68] = mem[_6082 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6082 + -mem[64] + 100
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    _6081 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6081] = 26
                    mem[_6081 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6222 + 68] = mem[idx + _6081 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6222 + 68] = mem[_6222 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6222 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _5507 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5507] = 26
                mem[_5507 + 32] = 'SafeMath: division by zero' << 48
                if not 10^ext_call.return_data[0]:
                    _5576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5576 + 68] = mem[idx + _5507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5576 + 68] = mem[_5576 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5576 + -mem[64] + 100
                if ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[64]:
                    _6080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6080] = 26
                    mem[_6080 + 32] = 'SafeMath: division by zero' << 48
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _6219 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6219 + 68] = mem[idx + _6080 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6219 + 68] = mem[_6219 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6219 + -mem[64] + 100
                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                _6218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6218] = 26
                mem[_6218 + 32] = 'SafeMath: division by zero' << 48
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[64] / 10^ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _6332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6332 + 68] = mem[idx + _6218 + 32]
                    idx = idx + 32
                    continue 
                mem[_6332 + 68] = mem[_6332 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6332 + -mem[64] + 100
    return 1
}



}
