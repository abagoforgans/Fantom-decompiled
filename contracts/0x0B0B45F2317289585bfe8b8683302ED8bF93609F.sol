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
    staticcall arg1.balanceOf(address rg1) with:
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
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
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
    if s:
        mem[128 len s] = code.data[15764 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return Array(len=mem[96], data=mem[mem[64] + 64 len floor32(mem[96]) + 32])
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
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160
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
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                    require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _56 = mem[_32 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_32 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_32 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_32 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                    if not _56 % 32:
                        mem[64] = _56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                        mem[_56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                        mem[_56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[_56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                        if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                            revert with memory
                              from _56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                               len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                        mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                        revert with memory
                          from _56 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
                    mem[floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_56 % 32) + 224 len _56 % 32]
                    mem[64] = floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                    mem[floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                    mem[floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                        revert with memory
                          from floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                           len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                    mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 324 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                    revert with memory
                      from floor32(_56) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
                _34 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                _57 = mem[_34 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_34 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_34 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_34 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                if not _57 % 32:
                    mem[64] = _57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                    mem[_57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                    mem[_57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[_57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                        revert with memory
                          from _57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                    mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                    revert with memory
                      from _57 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
                mem[floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_57 % 32) + 224 len _57 % 32]
                mem[64] = floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                mem[floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                    revert with memory
                      from floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 324 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                revert with memory
                  from floor32(_57) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
            if cd[(arg4 + 196)]:
                _36 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                _58 = mem[_36 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_36 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_36 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_36 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                if not _58 % 32:
                    mem[64] = _58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                    mem[_58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                    mem[_58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[_58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                        revert with memory
                          from _58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                    mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                    revert with memory
                      from _58 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
                mem[floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_58 % 32) + 224 len _58 % 32]
                mem[64] = floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                mem[floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                    revert with memory
                      from floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 324 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                revert with memory
                  from floor32(_58) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
            _38 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _59 = mem[_38 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_38 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_38 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_38 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _59 % 32:
                mem[64] = _59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                mem[_59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                mem[_59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                mem[_59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                    revert with memory
                      from _59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
                mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + _59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 292 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
                revert with memory
                  from _59 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 100
            mem[floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_59 % 32) + 224 len _59 % 32]
            mem[64] = floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
            mem[floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
            if not Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32:
                revert with memory
                  from floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] + 68
            mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 324 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32]
            revert with memory
              from floor32(_59) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
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
                _60 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                _94 = mem[_60 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_60 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_60 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_60 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                if not _94 % 32:
                    mem[64] = _94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                    mem[_94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                    mem[_94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                    mem[_94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                        revert with memory
                          from _94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                    mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                    revert with memory
                      from _94 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
                mem[floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_94 % 32) + 224 len _94 % 32]
                mem[64] = floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from floor32(_94) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            _62 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _95 = mem[_62 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_62 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_62 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_62 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _95 % 32:
                mem[64] = _95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                mem[_95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                mem[_95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[_95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from _95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from _95 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            mem[floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_95 % 32) + 224 len _95 % 32]
            mem[64] = floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from floor32(_95) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        if cd[(arg4 + 196)]:
            _64 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _96 = mem[_64 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_64 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_64 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_64 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _96 % 32:
                mem[64] = _96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                mem[_96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                mem[_96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[_96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from _96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from _96 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            mem[floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_96 % 32) + 224 len _96 % 32]
            mem[64] = floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from floor32(_96) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        _66 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
        require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        _97 = mem[_66 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_66 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_66 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_66 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
        if not _97 % 32:
            mem[64] = _97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
            mem[_97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
            mem[_97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[_97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from _97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from _97 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        mem[floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_97 % 32) + 224 len _97 % 32]
        mem[64] = floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
        mem[floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
        mem[floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
        mem[floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
            revert with memory
              from floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
        mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
        revert with memory
          from floor32(_97) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
           len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
    require uint8(cd[(arg4 + 36)]) <= 2
    if uint8(cd[(arg4 + 36)]) == 1:
        if not cd[(arg4 + 164)]:
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = stor0
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
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
                    _158 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                    require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    _250 = mem[_158 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_158 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_158 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_158 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                    if not _250 % 32:
                        mem[64] = _250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                        mem[_250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                        mem[_250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                        mem[_250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                            revert with memory
                              from _250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                               len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                        mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                        revert with memory
                          from _250 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
                    mem[floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_250 % 32) + 224 len _250 % 32]
                    mem[64] = floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                    mem[floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                    mem[floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                    mem[floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                        revert with memory
                          from floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                           len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                    mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                    revert with memory
                      from floor32(_250) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
                _160 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                _251 = mem[_160 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_160 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_160 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_160 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                if not _251 % 32:
                    mem[64] = _251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                    mem[_251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                    mem[_251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                    mem[_251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                        revert with memory
                          from _251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                    mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                    revert with memory
                      from _251 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
                mem[floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_251 % 32) + 224 len _251 % 32]
                mem[64] = floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from floor32(_251) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            if cd[(arg4 + 196)]:
                _162 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                _252 = mem[_162 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_162 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_162 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_162 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                if not _252 % 32:
                    mem[64] = _252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                    mem[_252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                    mem[_252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                    mem[_252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                        revert with memory
                          from _252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                    mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                    revert with memory
                      from _252 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
                mem[floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_252 % 32) + 224 len _252 % 32]
                mem[64] = floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from floor32(_252) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            _164 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _253 = mem[_164 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_164 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_164 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_164 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _253 % 32:
                mem[64] = _253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                mem[_253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                mem[_253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[_253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from _253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from _253 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            mem[floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_253 % 32) + 224 len _253 % 32]
            mem[64] = floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from floor32(_253) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        require ext_code.size(stor1)
        call stor1.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = stor0
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
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
                _254 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                _330 = mem[_254 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_254 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_254 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_254 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
                if not _330 % 32:
                    mem[64] = _330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                    mem[_330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                    mem[_330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                    mem[_330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                        revert with memory
                          from _330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                           len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                    mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                    revert with memory
                      from _330 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
                mem[floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_330 % 32) + 224 len _330 % 32]
                mem[64] = floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from floor32(_330) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            _256 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _331 = mem[_256 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_256 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_256 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_256 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _331 % 32:
                mem[64] = _331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                mem[_331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                mem[_331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[_331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from _331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from _331 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            mem[floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_331 % 32) + 224 len _331 % 32]
            mem[64] = floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from floor32(_331) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        if cd[(arg4 + 196)]:
            _258 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _332 = mem[_258 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_258 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_258 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_258 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _332 % 32:
                mem[64] = _332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                mem[_332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
                mem[_332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
                mem[_332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                    revert with memory
                      from _332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                       len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
                mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
                revert with memory
                  from _332 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
            mem[floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_332 % 32) + 224 len _332 % 32]
            mem[64] = floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from floor32(_332) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        _260 = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
        require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        _333 = mem[_260 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(mem[_260 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[_260 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[_260 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
        if not _333 % 32:
            mem[64] = _333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
            mem[_333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 32
            mem[_333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
            mem[_333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
                revert with memory
                  from _333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
                   len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
            mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + _333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
            revert with memory
              from _333 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
               len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
        mem[floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_333 % 32) + 224 len _333 % 32]
        mem[64] = floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
        mem[floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
        mem[floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]
        mem[floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len ceil32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28])]
        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32:
            revert with memory
              from floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
               len 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] + 68
        mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28] % 32]
        revert with memory
          from floor32(_333) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
           len floor32(0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164 len 28]) + 100
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
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mem[140 len 20], mem[160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192
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
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args stor0
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 64
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            _1098 = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
            if not _1098 % 32:
                mem[64] = _1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
                mem[_1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
                mem[_1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
                mem[_1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
                    revert with 0, 
                                32,
                                mem[_1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
                mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
                revert with 0, 
                            32,
                            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                            mem[_1098 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
            mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_1098 % 32) + 256 len _1098 % 32]
            mem[64] = floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256
            mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 32
            mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
            mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
                revert with 0, 
                            32,
                            mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
            mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 356 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
            revert with 0, 
                        32,
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                        mem[floor32(_1098) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args stor0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 997 * ext_call.return_data[0]
        require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 64
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
        require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        _1100 = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
        if not _1100 % 32:
            mem[64] = _1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[_1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[_1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
            mem[_1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
                revert with 0, 
                            32,
                            mem[_1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
            mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
            revert with 0, 
                        32,
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                        mem[_1100 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
        mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_1100 % 32) + 256 len _1100 % 32]
        mem[64] = floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256
        mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 32
        mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
        mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
            revert with 0, 
                        32,
                        mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
        mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 356 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
        revert with 0, 
                    32,
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                    mem[floor32(_1100) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
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
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args stor0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 997 * ext_call.return_data[0]
        require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 64
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
        require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        _1102 = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
        if not _1102 % 32:
            mem[64] = _1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
            mem[_1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
            mem[_1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
            mem[_1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
            if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
                revert with 0, 
                            32,
                            mem[_1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
            mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
            revert with 0, 
                        32,
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                        mem[_1102 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
        mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_1102 % 32) + 256 len _1102 % 32]
        mem[64] = floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256
        mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 32
        mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
        mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
            revert with 0, 
                        32,
                        mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
        mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 356 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
        revert with 0, 
                    32,
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                    mem[floor32(_1102) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
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
    staticcall stor1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = stor0
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args stor0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 997 * ext_call.return_data[0]
    require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] >= 64
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
    require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + 64 <= Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 228)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)])] + 32
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
    _1104 = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 192 len ceil32(mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160])]
    if not _1104 % 32:
        mem[64] = _1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224
        mem[_1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = 32
        mem[_1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
        mem[_1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
        if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
            revert with 0, 
                        32,
                        mem[_1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
        mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + _1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 324 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
        revert with 0, 
                    32,
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                    mem[_1104 + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
    mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(_1104 % 32) + 256 len _1104 % 32]
    mem[64] = floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256
    mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 32
    mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]
    mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len ceil32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192])]
    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32:
        revert with 0, 
                    32,
                    mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] + 32]
    mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = mem[floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + -(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32) + 356 len mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] % 32]
    revert with 0, 
                32,
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192],
                mem[floor32(_1104) + ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192]) + 32]
}



}
