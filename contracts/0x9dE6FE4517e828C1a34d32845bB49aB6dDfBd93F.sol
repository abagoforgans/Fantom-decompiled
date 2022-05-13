contract main {




// =====================  Runtime code  =====================


const MAX_UINT_MINUS_ONE = -2

const DISTRIBUTION_BASE = 10000

const IMPLEMENTATION_REVISION = 1

const MIN_CONVERSION_RATE = 1

const KYBER_ETH_MOCK_ADDRESS = 0x1111111111111111111111111111111111111111

const MAX_UINT = -1


address owner;
array of address stor1;
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
            u = mem[64]
            s = mem[_54]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_54])] = mem[_54 + floor32(mem[_54]) + -(mem[_54] % 32) + 64 len mem[_54] % 32] or Mask(8 * -(mem[_54] % 32) + 32, -(8 * -(mem[_54] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_54])])
            call address(_48).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _61 + _53 + -mem[64] + 96]
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
                                    mem[mem[64] + 110 len 22]
            else:
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_87] = return_data.size
                mem[_87 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_87 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
        idx = idx + 1
        continue 
}

function distribute(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length >= 64:
        revert with 0, 'Too many tokens to distribute.'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _564 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 140 len 20] == 0x1111111111111111111111111111111111111111:
            if eth.balance(this.address) > 0:
                _570 = mem[64]
                mem[64] = mem[64] + 64
                mem[_570] = 96
                mem[_570 + 32] = 96
                _572 = mem[64]
                mem[64] = mem[64] + (32 * stor53.length) + 96
                mem[_572 + 64] = stor53.length
                if not stor53.length:
                    mem[_572] = _572 + 64
                    _573 = mem[64]
                    mem[64] = mem[64] + (32 * stor54.length) + 32
                    mem[_573] = stor54.length
                    if not stor54.length:
                        mem[_572 + 32] = _573
                        s = 0
                        while s < stor53.length:
                            require s < mem[mem[_572 + 32]]
                            _1128 = mem[(32 * s) + mem[_572 + 32] + 32]
                            if not eth.balance(this.address):
                                _1134 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1134] = 26
                                mem[_1134 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _1295 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _1295
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _1295, 0);
                                        else:
                                            _1189 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1189] = return_data.size
                                            mem[_1189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _1298 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _1298
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _1298, 0);
                                    else:
                                        require idx < mem[96]
                                        _1190 = mem[(32 * idx) + 128]
                                        _1214 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _1215 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1215 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1215 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_1190)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_1190)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _1346 = mem[_1215]
                                        t = _1215 + 32
                                        u = mem[64]
                                        idx = mem[_1215]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1215])] = mem[_1215 + floor32(mem[_1215]) + -(mem[_1215] % 32) + 64 len mem[_1215] % 32] or Mask(8 * -(mem[_1215] % 32) + 32, -(8 * -(mem[_1215] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1215])])
                                        call address(_1190).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1346 + _1214 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1840 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1840
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _1840, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1895 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1895
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _1895, 0);
                                        else:
                                            _1688 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1688] = return_data.size
                                            mem[_1688 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1845 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1845
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _1845, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_1688 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1898 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1898
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _1898, 0);
                            else:
                                if mem[(32 * s) + mem[_572 + 32] + 32] * eth.balance(this.address) / eth.balance(this.address) != mem[(32 * s) + mem[_572 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1136 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1136] = 26
                                mem[_1136 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _1128 * eth.balance(this.address) / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _1128 * eth.balance(this.address) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _1128 * eth.balance(this.address) / 10000
                                        emit Burn((_1128 * eth.balance(this.address) / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _1128 * eth.balance(this.address) / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _1128 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _1128 * eth.balance(this.address) / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _1128 * eth.balance(this.address) / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _1128 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_1128 * eth.balance(this.address) / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                           value _1128 * eth.balance(this.address) / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _1337 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _1337
                                            mem[mem[64] + 64] = _1128 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _1337, _1128 * eth.balance(this.address) / 10000);
                                        else:
                                            _1225 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1225] = return_data.size
                                            mem[_1225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _1340 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _1340
                                            mem[mem[64] + 64] = _1128 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _1340, _1128 * eth.balance(this.address) / 10000);
                                    else:
                                        require idx < mem[96]
                                        _1226 = mem[(32 * idx) + 128]
                                        _1246 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = _1128 * eth.balance(this.address) / 10000
                                        _1247 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1247 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1247 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_1226)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_1226)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _1378 = mem[_1247]
                                        t = _1247 + 32
                                        u = mem[64]
                                        idx = mem[_1247]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1247])] = mem[_1247 + floor32(mem[_1247]) + -(mem[_1247] % 32) + 64 len mem[_1247] % 32] or Mask(8 * -(mem[_1247] % 32) + 32, -(8 * -(mem[_1247] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1247])])
                                        call address(_1226).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1378 + _1246 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1830 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1830
                                                mem[mem[64] + 64] = _1128 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _1830, _1128 * eth.balance(this.address) / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1889 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1889
                                                mem[mem[64] + 64] = _1128 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _1889, _1128 * eth.balance(this.address) / 10000);
                                        else:
                                            _1687 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1687] = return_data.size
                                            mem[_1687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1835 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1835
                                                mem[mem[64] + 64] = _1128 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _1835, _1128 * eth.balance(this.address) / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_1687 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _1892 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _1892
                                                mem[mem[64] + 64] = _1128 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _1892, _1128 * eth.balance(this.address) / 10000);
                            s = s + 1
                            continue 
                    else:
                        mem[0] = 54
                        mem[_573 + 32] = uint256(stor54.field_0)
                        s = _573 + 32
                        t = sha3(54)
                        while _573 + (32 * stor54.length) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_572 + 32] = _573
                        _2946 = mem[mem[_572]]
                        s = 0
                        while s < _2946:
                            require s < mem[mem[_572 + 32]]
                            _2959 = mem[(32 * s) + mem[_572 + 32] + 32]
                            if not eth.balance(this.address):
                                _2971 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2971] = 26
                                mem[_2971 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3285 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3285
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3285, 0);
                                        else:
                                            _3076 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3076] = return_data.size
                                            mem[_3076 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3288 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3288
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3288, 0);
                                    else:
                                        require idx < mem[96]
                                        _3077 = mem[(32 * idx) + 128]
                                        _3121 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _3122 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3122 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3122 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3077)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3077)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3382 = mem[_3122]
                                        t = _3122 + 32
                                        u = mem[64]
                                        idx = mem[_3122]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _2946 = mem[mem[_572]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3122])] = mem[_3122 + floor32(mem[_3122]) + -(mem[_3122] % 32) + 64 len mem[_3122] % 32] or Mask(8 * -(mem[_3122] % 32) + 32, -(8 * -(mem[_3122] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3122])])
                                        call address(_3077).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3382 + _3121 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4316 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4316
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4316, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4425 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4425
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4425, 0);
                                        else:
                                            _4060 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4060] = return_data.size
                                            mem[_4060 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4321 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4321
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4321, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4060 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4428 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4428
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4428, 0);
                            else:
                                if mem[(32 * s) + mem[_572 + 32] + 32] * eth.balance(this.address) / eth.balance(this.address) != mem[(32 * s) + mem[_572 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2975 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2975] = 26
                                mem[_2975 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _2959 * eth.balance(this.address) / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _2959 * eth.balance(this.address) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _2959 * eth.balance(this.address) / 10000
                                        emit Burn((_2959 * eth.balance(this.address) / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _2959 * eth.balance(this.address) / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _2959 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _2959 * eth.balance(this.address) / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _2959 * eth.balance(this.address) / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _2959 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_2959 * eth.balance(this.address) / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                           value _2959 * eth.balance(this.address) / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3373 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3373
                                            mem[mem[64] + 64] = _2959 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _3373, _2959 * eth.balance(this.address) / 10000);
                                        else:
                                            _3152 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3152] = return_data.size
                                            mem[_3152 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3376 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3376
                                            mem[mem[64] + 64] = _2959 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _3376, _2959 * eth.balance(this.address) / 10000);
                                    else:
                                        require idx < mem[96]
                                        _3153 = mem[(32 * idx) + 128]
                                        _3191 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = _2959 * eth.balance(this.address) / 10000
                                        _3192 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3192 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3192 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3153)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3153)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3456 = mem[_3192]
                                        t = _3192 + 32
                                        u = mem[64]
                                        idx = mem[_3192]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _2946 = mem[mem[_572]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3192])] = mem[_3192 + floor32(mem[_3192]) + -(mem[_3192] % 32) + 64 len mem[_3192] % 32] or Mask(8 * -(mem[_3192] % 32) + 32, -(8 * -(mem[_3192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3192])])
                                        call address(_3153).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3456 + _3191 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4306 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4306
                                                mem[mem[64] + 64] = _2959 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4306, _2959 * eth.balance(this.address) / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4419 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4419
                                                mem[mem[64] + 64] = _2959 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4419, _2959 * eth.balance(this.address) / 10000);
                                        else:
                                            _4059 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4059] = return_data.size
                                            mem[_4059 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4311 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4311
                                                mem[mem[64] + 64] = _2959 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4311, _2959 * eth.balance(this.address) / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4059 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4422 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4422
                                                mem[mem[64] + 64] = _2959 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4422, _2959 * eth.balance(this.address) / 10000);
                            _2946 = mem[mem[_572]]
                            s = s + 1
                            continue 
                else:
                    mem[0] = 53
                    mem[_572 + 96] = address(stor53.field_0)
                    s = _572 + 96
                    t = sha3(53)
                    while _572 + (32 * stor53.length) + 96 > s + 32:
                        mem[s + 32] = address(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_572] = _572 + 64
                    _1658 = mem[64]
                    mem[64] = mem[64] + (32 * stor54.length) + 32
                    mem[_1658] = stor54.length
                    if not stor54.length:
                        mem[_572 + 32] = _1658
                        s = 0
                        while s < stor53.length:
                            require s < mem[mem[_572 + 32]]
                            _2960 = mem[(32 * s) + mem[_572 + 32] + 32]
                            if not eth.balance(this.address):
                                _2972 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2972] = 26
                                mem[_2972 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3299 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3299
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3299, 0);
                                        else:
                                            _3083 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3083] = return_data.size
                                            mem[_3083 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3302 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3302
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3302, 0);
                                    else:
                                        require idx < mem[96]
                                        _3084 = mem[(32 * idx) + 128]
                                        _3134 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _3135 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3135 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3135 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3084)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3084)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3398 = mem[_3135]
                                        t = _3135 + 32
                                        u = _3134 + 100
                                        idx = mem[_3135]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[_3134 + floor32(mem[_3135]) + 100] = mem[_3135 + -(mem[_3135] % 32) + floor32(mem[_3135]) + 64 len mem[_3135] % 32] or Mask(8 * -(mem[_3135] % 32) + 32, -(8 * -(mem[_3135] % 32) + 32) + 256, mem[_3134 + floor32(mem[_3135]) + 100])
                                        call address(_3084).mem[_3134 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_3134 + 104 len _3398 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4336 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[_3134 + 100] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[_3134 + 132] = _4336
                                                mem[_3134 + 164] = 0
                                                emit Distributed(mem[_3134 + 100], _4336, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_3134 + 210 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4437 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[_3134 + 100] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[_3134 + 132] = _4437
                                                mem[_3134 + 164] = 0
                                                emit Distributed(mem[_3134 + 100], _4437, 0);
                                        else:
                                            mem[64] = _3134 + ceil32(return_data.size) + 101
                                            mem[_3134 + 100] = return_data.size
                                            mem[_3134 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4341 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[_3134 + ceil32(return_data.size) + 101] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[_3134 + ceil32(return_data.size) + 133] = _4341
                                                mem[_3134 + ceil32(return_data.size) + 165] = 0
                                                emit Distributed(mem[_3134 + ceil32(return_data.size) + 101], _4341, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_3134 + 132]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_3134 + ceil32(return_data.size) + 211 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4440 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[_3134 + ceil32(return_data.size) + 101] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[_3134 + ceil32(return_data.size) + 133] = _4440
                                                mem[_3134 + ceil32(return_data.size) + 165] = 0
                                                emit Distributed(mem[_3134 + ceil32(return_data.size) + 101], _4440, 0);
                            else:
                                if mem[(32 * s) + mem[_572 + 32] + 32] * eth.balance(this.address) / eth.balance(this.address) != mem[(32 * s) + mem[_572 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2976 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2976] = 26
                                mem[_2976 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _2960 * eth.balance(this.address) / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _2960 * eth.balance(this.address) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _2960 * eth.balance(this.address) / 10000
                                        emit Burn((_2960 * eth.balance(this.address) / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _2960 * eth.balance(this.address) / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _2960 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _2960 * eth.balance(this.address) / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _2960 * eth.balance(this.address) / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _2960 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_2960 * eth.balance(this.address) / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                           value _2960 * eth.balance(this.address) / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3389 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3389
                                            mem[mem[64] + 64] = _2960 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _3389, _2960 * eth.balance(this.address) / 10000);
                                        else:
                                            _3159 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3159] = return_data.size
                                            mem[_3159 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _3392 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _3392
                                            mem[mem[64] + 64] = _2960 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _3392, _2960 * eth.balance(this.address) / 10000);
                                    else:
                                        require idx < mem[96]
                                        _3160 = mem[(32 * idx) + 128]
                                        _3202 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = _2960 * eth.balance(this.address) / 10000
                                        _3203 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3203 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3203 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3160)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3160)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3466 = mem[_3203]
                                        t = _3203 + 32
                                        u = mem[64]
                                        idx = mem[_3203]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3203])] = mem[_3203 + floor32(mem[_3203]) + -(mem[_3203] % 32) + 64 len mem[_3203] % 32] or Mask(8 * -(mem[_3203] % 32) + 32, -(8 * -(mem[_3203] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3203])])
                                        call address(_3160).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3466 + _3202 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4326 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4326
                                                mem[mem[64] + 64] = _2960 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4326, _2960 * eth.balance(this.address) / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4431 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4431
                                                mem[mem[64] + 64] = _2960 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4431, _2960 * eth.balance(this.address) / 10000);
                                        else:
                                            _4061 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4061] = return_data.size
                                            mem[_4061 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4331 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4331
                                                mem[mem[64] + 64] = _2960 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4331, _2960 * eth.balance(this.address) / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4061 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _4434 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _4434
                                                mem[mem[64] + 64] = _2960 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _4434, _2960 * eth.balance(this.address) / 10000);
                            s = s + 1
                            continue 
                    else:
                        mem[0] = 54
                        mem[_1658 + 32] = uint256(stor54.field_0)
                        s = _1658 + 32
                        t = sha3(54)
                        while _1658 + (32 * stor54.length) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_572 + 32] = _1658
                        _4966 = mem[mem[_572]]
                        s = 0
                        while s < _4966:
                            require s < mem[mem[_572 + 32]]
                            _4972 = mem[(32 * s) + mem[_572 + 32] + 32]
                            if not eth.balance(this.address):
                                _4978 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4978] = 26
                                mem[_4978 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _5139 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _5139
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _5139, 0);
                                        else:
                                            _5033 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5033] = return_data.size
                                            mem[_5033 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _5142 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _5142
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _5142, 0);
                                    else:
                                        require idx < mem[96]
                                        _5034 = mem[(32 * idx) + 128]
                                        _5058 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _5059 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5059 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5059 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_5034)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_5034)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5190 = mem[_5059]
                                        t = _5059 + 32
                                        u = mem[64]
                                        idx = mem[_5059]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _4966 = mem[mem[_572]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_5059])] = mem[_5059 + floor32(mem[_5059]) + -(mem[_5059] % 32) + 64 len mem[_5059] % 32] or Mask(8 * -(mem[_5059] % 32) + 32, -(8 * -(mem[_5059] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5059])])
                                        call address(_5034).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5190 + _5058 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5647 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5647
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5647, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5699 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5699
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5699, 0);
                                        else:
                                            _5520 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5520] = return_data.size
                                            mem[_5520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5652 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5652
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5652, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_5520 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5702 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5702
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5702, 0);
                            else:
                                if mem[(32 * s) + mem[_572 + 32] + 32] * eth.balance(this.address) / eth.balance(this.address) != mem[(32 * s) + mem[_572 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4980 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4980] = 26
                                mem[_4980 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_572]]
                                if not mem[(32 * s) + mem[_572] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _4972 * eth.balance(this.address) / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _4972 * eth.balance(this.address) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _4972 * eth.balance(this.address) / 10000
                                        emit Burn((_4972 * eth.balance(this.address) / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _4972 * eth.balance(this.address) / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _4972 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _4972 * eth.balance(this.address) / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _4972 * eth.balance(this.address) / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _4972 * eth.balance(this.address) / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_4972 * eth.balance(this.address) / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_572]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_572] + 44 len 20] with:
                                           value _4972 * eth.balance(this.address) / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _5181 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _5181
                                            mem[mem[64] + 64] = _4972 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _5181, _4972 * eth.balance(this.address) / 10000);
                                        else:
                                            _5069 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5069] = return_data.size
                                            mem[_5069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_572]]
                                            require s < mem[mem[_572 + 32]]
                                            _5184 = mem[(32 * s) + mem[_572 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                            mem[mem[64] + 32] = _5184
                                            mem[mem[64] + 64] = _4972 * eth.balance(this.address) / 10000
                                            emit Distributed(mem[mem[64]], _5184, _4972 * eth.balance(this.address) / 10000);
                                    else:
                                        require idx < mem[96]
                                        _5070 = mem[(32 * idx) + 128]
                                        _5090 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_572] + 44 len 20]
                                        mem[mem[64] + 68] = _4972 * eth.balance(this.address) / 10000
                                        _5091 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5091 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5091 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_5070)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_5070)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5222 = mem[_5091]
                                        t = _5091 + 32
                                        u = mem[64]
                                        idx = mem[_5091]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _4966 = mem[mem[_572]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_5091])] = mem[_5091 + floor32(mem[_5091]) + -(mem[_5091] % 32) + 64 len mem[_5091] % 32] or Mask(8 * -(mem[_5091] % 32) + 32, -(8 * -(mem[_5091] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5091])])
                                        call address(_5070).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5222 + _5090 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5637 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5637
                                                mem[mem[64] + 64] = _4972 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _5637, _4972 * eth.balance(this.address) / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5693 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5693
                                                mem[mem[64] + 64] = _4972 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _5693, _4972 * eth.balance(this.address) / 10000);
                                        else:
                                            _5519 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5519] = return_data.size
                                            mem[_5519 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5642 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5642
                                                mem[mem[64] + 64] = _4972 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _5642, _4972 * eth.balance(this.address) / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_5519 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_572]]
                                                require s < mem[mem[_572 + 32]]
                                                _5696 = mem[(32 * s) + mem[_572 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_572] + 44 len 20]
                                                mem[mem[64] + 32] = _5696
                                                mem[mem[64] + 64] = _4972 * eth.balance(this.address) / 10000
                                                emit Distributed(mem[mem[64]], _5696, _4972 * eth.balance(this.address) / 10000);
                            _4966 = mem[mem[_572]]
                            s = s + 1
                            continue 
        else:
            require idx < mem[96]
            _566 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_566))
            staticcall address(_566).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                _576 = mem[64]
                mem[64] = mem[64] + 64
                mem[_576] = 96
                mem[_576 + 32] = 96
                _579 = mem[64]
                mem[64] = mem[64] + (32 * stor53.length) + 96
                mem[_579 + 64] = stor53.length
                if not stor53.length:
                    mem[_579] = _579 + 64
                    _582 = mem[64]
                    mem[64] = mem[64] + (32 * stor54.length) + 32
                    mem[_582] = stor54.length
                    if not stor54.length:
                        mem[_579 + 32] = _582
                        s = 0
                        while s < stor53.length:
                            require s < mem[mem[_579 + 32]]
                            _1127 = mem[(32 * s) + mem[_579 + 32] + 32]
                            if not ext_call.return_data[0]:
                                _1133 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1133] = 26
                                mem[_1133 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _1281 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _1281
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _1281, 0);
                                        else:
                                            _1182 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1182] = return_data.size
                                            mem[_1182 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _1284 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _1284
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _1284, 0);
                                    else:
                                        require idx < mem[96]
                                        _1183 = mem[(32 * idx) + 128]
                                        _1201 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _1202 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1202 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1202 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_1183)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_1183)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _1330 = mem[_1202]
                                        t = _1202 + 32
                                        u = _1201 + 100
                                        idx = mem[_1202]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[_1201 + floor32(mem[_1202]) + 100] = mem[_1202 + -(mem[_1202] % 32) + floor32(mem[_1202]) + 64 len mem[_1202] % 32] or Mask(8 * -(mem[_1202] % 32) + 32, -(8 * -(mem[_1202] % 32) + 32) + 256, mem[_1201 + floor32(mem[_1202]) + 100])
                                        call address(_1183).mem[_1201 + 100 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1201 + 104 len _1330 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1819 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[_1201 + 100] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[_1201 + 132] = _1819
                                                mem[_1201 + 164] = 0
                                                emit Distributed(mem[_1201 + 100], _1819, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_1201 + 210 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1883 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[_1201 + 100] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[_1201 + 132] = _1883
                                                mem[_1201 + 164] = 0
                                                emit Distributed(mem[_1201 + 100], _1883, 0);
                                        else:
                                            mem[64] = _1201 + ceil32(return_data.size) + 101
                                            mem[_1201 + 100] = return_data.size
                                            mem[_1201 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1824 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[_1201 + ceil32(return_data.size) + 101] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[_1201 + ceil32(return_data.size) + 133] = _1824
                                                mem[_1201 + ceil32(return_data.size) + 165] = 0
                                                emit Distributed(mem[_1201 + ceil32(return_data.size) + 101], _1824, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_1201 + 132]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_1201 + ceil32(return_data.size) + 211 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1886 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[_1201 + ceil32(return_data.size) + 101] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[_1201 + ceil32(return_data.size) + 133] = _1886
                                                mem[_1201 + ceil32(return_data.size) + 165] = 0
                                                emit Distributed(mem[_1201 + ceil32(return_data.size) + 101], _1886, 0);
                            else:
                                if mem[(32 * s) + mem[_579 + 32] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * s) + mem[_579 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1135 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1135] = 26
                                mem[_1135 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _1127 * ext_call.return_data[0] / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _1127 * ext_call.return_data[0] / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _1127 * ext_call.return_data[0] / 10000
                                        emit Burn((_1127 * ext_call.return_data[0] / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _1127 * ext_call.return_data[0] / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _1127 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _1127 * ext_call.return_data[0] / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _1127 * ext_call.return_data[0] / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _1127 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_1127 * ext_call.return_data[0] / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                           value _1127 * ext_call.return_data[0] / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _1321 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _1321
                                            mem[mem[64] + 64] = _1127 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _1321, _1127 * ext_call.return_data[0] / 10000);
                                        else:
                                            _1218 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1218] = return_data.size
                                            mem[_1218 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _1324 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _1324
                                            mem[mem[64] + 64] = _1127 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _1324, _1127 * ext_call.return_data[0] / 10000);
                                    else:
                                        require idx < mem[96]
                                        _1219 = mem[(32 * idx) + 128]
                                        _1235 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = _1127 * ext_call.return_data[0] / 10000
                                        _1236 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_1236 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1236 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_1219)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_1219)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _1368 = mem[_1236]
                                        t = _1236 + 32
                                        u = mem[64]
                                        idx = mem[_1236]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_1236])] = mem[_1236 + floor32(mem[_1236]) + -(mem[_1236] % 32) + 64 len mem[_1236] % 32] or Mask(8 * -(mem[_1236] % 32) + 32, -(8 * -(mem[_1236] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1236])])
                                        call address(_1219).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1368 + _1235 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1809 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _1809
                                                mem[mem[64] + 64] = _1127 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _1809, _1127 * ext_call.return_data[0] / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1877 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _1877
                                                mem[mem[64] + 64] = _1127 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _1877, _1127 * ext_call.return_data[0] / 10000);
                                        else:
                                            _1681 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1681] = return_data.size
                                            mem[_1681 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1814 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _1814
                                                mem[mem[64] + 64] = _1127 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _1814, _1127 * ext_call.return_data[0] / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_1681 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _1880 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _1880
                                                mem[mem[64] + 64] = _1127 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _1880, _1127 * ext_call.return_data[0] / 10000);
                            s = s + 1
                            continue 
                    else:
                        mem[0] = 54
                        mem[_582 + 32] = uint256(stor54.field_0)
                        s = _582 + 32
                        t = sha3(54)
                        while _582 + (32 * stor54.length) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_579 + 32] = _582
                        _2942 = mem[mem[_579]]
                        s = 0
                        while s < _2942:
                            require s < mem[mem[_579 + 32]]
                            _2957 = mem[(32 * s) + mem[_579 + 32] + 32]
                            if not ext_call.return_data[0]:
                                _2969 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2969] = 26
                                mem[_2969 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3257 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3257
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3257, 0);
                                        else:
                                            _3062 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3062] = return_data.size
                                            mem[_3062 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3260 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3260
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3260, 0);
                                    else:
                                        require idx < mem[96]
                                        _3063 = mem[(32 * idx) + 128]
                                        _3095 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _3096 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3096 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3096 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3063)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3063)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3350 = mem[_3096]
                                        t = _3096 + 32
                                        u = mem[64]
                                        idx = mem[_3096]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _2942 = mem[mem[_579]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3096])] = mem[_3096 + floor32(mem[_3096]) + -(mem[_3096] % 32) + 64 len mem[_3096] % 32] or Mask(8 * -(mem[_3096] % 32) + 32, -(8 * -(mem[_3096] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3096])])
                                        call address(_3063).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3350 + _3095 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4275 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4275
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4275, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4401 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4401
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4401, 0);
                                        else:
                                            _4054 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4054] = return_data.size
                                            mem[_4054 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4280 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4280
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4280, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4054 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4404 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4404
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4404, 0);
                            else:
                                if mem[(32 * s) + mem[_579 + 32] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * s) + mem[_579 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2973 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2973] = 26
                                mem[_2973 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _2957 * ext_call.return_data[0] / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _2957 * ext_call.return_data[0] / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _2957 * ext_call.return_data[0] / 10000
                                        emit Burn((_2957 * ext_call.return_data[0] / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _2957 * ext_call.return_data[0] / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _2957 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _2957 * ext_call.return_data[0] / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _2957 * ext_call.return_data[0] / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _2957 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_2957 * ext_call.return_data[0] / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                           value _2957 * ext_call.return_data[0] / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3341 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3341
                                            mem[mem[64] + 64] = _2957 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _3341, _2957 * ext_call.return_data[0] / 10000);
                                        else:
                                            _3138 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3138] = return_data.size
                                            mem[_3138 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3344 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3344
                                            mem[mem[64] + 64] = _2957 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _3344, _2957 * ext_call.return_data[0] / 10000);
                                    else:
                                        require idx < mem[96]
                                        _3139 = mem[(32 * idx) + 128]
                                        _3169 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = _2957 * ext_call.return_data[0] / 10000
                                        _3170 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3170 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3170 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3139)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3139)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3436 = mem[_3170]
                                        t = _3170 + 32
                                        u = mem[64]
                                        idx = mem[_3170]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _2942 = mem[mem[_579]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3170])] = mem[_3170 + floor32(mem[_3170]) + -(mem[_3170] % 32) + 64 len mem[_3170] % 32] or Mask(8 * -(mem[_3170] % 32) + 32, -(8 * -(mem[_3170] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3170])])
                                        call address(_3139).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3436 + _3169 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4265 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4265
                                                mem[mem[64] + 64] = _2957 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4265, _2957 * ext_call.return_data[0] / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4395 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4395
                                                mem[mem[64] + 64] = _2957 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4395, _2957 * ext_call.return_data[0] / 10000);
                                        else:
                                            _4053 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4053] = return_data.size
                                            mem[_4053 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4270 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4270
                                                mem[mem[64] + 64] = _2957 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4270, _2957 * ext_call.return_data[0] / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4053 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4398 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4398
                                                mem[mem[64] + 64] = _2957 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4398, _2957 * ext_call.return_data[0] / 10000);
                            _2942 = mem[mem[_579]]
                            s = s + 1
                            continue 
                else:
                    mem[0] = 53
                    mem[_579 + 96] = address(stor53.field_0)
                    s = _579 + 96
                    t = sha3(53)
                    while _579 + (32 * stor53.length) + 96 > s + 32:
                        mem[s + 32] = address(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_579] = _579 + 64
                    _1657 = mem[64]
                    mem[64] = mem[64] + (32 * stor54.length) + 32
                    mem[_1657] = stor54.length
                    if not stor54.length:
                        mem[_579 + 32] = _1657
                        s = 0
                        while s < stor53.length:
                            require s < mem[mem[_579 + 32]]
                            _2958 = mem[(32 * s) + mem[_579 + 32] + 32]
                            if not ext_call.return_data[0]:
                                _2970 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2970] = 26
                                mem[_2970 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3271 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3271
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3271, 0);
                                        else:
                                            _3069 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3069] = return_data.size
                                            mem[_3069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3274 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3274
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _3274, 0);
                                    else:
                                        require idx < mem[96]
                                        _3070 = mem[(32 * idx) + 128]
                                        _3108 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _3109 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3109 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3109 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3070)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3070)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3366 = mem[_3109]
                                        t = _3109 + 32
                                        u = mem[64]
                                        idx = mem[_3109]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3109])] = mem[_3109 + floor32(mem[_3109]) + -(mem[_3109] % 32) + 64 len mem[_3109] % 32] or Mask(8 * -(mem[_3109] % 32) + 32, -(8 * -(mem[_3109] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3109])])
                                        call address(_3070).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3366 + _3108 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4295 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4295
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4295, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4413 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4413
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4413, 0);
                                        else:
                                            _4056 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4056] = return_data.size
                                            mem[_4056 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4300 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4300
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4300, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4056 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4416 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4416
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _4416, 0);
                            else:
                                if mem[(32 * s) + mem[_579 + 32] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * s) + mem[_579 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2974 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2974] = 26
                                mem[_2974 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _2958 * ext_call.return_data[0] / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _2958 * ext_call.return_data[0] / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _2958 * ext_call.return_data[0] / 10000
                                        emit Burn((_2958 * ext_call.return_data[0] / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _2958 * ext_call.return_data[0] / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _2958 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _2958 * ext_call.return_data[0] / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _2958 * ext_call.return_data[0] / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _2958 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_2958 * ext_call.return_data[0] / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                           value _2958 * ext_call.return_data[0] / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3357 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3357
                                            mem[mem[64] + 64] = _2958 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _3357, _2958 * ext_call.return_data[0] / 10000);
                                        else:
                                            _3145 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3145] = return_data.size
                                            mem[_3145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _3360 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _3360
                                            mem[mem[64] + 64] = _2958 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _3360, _2958 * ext_call.return_data[0] / 10000);
                                    else:
                                        require idx < mem[96]
                                        _3146 = mem[(32 * idx) + 128]
                                        _3180 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = _2958 * ext_call.return_data[0] / 10000
                                        _3181 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_3181 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3181 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_3146)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_3146)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _3446 = mem[_3181]
                                        t = _3181 + 32
                                        u = mem[64]
                                        idx = mem[_3181]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_3181])] = mem[_3181 + floor32(mem[_3181]) + -(mem[_3181] % 32) + 64 len mem[_3181] % 32] or Mask(8 * -(mem[_3181] % 32) + 32, -(8 * -(mem[_3181] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3181])])
                                        call address(_3146).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3446 + _3180 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4285 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4285
                                                mem[mem[64] + 64] = _2958 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4285, _2958 * ext_call.return_data[0] / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4407 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4407
                                                mem[mem[64] + 64] = _2958 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4407, _2958 * ext_call.return_data[0] / 10000);
                                        else:
                                            _4055 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4055] = return_data.size
                                            mem[_4055 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4290 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4290
                                                mem[mem[64] + 64] = _2958 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4290, _2958 * ext_call.return_data[0] / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_4055 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _4410 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _4410
                                                mem[mem[64] + 64] = _2958 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _4410, _2958 * ext_call.return_data[0] / 10000);
                            s = s + 1
                            continue 
                    else:
                        mem[0] = 54
                        mem[_1657 + 32] = uint256(stor54.field_0)
                        s = _1657 + 32
                        t = sha3(54)
                        while _1657 + (32 * stor54.length) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_579 + 32] = _1657
                        _4964 = mem[mem[_579]]
                        s = 0
                        while s < _4964:
                            require s < mem[mem[_579 + 32]]
                            _4971 = mem[(32 * s) + mem[_579 + 32] + 32]
                            if not ext_call.return_data[0]:
                                _4977 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4977] = 26
                                mem[_4977 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = 0
                                        emit Burn(0);
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       0,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: 0, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), 0, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(0, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _5125 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _5125
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _5125, 0);
                                        else:
                                            _5026 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5026] = return_data.size
                                            mem[_5026 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _5128 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _5128
                                            mem[mem[64] + 64] = 0
                                            emit Distributed(mem[mem[64]], _5128, 0);
                                    else:
                                        require idx < mem[96]
                                        _5027 = mem[(32 * idx) + 128]
                                        _5045 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = 0
                                        _5046 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5046 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5046 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_5027)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_5027)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5174 = mem[_5046]
                                        t = _5046 + 32
                                        u = mem[64]
                                        idx = mem[_5046]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _4964 = mem[mem[_579]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_5046])] = mem[_5046 + floor32(mem[_5046]) + -(mem[_5046] % 32) + 64 len mem[_5046] % 32] or Mask(8 * -(mem[_5046] % 32) + 32, -(8 * -(mem[_5046] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5046])])
                                        call address(_5027).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5174 + _5045 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5627 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5627
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5627, 0);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5687 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5687
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5687, 0);
                                        else:
                                            _5518 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5518] = return_data.size
                                            mem[_5518 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5632 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5632
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5632, 0);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_5518 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5690 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5690
                                                mem[mem[64] + 64] = 0
                                                emit Distributed(mem[mem[64]], _5690, 0);
                            else:
                                if mem[(32 * s) + mem[_579 + 32] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * s) + mem[_579 + 32] + 32]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4979 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4979] = 26
                                mem[_4979 + 32] = 'SafeMath: division by zero' << 48
                                require s < mem[mem[_579]]
                                if not mem[(32 * s) + mem[_579] + 44 len 20]:
                                    if tokenToBurnAddress == address(_564):
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = _4971 * ext_call.return_data[0] / 10000
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, _4971 * ext_call.return_data[0] / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        mem[mem[64] + 125 len 7]
                                        mem[mem[64]] = _4971 * ext_call.return_data[0] / 10000
                                        emit Burn((_4971 * ext_call.return_data[0] / 10000));
                                    else:
                                        mem[mem[64] + 68] = tokenToBurnAddress
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = -1
                                        mem[mem[64] + 164] = 1
                                        mem[mem[64] + 196] = 0
                                        mem[mem[64] + 228] = 256
                                        mem[mem[64] + 260] = 0
                                        require ext_code.size(kyberProxyAddress)
                                        if address(_564) == 0x1111111111111111111111111111111111111111:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                               value _4971 * ext_call.return_data[0] / 10000 wei
                                                 gas gas_remaining wei
                                                args 0x1111111111111111111111111111111111111111, _4971 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(address arg1, uint256 arg2, uint256 arg3):
                                                       _4971 * ext_call.return_data[0] / 10000,
                                                       ext_call.return_data[0],
                                            emit 0x11111111: _4971 * ext_call.return_data[0] / 10000, ext_call.return_data[0]
                                        else:
                                            call kyberProxyAddress.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                                                 gas gas_remaining wei
                                                args address(_564), _4971 * ext_call.return_data[0] / 10000, tokenToBurnAddress, this.address, -1, 1, 0, 256, 0, mem[mem[64] + 292]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Trade(_4971 * ext_call.return_data[0] / 10000, ext_call.return_data[0], address(_564));
                                        mem[mem[64] + 4] = recipientBurnAddress
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(tokenToBurnAddress)
                                        call tokenToBurnAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args recipientBurnAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        57,
                                                        0xe0494e5445524e414c5f4255524e2e205265766572746564207472616e7366657220746f20726563697069656e744275726e20616464726573,
                                                        this.address % 72057594037927936
                                        mem[mem[64]] = ext_call.return_data[0]
                                        emit Burn(ext_call.return_data[0]);
                                else:
                                    require s < mem[mem[_579]]
                                    if address(_564) == 0x1111111111111111111111111111111111111111:
                                        call mem[(32 * s) + mem[_579] + 44 len 20] with:
                                           value _4971 * ext_call.return_data[0] / 10000 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _5165 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _5165
                                            mem[mem[64] + 64] = _4971 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _5165, _4971 * ext_call.return_data[0] / 10000);
                                        else:
                                            _5062 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5062] = return_data.size
                                            mem[_5062 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Reverted ETH transfer'
                                            require s < mem[mem[_579]]
                                            require s < mem[mem[_579 + 32]]
                                            _5168 = mem[(32 * s) + mem[_579 + 32] + 32]
                                            mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                            mem[mem[64] + 32] = _5168
                                            mem[mem[64] + 64] = _4971 * ext_call.return_data[0] / 10000
                                            emit Distributed(mem[mem[64]], _5168, _4971 * ext_call.return_data[0] / 10000);
                                    else:
                                        require idx < mem[96]
                                        _5063 = mem[(32 * idx) + 128]
                                        _5079 = mem[64]
                                        mem[mem[64] + 36] = mem[(32 * s) + mem[_579] + 44 len 20]
                                        mem[mem[64] + 68] = _4971 * ext_call.return_data[0] / 10000
                                        _5080 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5080 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5080 + 36 len 28]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_5063)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(address(_5063)):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5212 = mem[_5080]
                                        t = _5080 + 32
                                        u = mem[64]
                                        idx = mem[_5080]
                                        while idx >= 32:
                                            mem[u] = mem[t]
                                            _4964 = mem[mem[_579]]
                                            t = t + 32
                                            u = u + 32
                                            idx = idx - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_5080])] = mem[_5080 + floor32(mem[_5080]) + -(mem[_5080] % 32) + 64 len mem[_5080] % 32] or Mask(8 * -(mem[_5080] % 32) + 32, -(8 * -(mem[_5080] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5080])])
                                        call address(_5063).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5212 + _5079 + -mem[64] + 96]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not mem[96]:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5617 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5617
                                                mem[mem[64] + 64] = _4971 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _5617, _4971 * ext_call.return_data[0] / 10000);
                                            else:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5681 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5681
                                                mem[mem[64] + 64] = _4971 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _5681, _4971 * ext_call.return_data[0] / 10000);
                                        else:
                                            _5517 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5517] = return_data.size
                                            mem[_5517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5622 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5622
                                                mem[mem[64] + 64] = _4971 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _5622, _4971 * ext_call.return_data[0] / 10000);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[_5517 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                                require s < mem[mem[_579]]
                                                require s < mem[mem[_579 + 32]]
                                                _5684 = mem[(32 * s) + mem[_579 + 32] + 32]
                                                mem[mem[64]] = mem[(32 * s) + mem[_579] + 44 len 20]
                                                mem[mem[64] + 32] = _5684
                                                mem[mem[64] + 64] = _4971 * ext_call.return_data[0] / 10000
                                                emit Distributed(mem[mem[64]], _5684, _4971 * ext_call.return_data[0] / 10000);
                            _4964 = mem[mem[_579]]
                            s = s + 1
                            continue 
        idx = idx + 1
        continue 
}



}
