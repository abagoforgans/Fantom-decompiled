contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_30db6d50(?)
#  - withdraw(bool arg1, address arg2, address arg3, uint256 arg4)
#
const UniswapV2Router = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const sub_1f560cf9(?) = 0x9fad24f572045c7869117160a571b2e50b10d0

const sub_2052f4b8(?) = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const sub_30592361(?) = 0x92d5ebf3593a92888c25c0abef126583d4b5312e

const getBlockNumber = block.number

const sub_7b4370b3(?) = 0xef45d134b73241eda7703fa787148d9c9f4950b0

const factory = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3

const sub_d3a86817(?) = 5000

const USDC = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const WETH = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const HEALTH_FACTOR_LIQUIDATION_THRESHOLD = 10^18

const USDT = 0x49d68029688eabf473097a2fc38ef61633a3c7a

const DAI = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e


uint32 stor0;
address owner;
uint256 stor0;
mapping of uint256 stor1;

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == address(owner))
}

function coinIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ('signextend', 15, ('signextend', 15, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))))
}

function getLatestTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.latestTimestamp() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function sub_e5977729(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return 0
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '', 0
    return ((10000 * ext_call.return_data[0]) + 5000 / 10000)
}

function sub_66467395(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require arg4.length
    _3 = mem[128]
    require 2 < arg4.length
    _5 = mem[192]
    mem[(32 * arg4.length) + 512] = 0
    mem[(32 * arg4.length) + 128] = (32 * arg4.length) + 512
    mem[(32 * arg4.length) + 160] = 0
    mem[(32 * arg4.length) + 192] = 0
    mem[(32 * arg4.length) + 224] = 0
    mem[(32 * arg4.length) + 256] = 0
    mem[(32 * arg4.length) + 288] = 0
    mem[(32 * arg4.length) + 320] = 0
    mem[(32 * arg4.length) + 352] = 0
    mem[(32 * arg4.length) + 384] = 0
    mem[(32 * arg4.length) + 416] = 0
    mem[(32 * arg4.length) + 448] = 0
    mem[(32 * arg4.length) + 480] = 0
    require ext_code.size(0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(_5)
    mem[(32 * arg4.length) + 544 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((32 * arg4.length) + ceil32(return_data.size) + 928 <= test266151307())
    require return_data.size >= 32
    require bool((32 * arg4.length) + ceil32(return_data.size) + 960 <= test266151307())
    mem[(32 * arg4.length) + ceil32(return_data.size) + 928] = ext_call.return_data[0]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 544] = (32 * arg4.length) + ceil32(return_data.size) + 928
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 576] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 608] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 640] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 672] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 704] = ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 736] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 768] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 800] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 832] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 864] = ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 896] = ext_call.return_data[352]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 964] = address(_3)
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).0x70a08231 with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + ceil32(return_data.size) + 960] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 964] = address(_3)
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if 0 < arg1:
        require 0 < arg4.length
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d0)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d0.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 960 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] >= 10^18:
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 960] = arg5.length
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 992 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 996] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1028] = address(arg2)
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1216
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 992] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1024] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1088] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1152] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 960
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1280] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1344] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1376] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1408] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1504] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1536
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1440] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1472] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1536] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1568
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1568] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1572] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1604] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = this.address
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 128
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = (96 * arg4.length) + (32 * arg5.length) + 320
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
            mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2052] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.hash(address(arg2)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 28]
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 0
        call address(arg2).mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672 len 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1704] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1704] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668
               len (127 * arg4.length) + 132
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1673] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1705] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700])
        if mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1673] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1705] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669
           len (127 * arg4.length) + 132
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 960] = 2
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 992] = 0x3438000000000000000000000000000000000000000000000000000000000000
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '', 0
    if (10000 * ext_call.return_data[0]) + 5000 / 10000 < arg1:
    require 0 < arg4.length
    require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0x9fad24f572045c7869117160a571b2e50b10d0.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args mem[140 len 20]
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 1024 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] >= 10^18:
    mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024] = arg5.length
    mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1060] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1092] = address(arg2)
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1280
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1088] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1152] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] = 96
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1216] = (10000 * ext_call.return_data[0]) + 5000 / 10000
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312] = 32
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1344] = 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1376] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1408] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1440] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1472] = 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1568] = arg4.length
    idx = 0
    s = 128
    t = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1600
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1504] = (10000 * ext_call.return_data[0]) + 5000 / 10000
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1536] = (32 * arg4.length) + 256
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1600] = arg5.length
    idx = 0
    s = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] + 32
    t = (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1632
    while idx < arg5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1632] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if address(arg3) == address(ext_call.return_data[0]):
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        if address(arg3) == ext_call.return_data[12 len 20]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (10000 * ext_call.return_data[0]) + 5000 / 10000, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), Array(len=(96 * arg4.length) + (32 * arg5.length) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10])
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (10000 * ext_call.return_data[0]) + 5000 / 10000, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    else:
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = 0
        if address(arg3) == ext_call.return_data[12 len 20]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(address(arg2)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 28]
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 0
    call address(arg2).mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736 len 64]
    if not return_data.size:
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732
               len (127 * arg4.length) + 100
        if not arg4.length:
        require arg4.length >= 32
        require mem[128] == bool(mem[128])
        if mem[128]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1832] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732
           len (127 * arg4.length) + 132
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: low-level call failed'
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
           len (127 * arg4.length) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764])
    if mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764]:
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 42
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: ERC20 operation did n'
    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
       len (127 * arg4.length) + 132
}

function sub_6601025f(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require arg4.length
    _3 = mem[128]
    require 2 < arg4.length
    _5 = mem[192]
    mem[(32 * arg4.length) + 512] = 0
    mem[(32 * arg4.length) + 128] = (32 * arg4.length) + 512
    mem[(32 * arg4.length) + 160] = 0
    mem[(32 * arg4.length) + 192] = 0
    mem[(32 * arg4.length) + 224] = 0
    mem[(32 * arg4.length) + 256] = 0
    mem[(32 * arg4.length) + 288] = 0
    mem[(32 * arg4.length) + 320] = 0
    mem[(32 * arg4.length) + 352] = 0
    mem[(32 * arg4.length) + 384] = 0
    mem[(32 * arg4.length) + 416] = 0
    mem[(32 * arg4.length) + 448] = 0
    mem[(32 * arg4.length) + 480] = 0
    require ext_code.size(0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(_5)
    mem[(32 * arg4.length) + 544 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((32 * arg4.length) + ceil32(return_data.size) + 928 <= test266151307())
    require return_data.size >= 32
    require bool((32 * arg4.length) + ceil32(return_data.size) + 960 <= test266151307())
    mem[(32 * arg4.length) + ceil32(return_data.size) + 928] = ext_call.return_data[0]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 544] = (32 * arg4.length) + ceil32(return_data.size) + 928
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 576] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 608] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 640] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 672] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 704] = ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 736] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 768] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 800] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 832] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 864] = ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 896] = ext_call.return_data[352]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 964] = address(_3)
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).0x70a08231 with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + ceil32(return_data.size) + 960] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 964] = address(_3)
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if 0 < arg1:
        require 0 < arg4.length
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d0)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d0.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 960 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] >= 10^18:
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 960] = arg5.length
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 992 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        require 2 < arg4.length
        if mem[204 len 20] == address(arg3):
            mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 996] = address(arg3)
            mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1028] = address(arg2)
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[64] = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1216
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 992] = 1
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1024] = address(arg2)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = address(arg3)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1088] = address(ext_call.return_data[0])
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = 96
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1152] = 0
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 960
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] = 32
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1280] = 1
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312] = address(arg2)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1344] = address(arg3)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1376] = address(ext_call.return_data[0])
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1408] = 224
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1504] = arg4.length
            idx = 0
            s = 128
            t = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1536
            while idx < arg4.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1440] = 0
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1472] = (32 * arg4.length) + 256
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1536] = arg5.length
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1568
            while idx < arg5.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1568] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1572] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1604] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2052] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.hash(address(arg2)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 28]
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 0
            call address(arg2).mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672 len 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672] = 32
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1704] = 32
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1704] = 42
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 'SafeERC20: ERC20 operation did n'
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668
                   len (127 * arg4.length) + 132
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1673] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1705] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700])
            if mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1673] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1705] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669
               len (127 * arg4.length) + 132
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require 2 < arg4.length
        require ext_code.size(mem[204 len 20])
        staticcall mem[204 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 992] = 30
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1024] = 'SafeMath: subtraction overflow'
        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1060] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1092] = address(arg2)
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1280
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1056] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1088] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1120] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1152] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1184] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1216] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1248] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 960
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1344] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1408] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1440] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1472] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1568] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1600
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1504] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1536] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1600] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1248] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1632
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1632] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1636] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1668] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1700] = this.address
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = 128
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
            mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2116] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.hash(address(arg2)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732 len 28]
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 0
        call address(arg2).mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1736 len 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1736] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1768] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1736] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1768] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1832] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732
               len (127 * arg4.length) + 132
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764])
        if mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
           len (127 * arg4.length) + 132
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 960] = 2
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 992] = 0x3438000000000000000000000000000000000000000000000000000000000000
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '', 0
    if (10000 * ext_call.return_data[0]) + 5000 / 10000 < arg1:
    require 0 < arg4.length
    require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0x9fad24f572045c7869117160a571b2e50b10d0.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args mem[140 len 20]
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 1024 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] >= 10^18:
    mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024] = arg5.length
    mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require 2 < arg4.length
    if mem[204 len 20] == address(arg3):
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1060] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1092] = address(arg2)
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1280
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1088] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1152] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1216] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1344] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1376] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1408] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1440] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1472] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1568] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1600
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1504] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1536] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1600] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1632
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1632] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if address(arg3) == address(ext_call.return_data[0]):
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            if address(arg3) == ext_call.return_data[12 len 20]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = (10000 * ext_call.return_data[0]) + 5000 / 10000
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * ext_call.return_data[0]) + 5000 / 10000, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), Array(len=(96 * arg4.length) + (32 * arg5.length) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10])
            else:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 0
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * ext_call.return_data[0]) + 5000 / 10000, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = 0
            if address(arg3) == ext_call.return_data[12 len 20]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = (10000 * ext_call.return_data[0]) + 5000 / 10000
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            else:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 0
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.hash(address(arg2)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 28]
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 0
        call address(arg2).mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736 len 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1832] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732
               len (127 * arg4.length) + 132
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764])
        if mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
           len (127 * arg4.length) + 132
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require 2 < arg4.length
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = 30
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1088] = 'SafeMath: subtraction overflow'
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1124] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1156] = address(arg2)
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1344
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1120] = 1
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1152] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1184] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1216] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1248] = 96
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1280] = (10000 * ext_call.return_data[0]) + 5000 / 10000
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376] = 32
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1408] = 1
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1440] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1472] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1504] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1536] = 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1632] = arg4.length
    idx = 0
    s = 128
    t = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1664
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1568] = (10000 * ext_call.return_data[0]) + 5000 / 10000
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1600] = (32 * arg4.length) + 256
    mem[(32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1664] = arg5.length
    idx = 0
    s = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312] + 32
    t = (32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1696
    while idx < arg5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1696] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if address(arg3) == address(ext_call.return_data[0]):
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1700] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        if address(arg3) == ext_call.return_data[12 len 20]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (10000 * ext_call.return_data[0]) + 5000 / 10000, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), Array(len=(96 * arg4.length) + (32 * arg5.length) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10])
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (10000 * ext_call.return_data[0]) + 5000 / 10000, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    else:
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1700] = 0
        if address(arg3) == ext_call.return_data[12 len 20]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(address(arg2)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796 len 28]
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1864] = 0
    call address(arg2).mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800 len 64]
    if not return_data.size:
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1832] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1864] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796
               len (127 * arg4.length) + 100
        if not arg4.length:
        require arg4.length >= 32
        require mem[128] == bool(mem[128])
        if mem[128]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1832] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1864] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1896] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796
           len (127 * arg4.length) + 132
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1865] = 'SafeERC20: low-level call failed'
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797
           len (127 * arg4.length) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828])
    if mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828]:
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 32
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 42
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1865] = 'SafeERC20: ERC20 operation did n'
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1897] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797
       len (127 * arg4.length) + 132
}

function sub_a4ea0a5b(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require arg4.length
    _3 = mem[128]
    require 2 < arg4.length
    _5 = mem[192]
    mem[(32 * arg4.length) + 512] = 0
    mem[(32 * arg4.length) + 128] = (32 * arg4.length) + 512
    mem[(32 * arg4.length) + 160] = 0
    mem[(32 * arg4.length) + 192] = 0
    mem[(32 * arg4.length) + 224] = 0
    mem[(32 * arg4.length) + 256] = 0
    mem[(32 * arg4.length) + 288] = 0
    mem[(32 * arg4.length) + 320] = 0
    mem[(32 * arg4.length) + 352] = 0
    mem[(32 * arg4.length) + 384] = 0
    mem[(32 * arg4.length) + 416] = 0
    mem[(32 * arg4.length) + 448] = 0
    mem[(32 * arg4.length) + 480] = 0
    require ext_code.size(0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0xfe0000000000000000000000009fad24f572045c7869117160a571b2e50b10d0.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(_5)
    mem[(32 * arg4.length) + 544 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((32 * arg4.length) + ceil32(return_data.size) + 928 <= test266151307())
    require return_data.size >= 32
    require bool((32 * arg4.length) + ceil32(return_data.size) + 960 <= test266151307())
    mem[(32 * arg4.length) + ceil32(return_data.size) + 928] = ext_call.return_data[0]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 544] = (32 * arg4.length) + ceil32(return_data.size) + 928
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 576] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 608] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 640] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 672] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 704] = ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 736] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 768] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 800] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 832] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 864] = ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 896] = ext_call.return_data[352]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 964] = address(_3)
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).0x70a08231 with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + ceil32(return_data.size) + 960] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 964] = address(_3)
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if 0 < arg1:
        require 0 < arg4.length
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d0)
        staticcall 0x9fad24f572045c7869117160a571b2e50b10d0.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 960 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] >= 10^18:
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 960] = arg5.length
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 992 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        require 2 < arg4.length
        if mem[204 len 20] == address(arg3):
            mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 996] = address(arg3)
            mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1028] = address(arg2)
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[64] = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1216
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 992] = 2
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1024] = address(arg2)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = address(arg3)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1088] = address(ext_call.return_data[0])
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = 96
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1152] = 0
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 960
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] = 32
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1280] = 2
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312] = address(arg2)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1344] = address(arg3)
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1376] = address(ext_call.return_data[0])
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1408] = 224
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1504] = arg4.length
            idx = 0
            s = 128
            t = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1536
            while idx < arg4.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1440] = 0
            mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1472] = (32 * arg4.length) + 256
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1536] = arg5.length
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1568
            while idx < arg5.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1568] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1572] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1604] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2052] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.hash(address(arg3)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 28]
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 0
            call address(arg3).mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672 len 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672] = 32
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1704] = 32
                    mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1672] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1704] = 42
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 'SafeERC20: ERC20 operation did n'
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1668
                   len (127 * arg4.length) + 132
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1673] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1705] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700])
            if mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1700]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1673] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1705] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1669
               len (127 * arg4.length) + 132
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require 2 < arg4.length
        require ext_code.size(mem[204 len 20])
        staticcall mem[204 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 992] = 30
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1024] = 'SafeMath: subtraction overflow'
        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1060] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1092] = address(arg2)
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1280
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1056] = 2
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1088] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1120] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1152] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1184] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1216] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1248] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 960
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1344] = 2
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1408] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1440] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1472] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1568] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1600
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1504] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1536] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1600] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1248] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1632
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1632] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1636] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1668] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1700] = this.address
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = 128
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
            mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2116] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.hash(address(arg3)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732 len 28]
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 0
        call address(arg3).mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1736 len 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1736] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1768] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1736] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1768] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1832] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1732
               len (127 * arg4.length) + 132
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764])
        if mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1764]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
           len (127 * arg4.length) + 132
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 960] = 2
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 992] = 0x3438000000000000000000000000000000000000000000000000000000000000
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '', 0
    if (10000 * ext_call.return_data[0]) + 5000 / 10000 < arg1:
    require 0 < arg4.length
    require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d0)
    staticcall 0x9fad24f572045c7869117160a571b2e50b10d0.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args mem[140 len 20]
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 1024 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] >= 10^18:
    mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024] = arg5.length
    mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require 2 < arg4.length
    if mem[204 len 20] == address(arg3):
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1060] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1092] = address(arg2)
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1280
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1056] = 2
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1088] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1152] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1184] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1216] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1344] = 2
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1376] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1408] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1440] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1472] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1568] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1600
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1504] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1536] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1600] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1248] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1632
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1632] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if address(arg3) == address(ext_call.return_data[0]):
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            if address(arg3) == ext_call.return_data[12 len 20]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = (10000 * ext_call.return_data[0]) + 5000 / 10000
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * ext_call.return_data[0]) + 5000 / 10000, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), Array(len=(96 * arg4.length) + (32 * arg5.length) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10])
            else:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 0
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * ext_call.return_data[0]) + 5000 / 10000, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1636] = 0
            if address(arg3) == ext_call.return_data[12 len 20]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = (10000 * ext_call.return_data[0]) + 5000 / 10000
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            else:
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1668] = 0
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1700] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1732] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1764] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + 1796 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (10 * ceil32(return_data.size)) + 2116] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1312 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.hash(address(arg3)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 28]
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 0
        call address(arg3).mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736 len 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 32
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1736] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1768] = 42
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1800] = 'SafeERC20: ERC20 operation did n'
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1832] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1732
               len (127 * arg4.length) + 132
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764])
        if mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 1764]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1737] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1769] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 1733
           len (127 * arg4.length) + 132
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require 2 < arg4.length
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1056] = 30
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1088] = 'SafeMath: subtraction overflow'
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1124] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1156] = address(arg2)
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1344
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1120] = 2
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1152] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1184] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1216] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1248] = 96
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1280] = (10000 * ext_call.return_data[0]) + 5000 / 10000
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312] = (32 * arg4.length) + (6 * ceil32(return_data.size)) + 1024
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376] = 32
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1408] = 2
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1440] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1472] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1504] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1536] = 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1632] = arg4.length
    idx = 0
    s = 128
    t = (32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1664
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1568] = (10000 * ext_call.return_data[0]) + 5000 / 10000
    mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1600] = (32 * arg4.length) + 256
    mem[(32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1664] = arg5.length
    idx = 0
    s = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1312] + 32
    t = (32 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1696
    while idx < arg5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1696] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if address(arg3) == address(ext_call.return_data[0]):
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1700] = (10000 * ext_call.return_data[0]) + 5000 / 10000
        if address(arg3) == ext_call.return_data[12 len 20]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (10000 * ext_call.return_data[0]) + 5000 / 10000, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), Array(len=(96 * arg4.length) + (32 * arg5.length) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10])
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (10000 * ext_call.return_data[0]) + 5000 / 10000, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    else:
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1700] = 0
        if address(arg3) == ext_call.return_data[12 len 20]:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = (10000 * ext_call.return_data[0]) + 5000 / 10000
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (10000 * ext_call.return_data[0]) + 5000 / 10000, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1732] = 0
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1764] = this.address
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1796] = 128
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1828] = (96 * arg4.length) + (32 * arg5.length) + 320
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1860 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                mem[(161 * arg4.length) + (98 * arg5.length) + (12 * ceil32(return_data.size)) + 2180] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (12 * ceil32(return_data.size)) + 1376 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(address(arg3)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796 len 28]
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1864] = 0
    call address(arg3).mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800 len 64]
    if not return_data.size:
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1832] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1864] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796
               len (127 * arg4.length) + 100
        if not arg4.length:
        require arg4.length >= 32
        require mem[128] == bool(mem[128])
        if mem[128]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1800] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1832] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1864] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1896] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1796
           len (127 * arg4.length) + 132
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1865] = 'SafeERC20: low-level call failed'
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797
           len (127 * arg4.length) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828])
    if mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + 1828]:
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1801] = 32
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1833] = 42
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1865] = 'SafeERC20: ERC20 operation did n'
    mem[(64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1897] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (64 * arg5.length) + (64 * arg4.length) + (13 * ceil32(return_data.size)) + ceil32(return_data.size) + 1797
       len (127 * arg4.length) + 132
}



}
