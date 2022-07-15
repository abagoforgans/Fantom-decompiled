contract main {




// =====================  Runtime code  =====================


#
#  - distribute(address[] arg1)
#
const MAX_UINT_MINUS_ONE = -2

const DISTRIBUTION_BASE = 10000

const IMPLEMENTATION_REVISION = 1

const MIN_CONVERSION_RATE = 1

const KYBER_ETH_MOCK_ADDRESS = 0x1111111111111111111111111111111111111111

const MAX_UINT = -1


address owner;
array of struct stor53;
array of struct stor54;
address kyberProxyAddress;
address tokenToBurnAddress;
address recipientBurnAddress;

function recipientBurn() {
    return recipientBurnAddress
}

function tokenToBurn() {
    return tokenToBurnAddress
}

function owner() {
    return owner
}

function kyberProxy() {
    return kyberProxyAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function getDistribution() {
    if stor53.length:
        mem[128] = address(stor53.field_0)
        idx = 128
        s = 0
        while (32 * stor53.length) + 96 > idx:
            mem[idx + 32] = stor53[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor54.length:
        mem[(32 * stor53.length) + 160] = uint256(stor54.field_0)
        idx = (32 * stor53.length) + 160
        s = 0
        while (32 * stor53.length) + (32 * stor54.length) + 128 > idx:
            mem[idx + 32] = stor54[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor53.length) + (32 * stor54.length) + 256 len floor32(stor53.length)] = mem[128 len floor32(stor53.length)]
    mem[(64 * stor53.length) + (32 * stor54.length) + 256] = stor54.length
    mem[(64 * stor53.length) + (32 * stor54.length) + 288 len floor32(stor54.length)] = mem[(32 * stor53.length) + 160 len floor32(stor54.length)]
    return Array(len=stor53.length, data=mem[128 len floor32(stor53.length)], mem[(32 * stor53.length) + (32 * stor54.length) + floor32(stor53.length) + 256 len (32 * stor53.length) + (32 * stor54.length) + -floor32(stor53.length) + 32]), 
           (32 * stor53.length) + 96
}

function sub_ae9298ab(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    recipientBurnAddress = arg1
    tokenToBurnAddress = arg2
    kyberProxyAddress = arg3
    if arg4.length != arg5.length:
        revert with 0, 'Array lengths should be equal'
    stor53.length = arg4.length
    if not arg4.length:
        idx = 0
        while stor53.length > idx:
            stor53[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            stor53[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor53.length > idx:
            stor53[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor54.length = arg5.length
    if not arg5.length:
        idx = 0
        while stor54.length > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + 160
        while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
            stor54[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while stor54.length > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352] = arg5.length
    mem[(64 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    emit DistributionUpdated(Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + floor32(arg4.length) + 352 len (32 * arg4.length) + (32 * arg5.length) + -floor32(arg4.length) + 32]), (32 * arg4.length) + 96);
    emit 0x99566d15: address(arg2), address(arg3), arg1
}

function approveKyber(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length >= 64:
        revert with 0, 'Too many tokens to approve.'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] != 0x1111111111111111111111111111111111111111:
            require idx < mem[96]
            _48 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_48))
            staticcall address(_48).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, kyberProxyAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[mem[64] + 122 len 10]
            _53 = mem[64]
            mem[mem[64] + 36] = kyberProxyAddress
            mem[mem[64] + 68] = -2
            _54 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_54 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_54 + 36 len 28]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_48)):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_48)):
                revert with 0, 'SafeERC20: call to non-contract'
            _61 = mem[_54]
            t = _54 + 32
            u = _53 + 100
            s = mem[_54]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_53 + floor32(mem[_54]) + 100] = mem[_54 + -(mem[_54] % 32) + floor32(mem[_54]) + 64 len mem[_54] % 32] or Mask(8 * -(mem[_54] % 32) + 32, -(8 * -(mem[_54] % 32) + 32) + 256, mem[_53 + floor32(mem[_54]) + 100])
            call address(_48).mem[_53 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_53 + 104 len _61 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_53 + 210 len 22]
            else:
                mem[64] = _53 + ceil32(return_data.size) + 101
                mem[_53 + 100] = return_data.size
                mem[_53 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_53 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_53 + ceil32(return_data.size) + 211 len 22]
        idx = idx + 1
        continue 
}



}
