contract main {




// =====================  Runtime code  =====================


const sub_05d8aa0a(?) = 2097152

const bancorContractRegistry = 0x52ae12abe5d8bd778bd5397f99ca900624cfadd4

const sub_1388b420(?) = 0x794e6e91555438afc3ccf1c5076a74f42133d08d

const sub_13989140(?) = 8192

const sub_1d209b65(?) = 67108864

const sub_2113240d(?) = 32768

const sub_21899d3a(?) = 274877906944

const sub_21a360f5(?) = 8589934592

const sub_22320c98(?) = 0xa5407eae9ba41422680e2e00537571bcc53efbfd

const sub_27a7fbd5(?) = 17179869184

const sub_2ceb90b8(?) = 549755813888

const sub_2d3b5207(?) = 4294967296

const sub_2e707bd2(?) = 128

const hbtc = 0x316eb71485b0ab14103307bf65a021042c6d380

const usdt = 0xdac17f958d2ee523a2206206994597c13d831e

const sub_34b4dabb(?) = 64

const sub_372a26cb(?) = 0x79a8c46dea5ada233abaffd40f3a0a2b1e5a4f27

const sub_376e55b7(?) = 68719476736

const busd = 0x4fabb145d64652a948d72533023f6e7a623c7c53

const wbtc = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599

const usdc = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const bnt = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const sub_423d03f9(?) = 0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51

const sub_44211d62(?) = 16

const sub_4752c680(?) = 503316480

const sub_4a7101d5(?) = 32

const uniswapV2 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f

const sub_51f1985c(?) = 0xa2b47e3d5c44877cca798226b7b8118f9bfb7a56

const sub_52a701b4(?) = 0x8e870d67f660d95d5be530380d0ec0bd388289e1

const sub_5aa8fb48(?) = 16384

const sub_5ae51b82(?) = 2048

const sub_5c0cb479(?) = 8

const sub_646c4ec4(?) = 1099511627776

const sub_64ec4e5c(?) = 131072

const sub_68e2a014(?) = 1048576

const sub_6cbc4a6e(?) = 524288

const sub_75a8b012(?) = 1024

const tusd = 0x85d4780b73119b644ae5ecd22b376

const sub_76c39726(?) = 137438953472

const sub_792e69d7(?) = 4294967296

const sub_7a88bdbd(?) = 2

const sub_7e09b9c2(?) = 4194304

const aave = 0x398ec7346dcd622edc5ae82352f02be94c62d119

const sub_851954fa(?) = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const uniswapFactory = 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95

const renbtc = 0xeb4c2781e4eba804ce9a9803c67d0893436bb27d

const sub_960d2c19(?) = 0x3ef3f37856bd08eb47e2de7abc4ddd2c19b60f2

const cETH = 0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5

const sub_a2878cb1(?) = 1073741824

const sub_a4792ab3(?) = 0x7079e8517594e5b21d2b9a0d17cb33f5fe2bca70

const sub_b0a7ef29(?) = 4096

const sub_b184a3ae(?) = 0x6364f10b501e868329afbc005b3492902d6c763

const sub_b3bc7844(?) = 17179869184

const chai = 0x6af07097c9eeb7fd685c692751d5c66db49c215

const sub_bf2c5a07(?) = 134217728

const sub_c762a46c(?) = 1

const sub_c77b9de6(?) = 512

const sub_c7f112e4(?) = 2147483648

const susd = 0x57ab1ec28d129707052df4df418d58a2d46d5f51

const sub_c989b667(?) = 8388608

const sub_c9b42c67(?) = 262144

const sub_cc26e9fc(?) = 22

const sub_cd240d75(?) = 0x9726e9314ef1b96e45f40056bed61a088897313e

const sub_ce74b7ac(?) = 33554432

const sub_cede5f6a(?) = 0x52ea46506b9cc5ef470c5bf89f17dc28bb35d85c

const sub_d393c3e9(?) = 65536

const sub_d70a2d1f(?) = 0xf6e2d7f616b67e46d708e4410746e9aab3a4c518

const kyberNetworkProxy = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const sub_dc1536b2(?) = 256

const sub_ddd2f8d0(?) = 8589934592

const sub_df1b4e99(?) = 34359738368

const sub_e0de8f22(?) = 0x93054188d876f558f4a66b2ef1d97d16edf0895b

const sub_e1308b33(?) = 0x1bbe271d15bb64df0bc6cd28df9ff322f2ebd847

const sub_e3558123(?) = 268435456

const sub_e44987b4(?) = 536870912

const shell = 0xa8253a440be331dc4a7395b73948cca6f19dc97d

const dai = 0x6b175474e89094c44da98b954eedeac495271d

const sub_f56e281f(?) = 4

const compound = 0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b

const sub_fa3f110b(?) = 16777216

const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address oneSplitViewAddress;

function oneSplitView() {
    return oneSplitViewAddress
}

function _fallback() payable {
    require msg.sender != tx.origin
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    require ext_code.size(oneSplitViewAddress)
    staticcall oneSplitViewAddress.getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], address(arg1) << 64
    require 0, address(arg2) << 64 <= 4294967296
    require 0, address(arg2) << 64 + 32 <= return_data.size
    require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
    _8 = mem[0, address(arg2) << 64 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
    mem[(32 * _8) + ceil32(return_data.size) + 128] = _4
    mem[(32 * _8) + ceil32(return_data.size) + 160] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _4, 64, mem[(32 * _8) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256[] arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg1 != arg2:
        mem[(32 * arg5.length) + 128] = 20619
        s = (32 * arg5.length) + 128
        idx = 22
        while idx - 1:
            mem[s + 32] = 20619
            s = s + 32
            idx = idx - 1
            continue 
        mem[(32 * arg5.length) + 832] = 5424
        mem[(32 * arg5.length) + 864] = 6065
        mem[(32 * arg5.length) + 896] = 6460
        mem[(32 * arg5.length) + 928] = 7265
        mem[(32 * arg5.length) + 960] = 7994
        mem[(32 * arg5.length) + 992] = 8389
        mem[(32 * arg5.length) + 1024] = 8842
        mem[(32 * arg5.length) + 1056] = 9379
        mem[(32 * arg5.length) + 1088] = 9926
        mem[(32 * arg5.length) + 1120] = 10473
        mem[(32 * arg5.length) + 1152] = 10887
        mem[(32 * arg5.length) + 1184] = 11315
        mem[(32 * arg5.length) + 1216] = 11799
        mem[(32 * arg5.length) + 1248] = 12127
        mem[(32 * arg5.length) + 1280] = 12140
        mem[(32 * arg5.length) + 1312] = 12174
        mem[(32 * arg5.length) + 1344] = 12202
        mem[(32 * arg5.length) + 1376] = 12230
        mem[(32 * arg5.length) + 1408] = 12777
        mem[(32 * arg5.length) + 1440] = 13163
        mem[(32 * arg5.length) + 1472] = 13652
        mem[(32 * arg5.length) + 1504] = 13821
        if arg5.length > 22:
            revert with 0, 
                        32,
                        66,
                        0x654f6e6553706c69743a20446973747269627574696f6e2061727261792073686f756c64206e6f74206578636565642072657365727665732061727261792073697a,
                        mem[(32 * arg5.length) + 1670 len 30]
        idx = 0
        s = 0
        while idx < arg5.length:
            require idx < arg5.length
            if mem[(32 * idx) + 128] <= 0:
                idx = idx + 1
                s = s
                continue 
            require idx < arg5.length
            if mem[(32 * idx) + 128] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if s <= 0:
            revert with 0, 
                        32,
                        47,
                        0xf4f6e6553706c69743a20646973747269627574696f6e2073686f756c6420636f6e7461696e206e6f6e2d7a65726f,
                        mem[(32 * arg5.length) + 1651 len 17]
        idx = 0
        while idx < arg5.length:
            require idx < arg5.length
            if 0 == mem[(32 * idx) + 128]:
                idx = idx + 1
                continue 
            require idx < arg5.length
            if arg3:
                if mem[(32 * idx) + 128] * arg3 / arg3 != mem[(32 * idx) + 128]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 1637 len 31]
            mem[(32 * arg5.length) + 1536] = 26
            mem[(32 * arg5.length) + 1568] = 'SafeMath: division by zero'
            if s:
                require idx < 22
                ...  # unusual jump ('remco jump', ('mem', ('range', ('add', 860, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg5'))))), 4))), couldn't decompile, sorry
            mem[(32 * arg5.length) + 1600] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + 1604] = 32
            idx = 0
            while idx < 26:
                mem[idx + (32 * arg5.length) + 1668] = mem[idx + (32 * arg5.length) + 1568]
                idx = idx + 32
                continue 
            mem[(32 * arg5.length) + 1668] = mem[(32 * arg5.length) + 1674 len 26]
            revert with 0, 32, 26, mem[(32 * arg5.length) + 1668]
}



}
