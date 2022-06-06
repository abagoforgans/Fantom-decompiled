contract main {




// =====================  Runtime code  =====================


#
#  - createOrder(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8)
#
address owner;
bool stor2; offset 256
uint8 stor2;
address operatorAddress; offset 8
address tokenAddress;
address uniswapV2RouterAddress;
mapping of struct stor6;
mapping of uint8 stor7;
array of struct stor8;
mapping of uint256 stor9;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function isInitialized() {
    return bool(uint8(stor2.field_0))
}

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function isCompleted(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor7[arg1][arg2])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor2.field_0):
        revert with 0, 'Already initialized'
    tokenAddress = arg1
    uniswapV2RouterAddress = arg2
    uint8(stor2.field_0) = 1
    operatorAddress = arg3
    stor2.field_256 % 1 = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg4);
    owner = arg4
}

function sub_2e911602(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        if stor9[cd[((32 * idx) + cd[4] + 36)]]:
            require stor8.length - 1 < stor8.length
            require stor9[cd[((32 * idx) + cd[4] + 36)]] - 1 < stor8.length
            stor8[stor9[cd[((32 * idx) + cd[4] + 36)]]].field_0 = stor8[stor8.length].field_0
            stor9[stor8[stor8.length].field_0] = stor9[cd[((32 * idx) + cd[4] + 36)]]
            require stor8.length
            stor8[stor8.length].field_0 = 0
            stor8.length--
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            stor9[cd[((32 * idx) + cd[4] + 36)]] = 0
        idx = idx + 1
        continue 
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 == ext_call.return_data[12 len 20]:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeBEP20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}

function listOrders() {
    require stor8.length <= test266151307()
    mem[96] = stor8.length
    mem[64] = (32 * stor8.length) + 128
    if not stor8.length:
        if var31002 >= stor8.length:
            mem[(32 * stor8.length) + 128] = 32
            mem[(32 * stor8.length) + 160] = stor8.length
            idx = 0
            s = 128
            t = (32 * stor8.length) + 192
            while idx < mem[96]:
                _209 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_209 + 44 len 20]
                mem[t + 64] = mem[_209 + 64]
                mem[t + 96] = mem[_209 + 96]
                mem[t + 128] = mem[_209 + 128]
                mem[t + 160] = mem[_209 + 160]
                mem[t + 192] = mem[_209 + 192]
                mem[t + 224] = mem[_209 + 224]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len (32 * stor8.length) + Mask(248, 0, stor8.length) + -mem[64] + 192
        if var37001 >= stor8.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var39002 < stor8.length
        mem[0] = var43001
        mem[32] = 6
        mem[64] = (32 * stor8.length) + 384
        mem[(32 * stor8.length) + 128] = stor6[var43001].field_0
        mem[(32 * stor8.length) + 160] = stor6[var43001].field_256
        mem[(32 * stor8.length) + 192] = stor6[var43001].field_512
        mem[(32 * stor8.length) + 224] = stor6[var43001].field_768
        mem[(32 * stor8.length) + 256] = stor6[var43001].field_1024
        mem[(32 * stor8.length) + 288] = stor6[var43001].field_1280
        mem[(32 * stor8.length) + 320] = stor6[var43001].field_1536
        mem[(32 * stor8.length) + 352] = stor6[var43001].field_1792
        require var43008 < stor8.length
        mem[(32 * var43008) + 128] = (32 * stor8.length) + 128
        s = var43001
        idx = var43008
        while idx + 1 < stor8.length:
            mem[0] = stor8[idx].field_512
            mem[32] = 6
            mem[64] = mem[64] + 256
            mem[(32 * stor8.length) + 128] = stor6[stor8[idx].field_512].field_0
            mem[(32 * stor8.length) + 160] = stor6[var43001].field_256
            mem[(32 * stor8.length) + 192] = stor6[var43001].field_512
            mem[(32 * stor8.length) + 224] = stor6[var43001].field_768
            mem[(32 * stor8.length) + 256] = stor6[var43001].field_1024
            mem[(32 * stor8.length) + 288] = stor6[var43001].field_1280
            mem[(32 * stor8.length) + 320] = stor6[var43001].field_1536
            mem[(32 * stor8.length) + 352] = stor6[var43001].field_1792
            require idx + 1 < stor8.length
            mem[(32 * idx + 1) + 128] = (32 * stor8.length) + 128
            s = stor8[idx].field_256
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor8.length
        s = 0
        s = 128
        t = mem[64] + 64
        while var43001 + (256 * stor8.length + -var43008 - 1) < stor8.length:
            _479 = mem[s]
            mem[stor8.length - 1] = mem[mem[s]]
            mem[stor8.length + 31] = mem[_479 + 44 len 20]
            mem[stor8.length + 63] = mem[_479 + 64]
            mem[stor8.length + 95] = mem[_479 + 96]
            mem[stor8.length + 127] = mem[_479 + 128]
            mem[stor8.length + 159] = mem[_479 + 160]
            mem[stor8.length + 191] = mem[_479 + 192]
            mem[stor8.length + 223] = mem[_479 + 224]
            s = var43001 + (256 * stor8.length + -var43008 - 1) + 1
            s = s + 32
            t = stor8.length + 255
            continue 
    else:
        mem[64] = (32 * stor8.length) + 384
        mem[(32 * stor8.length) + 128] = 0
        mem[(32 * stor8.length) + 160] = 0
        mem[(32 * stor8.length) + 192] = 0
        mem[(32 * stor8.length) + 224] = 0
        mem[(32 * stor8.length) + 256] = 0
        mem[(32 * stor8.length) + 288] = 0
        mem[(32 * stor8.length) + 320] = 0
        mem[(32 * stor8.length) + 352] = 0
        mem[var13001] = (32 * stor8.length) + 128
        s = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[(32 * stor8.length) + 128] = 0
            mem[(32 * stor8.length) + 160] = 0
            mem[(32 * stor8.length) + 192] = 0
            mem[(32 * stor8.length) + 224] = 0
            mem[(32 * stor8.length) + 256] = 0
            mem[(32 * stor8.length) + 288] = 0
            mem[(32 * stor8.length) + 320] = 0
            mem[(32 * stor8.length) + 352] = 0
            mem[s + 32] = (32 * stor8.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var38002 >= stor8.length:
            _254 = mem[64]
            mem[mem[64]] = 32
            _256 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _256:
                _300 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_300 + 44 len 20]
                mem[t + 64] = mem[_300 + 64]
                mem[t + 96] = mem[_300 + 96]
                mem[t + 128] = mem[_300 + 128]
                mem[t + 160] = mem[_300 + 160]
                mem[t + 192] = mem[_300 + 192]
                mem[t + 224] = mem[_300 + 224]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len _254 + (256 * _256) + -mem[64] + 64
        if var44001 >= stor8.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var46002 < stor8.length
        mem[0] = var50001
        mem[32] = 6
        _506 = mem[64]
        mem[64] = mem[64] + 256
        mem[_506] = stor6[var50001].field_0
        mem[_506 + 32] = stor6[var50001].field_256
        mem[_506 + 64] = stor6[var50001].field_512
        mem[_506 + 96] = stor6[var50001].field_768
        mem[_506 + 128] = stor6[var50001].field_1024
        mem[_506 + 160] = stor6[var50001].field_1280
        mem[_506 + 192] = stor6[var50001].field_1536
        mem[_506 + 224] = stor6[var50001].field_1792
        require var50008 < mem[96]
        mem[(32 * var50008) + 128] = _506
        s = var50001
        idx = var50008
        while idx + 1 < stor8.length:
            mem[0] = stor8[idx].field_512
            mem[32] = 6
            _506 = mem[64]
            mem[64] = mem[64] + 256
            mem[_506] = stor6[stor8[idx].field_512].field_0
            mem[_506 + 32] = stor6[var50001].field_256
            mem[_506 + 64] = stor6[var50001].field_512
            mem[_506 + 96] = stor6[var50001].field_768
            mem[_506 + 128] = stor6[var50001].field_1024
            mem[_506 + 160] = stor6[var50001].field_1280
            mem[_506 + 192] = stor6[var50001].field_1536
            mem[_506 + 224] = stor6[var50001].field_1792
            require idx + 1 < mem[96]
            mem[(32 * idx + 1) + 128] = _506
            s = stor8[idx].field_256
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _509 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while var50001 + (256 * stor8.length + -var50008 - 1) < _509:
            _521 = mem[s]
            mem[stor8.length - 1] = mem[mem[s]]
            mem[stor8.length + 31] = mem[_521 + 44 len 20]
            mem[stor8.length + 63] = mem[_521 + 64]
            mem[stor8.length + 95] = mem[_521 + 96]
            mem[stor8.length + 127] = mem[_521 + 128]
            mem[stor8.length + 159] = mem[_521 + 160]
            mem[stor8.length + 191] = mem[_521 + 192]
            mem[stor8.length + 223] = mem[_521 + 224]
            s = var50001 + (256 * stor8.length + -var50008 - 1) + 1
            s = s + 32
            t = stor8.length + 255
            continue 
    return memory
      from mem[64]
       len stor8.length + -mem[64] - 1
}

function sub_6567e3b0(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (192 * ('cd', 4).length) + 36 <= calldata.size
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((192 * idx) + cd[4] + 132)] == address(cd[((192 * idx) + cd[4] + 132)])
        require idx < ('cd', 4).length
        _135 = mem[64]
        mem[mem[64] + 32] = cd[((192 * idx) + cd[4] + 36)]
        mem[mem[64] + 64] = cd[((192 * idx) + cd[4] + 100)]
        _136 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _138 = sha3(mem[_136 + 32 len mem[_136]])
        mem[0] = sha3(mem[_136 + 32 len mem[_136]])
        mem[32] = 7
        if stor7[mem[0]]:
            revert with 0, 'already transfered'
        mem[_135 + 100] = uniswapV2RouterAddress
        mem[_135 + 132] = 5 * cd[((192 * idx) + cd[4] + 68)] / 1000
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, 5 * cd[((192 * idx) + cd[4] + 68)] / 1000
        mem[_135 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_135 + ceil32(return_data.size) + 96] = 2
        mem[_135 + ceil32(return_data.size) + 128] = tokenAddress
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[_135 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _135 + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_135 + ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        mem[_135 + (2 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[_135 + (2 * ceil32(return_data.size)) + 196] = 5 * cd[((192 * idx) + cd[4] + 68)] / 1000
        mem[_135 + (2 * ceil32(return_data.size)) + 228] = 0
        mem[_135 + (2 * ceil32(return_data.size)) + 260] = 160
        mem[_135 + (2 * ceil32(return_data.size)) + 356] = 2
        s = 0
        t = _135 + ceil32(return_data.size) + 128
        u = _135 + (2 * ceil32(return_data.size)) + 388
        while s < mem[_135 + ceil32(return_data.size) + 96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_135 + (2 * ceil32(return_data.size)) + 292] = operatorAddress
        mem[_135 + (2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _135 + (2 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 == cd[((192 * idx) + cd[4] + 164)]:
            _270 = mem[64]
            mem[mem[64] + 36] = address(cd[((192 * idx) + cd[4] + 132)])
            mem[mem[64] + 68] = cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
            _272 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_272 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_272 + 36 len 28]
            mem[64] = _270 + 164
            mem[_270 + 100] = 32
            mem[_270 + 132] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            _288 = mem[_272]
            s = 0
            while s < _288:
                mem[s + _270 + 164] = mem[s + _272 + 32]
                s = s + 32
                continue 
            if ceil32(_288) > _288:
                mem[_288 + _270 + 164] = 0
            call tokenAddress.mem[_270 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_270 + 168 len _288 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_270 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_270 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _270 + 232] = mem[idx + _270 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_270 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[64] = _270 + ceil32(return_data.size) + 165
                mem[_270 + 164] = return_data.size
                mem[_270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_270 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_270 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _270 + ceil32(return_data.size) + 233] = mem[idx + _270 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_270 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_270 + 196] == bool(mem[_270 + 196])
                    if not mem[_270 + 196]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[mem[64] + 4] = uniswapV2RouterAddress
            mem[mem[64] + 36] = cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniswapV2RouterAddress, cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == bool(mem[_274])
            if not cd[((192 * idx) + cd[4] + 196)]:
                _280 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require mem[_280]
                mem[_280 + 32] = tokenAddress
                require 1 < mem[_280]
                mem[_280 + 64] = address(cd[((192 * idx) + cd[4] + 164)])
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_280 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _280 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(cd[((192 * idx) + cd[4] + 164)]) != ext_call.return_data[12 len 20]:
                    mem[_280 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_280 + ceil32(return_data.size) + 100] = cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
                    mem[_280 + ceil32(return_data.size) + 132] = 0
                    mem[_280 + ceil32(return_data.size) + 164] = 160
                    mem[_280 + ceil32(return_data.size) + 260] = mem[_280]
                    s = 0
                    t = _280 + 32
                    u = _280 + ceil32(return_data.size) + 292
                    while s < mem[_280]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                else:
                    mem[_280 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_280 + ceil32(return_data.size) + 100] = cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
                    mem[_280 + ceil32(return_data.size) + 132] = 0
                    mem[_280 + ceil32(return_data.size) + 164] = 160
                    mem[_280 + ceil32(return_data.size) + 260] = mem[_280]
                    s = 0
                    t = _280 + 32
                    u = _280 + ceil32(return_data.size) + 292
                    while s < mem[_280]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                mem[_280 + ceil32(return_data.size) + 196] = address(cd[((192 * idx) + cd[4] + 132)])
                mem[_280 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _280 + ceil32(return_data.size) + (32 * mem[_280]) + -mem[64] + 288]
            else:
                _278 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require mem[_278]
                mem[_278 + 32] = tokenAddress
                require 1 < mem[_278]
                mem[_278 + 64] = address(cd[((192 * idx) + cd[4] + 196)])
                require 2 < mem[_278]
                mem[_278 + 96] = address(cd[((192 * idx) + cd[4] + 164)])
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_278 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _278 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(cd[((192 * idx) + cd[4] + 164)]) != ext_call.return_data[12 len 20]:
                    mem[_278 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_278 + ceil32(return_data.size) + 132] = cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
                    mem[_278 + ceil32(return_data.size) + 164] = 0
                    mem[_278 + ceil32(return_data.size) + 196] = 160
                    mem[_278 + ceil32(return_data.size) + 292] = mem[_278]
                    s = 0
                    t = _278 + 32
                    u = _278 + ceil32(return_data.size) + 324
                    while s < mem[_278]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                else:
                    mem[_278 + ceil32(return_data.size) + 128] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_278 + ceil32(return_data.size) + 132] = cd[((192 * idx) + cd[4] + 68)] - (5 * cd[((192 * idx) + cd[4] + 68)] / 1000)
                    mem[_278 + ceil32(return_data.size) + 164] = 0
                    mem[_278 + ceil32(return_data.size) + 196] = 160
                    mem[_278 + ceil32(return_data.size) + 292] = mem[_278]
                    s = 0
                    t = _278 + 32
                    u = _278 + ceil32(return_data.size) + 324
                    while s < mem[_278]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                mem[_278 + ceil32(return_data.size) + 228] = address(cd[((192 * idx) + cd[4] + 132)])
                mem[_278 + ceil32(return_data.size) + 260] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _278 + ceil32(return_data.size) + (32 * mem[_278]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[0] = _138
        mem[32] = 7
        stor7[_138] = 1
        idx = idx + 1
        continue 
}



}
