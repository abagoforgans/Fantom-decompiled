contract main {




// =====================  Runtime code  =====================


#
#  - flashSwap(address arg1, uint256 arg2, address arg3, bytes arg4)
#
address stor0;
address stor1;
address lastTokenBorrowAddress;
uint256 lastAmount;
address lastTokenPayAddress;
uint256 lastamountToRepay;
array of uint256 lastUserData;

function lastUserData() {
    return lastUserData[0 len lastUserData.length]
}

function lastTokenBorrow() {
    return lastTokenBorrowAddress
}

function lastamountToRepay() {
    return lastamountToRepay
}

function lastTokenPay() {
    return lastTokenPayAddress
}

function lastAmount() {
    return lastAmount
}

function _fallback() payable {
  stop
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addressToString(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return '0'
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _34 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_34) + _32 + -mem[64] + 96
    mem[128 len s] = code.data[15598 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _37 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_37) + _35 + -mem[64] + 96
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 256
    require cd[(arg4 + 228)] <= 4294967296
    require cd[(arg4 + 228)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 4294967296 and cd[(arg4 + 228)] + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 228)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 228)] + 36)]] = call.data[arg4 + cd[(arg4 + 228)] + 68 len cd[(arg4 + cd[(arg4 + 228)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 128] = 0
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160] = 0
    require uint8(cd[(arg4 + 36)]) <= 2
    if not uint8(cd[(arg4 + 36)]):
        if not cd[(arg4 + 164)]:
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
            if cd[(arg4 + 164)]:
                if cd[(arg4 + 196)]:
                    _32 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_32)
                    while idx:
                        require t < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                else:
                    _34 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_34)
                    while idx:
                        require t < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
            else:
                if cd[(arg4 + 196)]:
                    _36 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_36)
                    while idx:
                        require t < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                else:
                    _38 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_38)
                    while idx:
                        require t < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 196] = 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 228] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 260 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
            if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                revert with memory
                  from ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                   len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
            mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 260] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
            revert with memory
              from ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
               len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = cd[(arg4 + 100)]
        require ext_code.size(stor1)
        call stor1.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
        if cd[(arg4 + 164)]:
            if cd[(arg4 + 196)]:
                _56 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                if s:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                t = s - 1
                idx = address(_56)
                while idx:
                    require t < 0, Mask(224, 0, s)
                    mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
            else:
                _58 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                if s:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                t = s - 1
                idx = address(_58)
                while idx:
                    require t < 0, Mask(224, 0, s)
                    mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
        else:
            if cd[(arg4 + 196)]:
                _60 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                if s:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                t = s - 1
                idx = address(_60)
                while idx:
                    require t < 0, Mask(224, 0, s)
                    mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
            else:
                _62 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                    revert with 0, '0'
                s = 0
                idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                if s:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                t = s - 1
                idx = address(_62)
                while idx:
                    require t < 0, Mask(224, 0, s)
                    mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 196] = 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 228] = 0, Mask(224, 0, s)
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 260 len ceil32(0, Mask(224, 0, s))] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, Mask(224, 0, s))]
        if not s % 32:
            revert with memory
              from ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
               len 0, Mask(224, 0, s) + 68
        mem[floor32(0, Mask(224, 0, s)) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 260] = mem[floor32(0, Mask(224, 0, s)) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + -(s % 32) + 292 len s % 32]
        revert with memory
          from ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
           len floor32(0, Mask(224, 0, s)) + 100
    require uint8(cd[(arg4 + 36)]) <= 2
    if uint8(cd[(arg4 + 36)]) == 1:
        if not cd[(arg4 + 164)]:
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = stor0
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
            if cd[(arg4 + 164)]:
                if cd[(arg4 + 196)]:
                    _142 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_142)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                else:
                    _144 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_144)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
            else:
                if cd[(arg4 + 196)]:
                    _146 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_146)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                else:
                    _148 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_148)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
        else:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = stor0
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            require cd[(arg4 + cd[(arg4 + 260)] + 36)] >= 64
            if cd[(arg4 + 164)]:
                if cd[(arg4 + 196)]:
                    _186 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_186)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                else:
                    _188 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_188)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
            else:
                if cd[(arg4 + 196)]:
                    _190 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_190)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                else:
                    _192 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
                        revert with 0, '0'
                    s = 0
                    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = s
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
                    if s:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len s] = code.data[15598 len s]
                    t = s - 1
                    idx = address(_192)
                    while idx:
                        require t < 0, Mask(224, 0, s)
                        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 196] = 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 228] = 0, Mask(224, 0, s)
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 260 len ceil32(0, Mask(224, 0, s))] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, Mask(224, 0, s))]
        if not s % 32:
            revert with memory
              from ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
               len 0, Mask(224, 0, s) + 68
        mem[floor32(0, Mask(224, 0, s)) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 260] = mem[floor32(0, Mask(224, 0, s)) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + -(s % 32) + 292 len s % 32]
        revert with memory
          from ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 192
           len floor32(0, Mask(224, 0, s)) + 100
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 64
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args mem[140 len 20], mem[160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 0
    if address(cd[(arg4 + 68)]) == address(ext_call.return_data[0]):
        if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)], cd[(arg4 + 100)], address(this.address), 128, 0
        else:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)], 0, address(this.address), 128, 0
    else:
        if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 100)], address(this.address), 128, 0
        else:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 997 * ext_call.return_data[0]
    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 64
    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]:
        revert with 0, '0'
    s = 0
    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    if s:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len s] = code.data[15598 len s]
    t = s - 1
    idx = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 172 len 20]
    while idx:
        require t < s
        mem[t + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 292 len ceil32(s)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(s)]
    if not s % 32:
        revert with 0, 32, s, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len s]
    mem[floor32(s) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + 292] = mem[floor32(s) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(s) + -(s % 32) + 324 len s % 32]
    revert with 0, 
                32,
                s,
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(s)],
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(s)) + 292 len floor32(s) + -ceil32(s) + 32]
}



}
