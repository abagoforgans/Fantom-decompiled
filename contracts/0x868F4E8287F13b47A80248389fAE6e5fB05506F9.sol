contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
uint8 stor1;
address stor1; offset 8
address sub_c70968e7Address;
uint256 sub_296f9ca4;
address beneficiaryAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address wEthAddress;
uint256 limit;

function sub_296f9ca4(?) {
    return sub_296f9ca4
}

function sub_371f274d(?) {
    return bool(uint8(stor4.field_160))
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function limit() {
    return limit
}

function sub_c70968e7(?) {
    return sub_c70968e7Address
}

function wEth() {
    return wEthAddress
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_a2899a25(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    wEthAddress = arg1
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function updateLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    limit = arg1
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function sub_e4fdd485(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call arg1 with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_027d6f56(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_627d51a2(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128 len 64] = code.data[12081 len 64]
    require 0 < arg3.length
    _4 = mem[128]
    require 1 < arg3.length
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 196] = mem[172 len 20]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[172 len 20]
    mem[(32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        return code.data[12081 len 64]
    require (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)
    mem[(32 * arg3.length) + 128] = (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1
    if arg3.length != 4:
        return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
               code.data[12113 len 32]
    require 2 < arg3.length
    require 3 < arg3.length
    require ext_code.size(address(_4))
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1:
        return 0, code.data[12113 len 32]
    require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * sub_296f9ca4)
    return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
           ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * sub_296f9ca4)) + 1
}

function sub_aa330671(?) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(address(call.data[100]))
    staticcall address(call.data[100]).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'seem being overruned'
    if arg1:
        if not arg6 * arg1 / 100:
            revert with 0, 'borrow amount is 0'
        require sub_296f9ca4
        mem[(32 * arg4.length) + 192 len 64] = code.data[12081 len 64]
        mem[(32 * arg4.length) + 192] = (1000 * arg6 * arg1 / 100 / sub_296f9ca4) + 1
        mem[(32 * arg4.length) + 288] = arg2
        mem[(32 * arg4.length) + 320 len 64] = call.data[68 len 64]
        mem[(32 * arg4.length) + 384] = arg6 * arg1 / 100
        mem[(32 * arg4.length) + 448] = address(call.data[100])
        mem[(32 * arg4.length) + 480] = address(call.data[68])
        mem[(32 * arg4.length) + 512 len 64] = (1000 * arg6 * arg1 / 100 / sub_296f9ca4) + 1, code.data[12113 len 32]
        mem[(32 * arg4.length) + 416] = 288
        mem[(32 * arg4.length) + 576] = arg4.length
        mem[(32 * arg4.length) + 608 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        require 1 < arg4.length
        sub_c70968e7Address = mem[236 len 20]
        require 1 < arg4.length
        mem[(64 * arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if call.data[80 len 20] > arg3:
            mem[(64 * arg4.length) + 612] = 0
            mem[(64 * arg4.length) + 644] = arg6 * arg1 / 100
            mem[(64 * arg4.length) + 676] = this.address
            mem[(64 * arg4.length) + 708] = 128
            mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
            mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
            if not (96 * arg4.length) + 320 % 32:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg6 * arg1 / 100, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
            else:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg6 * arg1 / 100, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(stor4.field_160):
                if wEthAddress != call.data[80 len 20]:
                    if arg5:
                        if arg5:
                            require ext_code.size(wEthAddress)
                            staticcall wEthAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(call.data[68]))
                            staticcall address(call.data[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(call.data[68]))
                            staticcall address(call.data[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(address(call.data[68])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                            call address(call.data[68]) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if call.data[68]:
                                    require call.data[68] >= 32
                                    if not call.data[100]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(64 * arg4.length) + 827 len 13]
                            else:
                                mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(64 * arg4.length) + 740]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 828 len 13]
                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                            require ext_code.size(arg5)
                            if address(call.data[68]) >= wEthAddress:
                                call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                            else:
                                call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[(64 * arg4.length) + 612] = arg6 * arg1 / 100
            mem[(64 * arg4.length) + 644] = 0
            mem[(64 * arg4.length) + 676] = this.address
            mem[(64 * arg4.length) + 708] = 128
            mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
            mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
            if (96 * arg4.length) + 320 % 32:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg6 * arg1 / 100, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(64 * arg4.length) + 827 len 13]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 828 len 13]
                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                require ext_code.size(arg5)
                                if address(call.data[68]) >= wEthAddress:
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg6 * arg1 / 100, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(64 * arg4.length) + 800 len 4] = ext_call.return_data[20 len 4]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + 712] = 32
                                        mem[(64 * arg4.length) + 744] = 32
                                        mem[(64 * arg4.length) + 776] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + 708
                                           len (127 * arg4.length) + 100
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + 712] = 32
                                            mem[(64 * arg4.length) + 744] = 51
                                            mem[(64 * arg4.length) + 776 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + 708
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + 744] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + 776] = 0
                                    else:
                                        mem[(64 * arg4.length) + 744] = 0
                                        mem[(64 * arg4.length) + 776] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + 808] = this.address
                                    mem[(64 * arg4.length) + 840] = 128
                                    mem[(64 * arg4.length) + 872] = 0
                                    mem[(64 * arg4.length) + 904 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + 744 len (127 * arg4.length) + 160]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + ceil32(return_data.size) + 709
                                           len (127 * arg4.length) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 51
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + ceil32(return_data.size) + 709
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 0
                                    else:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 0
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 809] = this.address
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 841] = 128
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 873] = 0
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 905 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + ceil32(return_data.size) + 745 len (127 * arg4.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(call.data[100]))
        call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg6 * ext_call.return_data[0] / 100:
            revert with 0, 'borrow amount is 0'
        require sub_296f9ca4
        mem[(32 * arg4.length) + 192 len 64] = code.data[12081 len 64]
        mem[(32 * arg4.length) + 192] = (1000 * arg6 * ext_call.return_data[0] / 100 / sub_296f9ca4) + 1
        mem[(32 * arg4.length) + 288] = arg2
        mem[(32 * arg4.length) + 320 len 64] = call.data[68 len 64]
        mem[(32 * arg4.length) + 384] = arg6 * ext_call.return_data[0] / 100
        mem[(32 * arg4.length) + 448] = address(call.data[100])
        mem[(32 * arg4.length) + 480] = address(call.data[68])
        mem[(32 * arg4.length) + 512 len 64] = (1000 * arg6 * ext_call.return_data[0] / 100 / sub_296f9ca4) + 1, code.data[12113 len 32]
        mem[(32 * arg4.length) + 416] = 288
        mem[(32 * arg4.length) + 576] = arg4.length
        mem[(32 * arg4.length) + 608 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        require 1 < arg4.length
        sub_c70968e7Address = mem[236 len 20]
        require 1 < arg4.length
        mem[(64 * arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if call.data[80 len 20] > arg3:
            mem[(64 * arg4.length) + 612] = 0
            mem[(64 * arg4.length) + 644] = arg6 * ext_call.return_data[0] / 100
            mem[(64 * arg4.length) + 676] = this.address
            mem[(64 * arg4.length) + 708] = 128
            mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
            mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
            if (96 * arg4.length) + 320 % 32:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg6 * ext_call.return_data[0] / 100, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(64 * arg4.length) + 827 len 13]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 828 len 13]
                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                require ext_code.size(arg5)
                                if address(call.data[68]) >= wEthAddress:
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg6 * ext_call.return_data[0] / 100, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(64 * arg4.length) + 800 len 4] = ext_call.return_data[20 len 4]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + 712] = 32
                                        mem[(64 * arg4.length) + 744] = 32
                                        mem[(64 * arg4.length) + 776] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + 708
                                           len (127 * arg4.length) + 100
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + 712] = 32
                                            mem[(64 * arg4.length) + 744] = 51
                                            mem[(64 * arg4.length) + 776 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + 708
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + 744] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + 776] = 0
                                    else:
                                        mem[(64 * arg4.length) + 744] = 0
                                        mem[(64 * arg4.length) + 776] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + 808] = this.address
                                    mem[(64 * arg4.length) + 840] = 128
                                    mem[(64 * arg4.length) + 872] = 0
                                    mem[(64 * arg4.length) + 904 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + 744 len (127 * arg4.length) + 160]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + ceil32(return_data.size) + 709
                                           len (127 * arg4.length) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 51
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + ceil32(return_data.size) + 709
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 0
                                    else:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 0
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 809] = this.address
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 841] = 128
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 873] = 0
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 905 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + ceil32(return_data.size) + 745 len (127 * arg4.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[(64 * arg4.length) + 612] = arg6 * ext_call.return_data[0] / 100
            mem[(64 * arg4.length) + 644] = 0
            mem[(64 * arg4.length) + 676] = this.address
            mem[(64 * arg4.length) + 708] = 128
            mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
            mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
            if not (96 * arg4.length) + 320 % 32:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg6 * ext_call.return_data[0] / 100, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(64 * arg4.length) + 827 len 13]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 828 len 13]
                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                require ext_code.size(arg5)
                                if address(call.data[68]) >= wEthAddress:
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                else:
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg6 * ext_call.return_data[0] / 100, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(64 * arg4.length) + 800 len 4] = ext_call.return_data[20 len 4]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + 712] = 32
                                        mem[(64 * arg4.length) + 744] = 32
                                        mem[(64 * arg4.length) + 776] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + 708
                                           len (127 * arg4.length) + 100
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + 712] = 32
                                            mem[(64 * arg4.length) + 744] = 51
                                            mem[(64 * arg4.length) + 776 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + 708
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + 744] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + 776] = 0
                                    else:
                                        mem[(64 * arg4.length) + 744] = 0
                                        mem[(64 * arg4.length) + 776] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + 808] = this.address
                                    mem[(64 * arg4.length) + 840] = 128
                                    mem[(64 * arg4.length) + 872] = 0
                                    mem[(64 * arg4.length) + 904 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + 744 len (127 * arg4.length) + 160]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + ceil32(return_data.size) + 709
                                           len (127 * arg4.length) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 51
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + ceil32(return_data.size) + 709
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 0
                                    else:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 0
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 809] = this.address
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 841] = 128
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 873] = 0
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 905 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + ceil32(return_data.size) + 745 len (127 * arg4.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_1ae0d31c(?) {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(address(call.data[100]))
    staticcall address(call.data[100]).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        emit 0xca594936: arg1, ext_call.return_data[0]
    else:
        if arg1:
            if not arg7 * arg1 / 100:
                revert with 0, 'borrow amount is 0'
            mem[(32 * arg3.length) + 192 len 64] = code.data[12081 len 64]
            mem[(32 * arg3.length) + 256 len 64] = code.data[12081 len 64]
            require 0 < arg3.length
            require 1 < arg3.length
            require ext_code.size(address(call.data[68]))
            staticcall address(call.data[68]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[204 len 20])
            staticcall mem[204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg7 * arg1 / 100:
                if not code.data[12081 len 32]:
                    revert with 0, 'didnt get uniswap path'
                mem[(32 * arg3.length) + 352] = arg2
                mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
                mem[(32 * arg3.length) + 448] = arg7 * arg1 / 100
                mem[(32 * arg3.length) + 512] = arg4
                mem[(32 * arg3.length) + 544] = arg5
                mem[(32 * arg3.length) + 576 len 64] = code.data[12081 len 64]
                mem[(32 * arg3.length) + 480] = 288
                mem[(32 * arg3.length) + 640] = arg3.length
                mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                require 1 < arg3.length
                sub_c70968e7Address = mem[236 len 20]
                require 0 < arg3.length
                require 1 < arg3.length
                mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if call.data[80 len 20] >= mem[204 len 20]:
                    mem[(64 * arg3.length) + 676] = 0
                    mem[(64 * arg3.length) + 708] = arg7 * arg1 / 100
                    mem[(64 * arg3.length) + 740] = this.address
                    mem[(64 * arg3.length) + 772] = 128
                    mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                    mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                    if not (96 * arg3.length) + 320 % 32:
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg7 * arg1 / 100, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                    else:
                        mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg7 * arg1 / 100, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(stor4.field_160):
                        if wEthAddress != arg5:
                            if arg6:
                                if arg6:
                                    require ext_code.size(wEthAddress)
                                    staticcall wEthAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg5)
                                    staticcall arg5.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg5)
                                    staticcall arg5.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(arg5):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                    call arg5 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if call.data[68]:
                                            require call.data[68] >= 32
                                            if not call.data[100]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(64 * arg3.length) + 891 len 13]
                                    else:
                                        mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(64 * arg3.length) + 804]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    require ext_code.size(arg6)
                                    if arg5 >= wEthAddress:
                                        call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(64 * arg3.length) + 676] = arg7 * arg1 / 100
                    mem[(64 * arg3.length) + 708] = 0
                    mem[(64 * arg3.length) + 740] = this.address
                    mem[(64 * arg3.length) + 772] = 128
                    mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                    mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                    if not (96 * arg3.length) + 320 % 32:
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg7 * arg1 / 100, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                    else:
                        mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg7 * arg1 / 100, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(stor4.field_160):
                        if wEthAddress != arg5:
                            if arg6:
                                if arg6:
                                    require ext_code.size(wEthAddress)
                                    staticcall wEthAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg5)
                                    staticcall arg5.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg5)
                                    staticcall arg5.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(arg5):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                    mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                    call arg5 with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg3.length) + 776] = 32
                                            mem[(64 * arg3.length) + 808] = 32
                                            mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                            revert with memory
                                              from (64 * arg3.length) + 772
                                               len (127 * arg3.length) + 100
                                        if call.data[68]:
                                            require call.data[68] >= 32
                                            if not call.data[100]:
                                                mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(64 * arg3.length) + 776] = 32
                                                mem[(64 * arg3.length) + 808] = 51
                                                mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                revert with memory
                                                  from (64 * arg3.length) + 772
                                                   len (127 * arg3.length) + 132
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        if arg5 >= wEthAddress:
                                            mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            mem[(64 * arg3.length) + 840] = 0
                                        else:
                                            mem[(64 * arg3.length) + 808] = 0
                                            mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg3.length) + 872] = this.address
                                        mem[(64 * arg3.length) + 904] = 128
                                        mem[(64 * arg3.length) + 936] = 0
                                        mem[(64 * arg3.length) + 968 len 0] = None
                                        require ext_code.size(arg6)
                                        call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                    else:
                                        mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                            revert with memory
                                              from (64 * arg3.length) + ceil32(return_data.size) + 773
                                               len (127 * arg3.length) + 100
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(64 * arg3.length) + 804]:
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                revert with memory
                                                  from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                   len (127 * arg3.length) + 132
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        if arg5 >= wEthAddress:
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                        else:
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                        require ext_code.size(arg6)
                                        call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)
                mem[(32 * arg3.length) + 256] = (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)) + 1
                if arg3.length != 4:
                    if not (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)) + 1:
                        revert with 0, 'didnt get uniswap path'
                    mem[(32 * arg3.length) + 352] = arg2
                    mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
                    mem[(32 * arg3.length) + 448] = arg7 * arg1 / 100
                    mem[(32 * arg3.length) + 512] = arg4
                    mem[(32 * arg3.length) + 544] = arg5
                    mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)) + 1, code.data[12113 len 32]
                    mem[(32 * arg3.length) + 480] = 288
                    mem[(32 * arg3.length) + 640] = arg3.length
                    mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    require 1 < arg3.length
                    sub_c70968e7Address = mem[236 len 20]
                    require 0 < arg3.length
                    require 1 < arg3.length
                    mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if call.data[80 len 20] >= mem[204 len 20]:
                        mem[(64 * arg3.length) + 676] = 0
                        mem[(64 * arg3.length) + 708] = arg7 * arg1 / 100
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if not (96 * arg3.length) + 320 % 32:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * arg1 / 100, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                        else:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * arg1 / 100, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(stor4.field_160):
                            if wEthAddress != arg5:
                                if arg6:
                                    if arg6:
                                        require ext_code.size(wEthAddress)
                                        staticcall wEthAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                        call arg5 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if call.data[68]:
                                                require call.data[68] >= 32
                                                if not call.data[100]:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(64 * arg3.length) + 891 len 13]
                                        else:
                                            mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(64 * arg3.length) + 804]:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        require ext_code.size(arg6)
                                        if arg5 >= wEthAddress:
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        else:
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(64 * arg3.length) + 676] = arg7 * arg1 / 100
                        mem[(64 * arg3.length) + 708] = 0
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if not (96 * arg3.length) + 320 % 32:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * arg1 / 100, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + 891 len 13]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            require ext_code.size(arg6)
                                            if arg5 >= wEthAddress:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            else:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * arg1 / 100, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + 776] = 32
                                                    mem[(64 * arg3.length) + 808] = 32
                                                    mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + 772
                                                       len (127 * arg3.length) + 100
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + 776] = 32
                                                        mem[(64 * arg3.length) + 808] = 51
                                                        mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + 772
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + 840] = 0
                                                else:
                                                    mem[(64 * arg3.length) + 808] = 0
                                                    mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + 872] = this.address
                                                mem[(64 * arg3.length) + 904] = 128
                                                mem[(64 * arg3.length) + 936] = 0
                                                mem[(64 * arg3.length) + 968 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                       len (127 * arg3.length) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                                else:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require 2 < arg3.length
                    require 3 < arg3.length
                    require ext_code.size(mem[204 len 20])
                    staticcall mem[204 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[300 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[268 len 20])
                    staticcall mem[268 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[300 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)) + 1:
                        revert with 0, 'didnt get uniswap path'
                    require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4) * sub_296f9ca4)
                    if not (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)) + 1:
                        revert with 0, 'didnt get uniswap path'
                    mem[(32 * arg3.length) + 352] = arg2
                    mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
                    mem[(32 * arg3.length) + 448] = arg7 * arg1 / 100
                    mem[(32 * arg3.length) + 512] = arg4
                    mem[(32 * arg3.length) + 544] = arg5
                    mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4)) + 1, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg7 * arg1 / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * arg1 / 100 * sub_296f9ca4) * sub_296f9ca4)) + 1
                    mem[(32 * arg3.length) + 480] = 288
                    mem[(32 * arg3.length) + 640] = arg3.length
                    mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    require 1 < arg3.length
                    sub_c70968e7Address = mem[236 len 20]
                    require 0 < arg3.length
                    require 1 < arg3.length
                    mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if call.data[80 len 20] < mem[204 len 20]:
                        mem[(64 * arg3.length) + 676] = arg7 * arg1 / 100
                        mem[(64 * arg3.length) + 708] = 0
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if not (96 * arg3.length) + 320 % 32:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * arg1 / 100, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                        else:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * arg1 / 100, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(stor4.field_160):
                            if wEthAddress != arg5:
                                if arg6:
                                    if arg6:
                                        require ext_code.size(wEthAddress)
                                        staticcall wEthAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                        call arg5 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if call.data[68]:
                                                require call.data[68] >= 32
                                                if not call.data[100]:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(64 * arg3.length) + 891 len 13]
                                        else:
                                            mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(64 * arg3.length) + 804]:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        require ext_code.size(arg6)
                                        if arg5 >= wEthAddress:
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        else:
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(64 * arg3.length) + 676] = 0
                        mem[(64 * arg3.length) + 708] = arg7 * arg1 / 100
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if (96 * arg3.length) + 320 % 32:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * arg1 / 100, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + 891 len 13]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            require ext_code.size(arg6)
                                            if arg5 >= wEthAddress:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            else:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * arg1 / 100, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + 776] = 32
                                                    mem[(64 * arg3.length) + 808] = 32
                                                    mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + 772
                                                       len (127 * arg3.length) + 100
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + 776] = 32
                                                        mem[(64 * arg3.length) + 808] = 51
                                                        mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + 772
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + 840] = 0
                                                else:
                                                    mem[(64 * arg3.length) + 808] = 0
                                                    mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + 872] = this.address
                                                mem[(64 * arg3.length) + 904] = 128
                                                mem[(64 * arg3.length) + 936] = 0
                                                mem[(64 * arg3.length) + 968 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                       len (127 * arg3.length) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                                else:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(call.data[100]))
            call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg7 * ext_call.return_data[0] / 100:
                revert with 0, 'borrow amount is 0'
            mem[(32 * arg3.length) + 192 len 64] = code.data[12081 len 64]
            mem[(32 * arg3.length) + 256 len 64] = code.data[12081 len 64]
            require 0 < arg3.length
            require 1 < arg3.length
            require ext_code.size(address(call.data[68]))
            staticcall address(call.data[68]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[204 len 20])
            staticcall mem[204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[236 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg7 * ext_call.return_data[0] / 100:
                if not code.data[12081 len 32]:
                    revert with 0, 'didnt get uniswap path'
                mem[(32 * arg3.length) + 352] = arg2
                mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
                mem[(32 * arg3.length) + 448] = arg7 * ext_call.return_data[0] / 100
                mem[(32 * arg3.length) + 512] = arg4
                mem[(32 * arg3.length) + 544] = arg5
                mem[(32 * arg3.length) + 576 len 64] = code.data[12081 len 64]
                mem[(32 * arg3.length) + 480] = 288
                mem[(32 * arg3.length) + 640] = arg3.length
                mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                require 1 < arg3.length
                sub_c70968e7Address = mem[236 len 20]
                require 0 < arg3.length
                require 1 < arg3.length
                mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if call.data[80 len 20] >= mem[204 len 20]:
                    mem[(64 * arg3.length) + 676] = 0
                    mem[(64 * arg3.length) + 708] = arg7 * ext_call.return_data[0] / 100
                    mem[(64 * arg3.length) + 740] = this.address
                    mem[(64 * arg3.length) + 772] = 128
                    mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                    mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                    if not (96 * arg3.length) + 320 % 32:
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg7 * ext_call.return_data[0] / 100, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                    else:
                        mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg7 * ext_call.return_data[0] / 100, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                else:
                    mem[(64 * arg3.length) + 676] = arg7 * ext_call.return_data[0] / 100
                    mem[(64 * arg3.length) + 708] = 0
                    mem[(64 * arg3.length) + 740] = this.address
                    mem[(64 * arg3.length) + 772] = 128
                    mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                    mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                    if not (96 * arg3.length) + 320 % 32:
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg7 * ext_call.return_data[0] / 100, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                    else:
                        mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                        require ext_code.size(mem[236 len 20])
                        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg7 * ext_call.return_data[0] / 100, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != arg5:
                        if arg6:
                            if arg6:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg5)
                                staticcall arg5.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg5)
                                staticcall arg5.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg5):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                call arg5 with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg3.length) + 776] = 32
                                        mem[(64 * arg3.length) + 808] = 32
                                        mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg3.length) + 772
                                           len (127 * arg3.length) + 100
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg3.length) + 776] = 32
                                            mem[(64 * arg3.length) + 808] = 51
                                            mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg3.length) + 772
                                               len (127 * arg3.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if arg5 >= wEthAddress:
                                        mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg3.length) + 840] = 0
                                    else:
                                        mem[(64 * arg3.length) + 808] = 0
                                        mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg3.length) + 872] = this.address
                                    mem[(64 * arg3.length) + 904] = 128
                                    mem[(64 * arg3.length) + 936] = 0
                                    mem[(64 * arg3.length) + 968 len 0] = None
                                    require ext_code.size(arg6)
                                    call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                else:
                                    mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg3.length) + ceil32(return_data.size) + 773
                                           len (127 * arg3.length) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg3.length) + 804]:
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg3.length) + ceil32(return_data.size) + 773
                                               len (127 * arg3.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if arg5 >= wEthAddress:
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                    else:
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                    require ext_code.size(arg6)
                                    call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)
                mem[(32 * arg3.length) + 256] = (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)) + 1
                if arg3.length != 4:
                    if not (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)) + 1:
                        revert with 0, 'didnt get uniswap path'
                    mem[(32 * arg3.length) + 352] = arg2
                    mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
                    mem[(32 * arg3.length) + 448] = arg7 * ext_call.return_data[0] / 100
                    mem[(32 * arg3.length) + 512] = arg4
                    mem[(32 * arg3.length) + 544] = arg5
                    mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)) + 1, code.data[12113 len 32]
                    mem[(32 * arg3.length) + 480] = 288
                    mem[(32 * arg3.length) + 640] = arg3.length
                    mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    require 1 < arg3.length
                    sub_c70968e7Address = mem[236 len 20]
                    require 0 < arg3.length
                    require 1 < arg3.length
                    mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if call.data[80 len 20] >= mem[204 len 20]:
                        mem[(64 * arg3.length) + 676] = 0
                        mem[(64 * arg3.length) + 708] = arg7 * ext_call.return_data[0] / 100
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if not (96 * arg3.length) + 320 % 32:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * ext_call.return_data[0] / 100, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                        else:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * ext_call.return_data[0] / 100, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(stor4.field_160):
                            if wEthAddress != arg5:
                                if arg6:
                                    if arg6:
                                        require ext_code.size(wEthAddress)
                                        staticcall wEthAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                        call arg5 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if call.data[68]:
                                                require call.data[68] >= 32
                                                if not call.data[100]:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(64 * arg3.length) + 891 len 13]
                                        else:
                                            mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(64 * arg3.length) + 804]:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        require ext_code.size(arg6)
                                        if arg5 >= wEthAddress:
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        else:
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(64 * arg3.length) + 676] = arg7 * ext_call.return_data[0] / 100
                        mem[(64 * arg3.length) + 708] = 0
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if (96 * arg3.length) + 320 % 32:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * ext_call.return_data[0] / 100, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + 891 len 13]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            require ext_code.size(arg6)
                                            if arg5 >= wEthAddress:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            else:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * ext_call.return_data[0] / 100, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + 776] = 32
                                                    mem[(64 * arg3.length) + 808] = 32
                                                    mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + 772
                                                       len (127 * arg3.length) + 100
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + 776] = 32
                                                        mem[(64 * arg3.length) + 808] = 51
                                                        mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + 772
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + 840] = 0
                                                else:
                                                    mem[(64 * arg3.length) + 808] = 0
                                                    mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + 872] = this.address
                                                mem[(64 * arg3.length) + 904] = 128
                                                mem[(64 * arg3.length) + 936] = 0
                                                mem[(64 * arg3.length) + 968 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                       len (127 * arg3.length) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                                else:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require 2 < arg3.length
                    require 3 < arg3.length
                    require ext_code.size(mem[204 len 20])
                    staticcall mem[204 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[300 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(mem[268 len 20])
                    staticcall mem[268 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[300 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)) + 1:
                        revert with 0, 'didnt get uniswap path'
                    require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4) * sub_296f9ca4)
                    if not (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)) + 1:
                        revert with 0, 'didnt get uniswap path'
                    mem[(32 * arg3.length) + 352] = arg2
                    mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
                    mem[(32 * arg3.length) + 448] = arg7 * ext_call.return_data[0] / 100
                    mem[(32 * arg3.length) + 512] = arg4
                    mem[(32 * arg3.length) + 544] = arg5
                    mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4)) + 1, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg7 * ext_call.return_data[0] / 100 / (ext_call.return_data[0] * sub_296f9ca4) - (arg7 * ext_call.return_data[0] / 100 * sub_296f9ca4) * sub_296f9ca4)) + 1
                    mem[(32 * arg3.length) + 480] = 288
                    mem[(32 * arg3.length) + 640] = arg3.length
                    mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    require 1 < arg3.length
                    sub_c70968e7Address = mem[236 len 20]
                    require 0 < arg3.length
                    require 1 < arg3.length
                    mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if call.data[80 len 20] >= mem[204 len 20]:
                        mem[(64 * arg3.length) + 676] = 0
                        mem[(64 * arg3.length) + 708] = arg7 * ext_call.return_data[0] / 100
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if not (96 * arg3.length) + 320 % 32:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * ext_call.return_data[0] / 100, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                        else:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg7 * ext_call.return_data[0] / 100, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(stor4.field_160):
                            if wEthAddress != arg5:
                                if arg6:
                                    if arg6:
                                        require ext_code.size(wEthAddress)
                                        staticcall wEthAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg5)
                                        staticcall arg5.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(arg5):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                        mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                        call arg5 with:
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(64 * arg3.length) + 776] = 32
                                                mem[(64 * arg3.length) + 808] = 32
                                                mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (64 * arg3.length) + 772
                                                   len (127 * arg3.length) + 100
                                            if call.data[68]:
                                                require call.data[68] >= 32
                                                if not call.data[100]:
                                                    mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + 776] = 32
                                                    mem[(64 * arg3.length) + 808] = 51
                                                    mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                    revert with memory
                                                      from (64 * arg3.length) + 772
                                                       len (127 * arg3.length) + 132
                                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            if arg5 >= wEthAddress:
                                                mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + 840] = 0
                                            else:
                                                mem[(64 * arg3.length) + 808] = 0
                                                mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            mem[(64 * arg3.length) + 872] = this.address
                                            mem[(64 * arg3.length) + 904] = 128
                                            mem[(64 * arg3.length) + 936] = 0
                                            mem[(64 * arg3.length) + 968 len 0] = None
                                            require ext_code.size(arg6)
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                        else:
                                            mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                   len (127 * arg3.length) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[(64 * arg3.length) + 804]:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                    revert with memory
                                                      from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                       len (127 * arg3.length) + 132
                                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            if arg5 >= wEthAddress:
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                            else:
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                            mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                            require ext_code.size(arg6)
                                            call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(64 * arg3.length) + 676] = arg7 * ext_call.return_data[0] / 100
                        mem[(64 * arg3.length) + 708] = 0
                        mem[(64 * arg3.length) + 740] = this.address
                        mem[(64 * arg3.length) + 772] = 128
                        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
                        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
                        if not (96 * arg3.length) + 320 % 32:
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * ext_call.return_data[0] / 100, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + 891 len 13]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 892 len 13]
                                            require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            require ext_code.size(arg6)
                                            if arg5 >= wEthAddress:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                            else:
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
                            require ext_code.size(mem[236 len 20])
                            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg7 * ext_call.return_data[0] / 100, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint8(stor4.field_160):
                                if wEthAddress != arg5:
                                    if arg6:
                                        if arg6:
                                            require ext_code.size(wEthAddress)
                                            staticcall wEthAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(arg5)
                                            staticcall arg5.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            if not ext_code.hash(arg5):
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            mem[(64 * arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, ext_call.return_data[0 len 28]
                                            mem[(64 * arg3.length) + 864 len 4] = ext_call.return_data[20 len 4]
                                            call arg5 with:
                                                 gas gas_remaining wei
                                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + 776] = 32
                                                    mem[(64 * arg3.length) + 808] = 32
                                                    mem[(64 * arg3.length) + 840] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + 772
                                                       len (127 * arg3.length) + 100
                                                if call.data[68]:
                                                    require call.data[68] >= 32
                                                    if not call.data[100]:
                                                        mem[(64 * arg3.length) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + 776] = 32
                                                        mem[(64 * arg3.length) + 808] = 51
                                                        mem[(64 * arg3.length) + 840 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + 772
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + 808] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + 840] = 0
                                                else:
                                                    mem[(64 * arg3.length) + 808] = 0
                                                    mem[(64 * arg3.length) + 840] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + 872] = this.address
                                                mem[(64 * arg3.length) + 904] = 128
                                                mem[(64 * arg3.length) + 936] = 0
                                                mem[(64 * arg3.length) + 968 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + 808 len (127 * arg3.length) + 160]
                                            else:
                                                mem[(64 * arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 32
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                                                    revert with memory
                                                      from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                       len (127 * arg3.length) + 100
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[(64 * arg3.length) + 804]:
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 773] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 777] = 32
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 51
                                                        mem[(64 * arg3.length) + ceil32(return_data.size) + 841 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                        revert with memory
                                                          from (64 * arg3.length) + ceil32(return_data.size) + 773
                                                           len (127 * arg3.length) + 132
                                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                if arg5 >= wEthAddress:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = 0
                                                else:
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 809] = 0
                                                    mem[(64 * arg3.length) + ceil32(return_data.size) + 841] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 873] = this.address
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 905] = 128
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 937] = 0
                                                mem[(64 * arg3.length) + ceil32(return_data.size) + 969 len 0] = None
                                                require ext_code.size(arg6)
                                                call arg6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * arg3.length) + ceil32(return_data.size) + 809 len (127 * arg3.length) + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wEthAddress)
        staticcall wEthAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > limit:
            require ext_code.size(wEthAddress)
            call wEthAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if sub_c70968e7Address != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe6f6e6c79207065726d697373696f6e65642073776170207061697220616c6c6f7765,
                    mem[ceil32(arg4.length) + 231 len 29]
    if arg1 != this.address:
        revert with 0, 'only myself start the swap'
    mem[ceil32(arg4.length) + 128 len 64] = code.data[12081 len 64]
    mem[ceil32(arg4.length) + 192 len 64] = code.data[12081 len 64]
    require arg4.length >= 288
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg4.length + 32
    require mem[mem[256] + 128] <= 4294967296 and mem[256] + (32 * mem[mem[256] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 256] = mem[mem[256] + 128]
    _14 = mem[_11 + 128]
    mem[ceil32(arg4.length) + 288 len floor32(mem[_11 + 128])] = mem[_11 + 160 len floor32(mem[_11 + 128])]
    _12314 = mem[288]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[224]:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[224]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = mem[300 len 20]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], mem[300 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(mem[300 len 20])
        staticcall mem[300 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _14) + ceil32(arg4.length) + 292] = ext_call.return_data[0]
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _14) + ceil32(arg4.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            _12357 = mem[352]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12357) >> 32
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args _12357, Mask(224, 32, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12357) >> 32) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
        else:
            require 3 < mem[ceil32(arg4.length) + 256]
            _12359 = mem[384]
            require 2 < mem[ceil32(arg4.length) + 256]
            _12368 = mem[ceil32(arg4.length) + 352]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 396 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 356] = _12359
            mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
            mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = unknown_0xa9059cbb(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_12368)):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_12368)):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12359) >> 32
            call address(_12368).mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args _12359, Mask(224, 32, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12359) >> 32) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not arg4.length:
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                else:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 456] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 484 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + 639 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + 552]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                else:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 485 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[204 len 20]
    mem[(32 * _14) + ceil32(arg4.length) + 356] = 0
    mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
    mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = approve(address arg1, uint256 arg2)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[204 len 20], 0
    mem[(32 * _14) + ceil32(arg4.length) + 480 len 4] = 0
    call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
         gas gas_remaining wei
        args 0, Mask(224, 32, 0, mem[204 len 20], 0) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not arg4.length:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                else:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not arg4.length:
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                    call mem[ceil32(arg4.length) + 300 len 20] with:
                                         gas gas_remaining wei
                                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if arg4.length:
                                            require arg4.length >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                    else:
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if arg4.length:
                                            require arg4.length >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                    else:
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if arg4.length:
                                        require arg4.length >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                else:
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            else:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                else:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            else:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            50,
                            0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + 506 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not arg4.length:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                else:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                else:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
    mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        require ext_code.size(mem[172 len 20])
        staticcall mem[172 len 20].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, mem[204 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
        call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12314)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12314))
                staticcall address(_12314).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12314))
                call address(_12314).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not arg4.length:
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if arg4.length:
                                        require arg4.length >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                else:
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if arg4.length:
                                        require arg4.length >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                else:
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                        else:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12314)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12314))
                staticcall address(_12314).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12314))
                call address(_12314).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                revert with 0, 
                            32,
                            50,
                            0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 14]
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(mem[128]), mem[224], address(_12314), mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'liquidation failed',
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(_12314))
            staticcall address(_12314).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_12314))
            call address(_12314).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[ceil32(arg4.length) + 256] != 4:
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            else:
                require 3 < mem[ceil32(arg4.length) + 256]
                require 2 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(mem[128]), mem[224], address(_12314), mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        'liquidation failed',
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require ext_code.size(address(_12314))
        staticcall address(_12314).0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require 3 < mem[ceil32(arg4.length) + 256]
        require 2 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                     gas gas_remaining wei
                    args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                revert with 0, 
                            32,
                            51,
                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
        require 2 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        require 3 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[352], address(this.address), 128, 0
        else:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[352], 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 815 len 4] = mem[372 len 4]
        call mem[ceil32(arg4.length) + 300 len 20] with:
             gas gas_remaining wei
            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723] = return_data.size
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 32
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require return_data.size >= 32
        if mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 51
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require return_data.size >= 32
    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
        revert with 0, 
                    32,
                    50,
                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 507 len 14]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
    call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[224], address(_12314)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            require ext_code.size(address(_12314))
            staticcall address(_12314).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_12314))
            call address(_12314).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[ceil32(arg4.length) + 256] != 4:
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                require 3 < mem[ceil32(arg4.length) + 256]
                require 2 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not arg4.length:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len 13]
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 823 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len 13]
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            50,
                            0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[224], address(_12314)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            require ext_code.size(address(_12314))
            staticcall address(_12314).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_12314))
            call address(_12314).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[ceil32(arg4.length) + 256] != 4:
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                require 3 < mem[ceil32(arg4.length) + 256]
                require 2 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not arg4.length:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len 13]
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 823 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], address(_12314)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(address(_12314))
        staticcall address(_12314).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require 3 < mem[ceil32(arg4.length) + 256]
        require 2 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
             gas gas_remaining wei
            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                revert with 0, 
                            32,
                            51,
                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
        require 2 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        require 3 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[352], address(this.address), 128, 0
        else:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[352], 0, address(this.address), 128, 0
    else:
        require return_data.size >= 32
        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
            revert with 0, 
                        32,
                        50,
                        0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len 14]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], address(_12314)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(address(_12314))
        staticcall address(_12314).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require 3 < mem[ceil32(arg4.length) + 256]
        require 2 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
             gas gas_remaining wei
            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require 2 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            require 3 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[352], address(this.address), 128, 0
            else:
                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[352], 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require return_data.size >= 32
        if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        51,
                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
        require 2 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        require 3 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[352], 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, mem[352], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < mem[ceil32(arg4.length) + 256]
    require 0 < mem[ceil32(arg4.length) + 256]
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] = mem[ceil32(arg4.length) + 332 len 20]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 815 len 4] = mem[372 len 4]
    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if arg4.length:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            51,
                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723] = return_data.size
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 32
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
           len (7 * ceil32(return_data.size)) + 100
    if not return_data.size:
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    require return_data.size >= 32
    if mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 51
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
       len (7 * ceil32(return_data.size)) + 132
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if sub_c70968e7Address != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe6f6e6c79207065726d697373696f6e65642073776170207061697220616c6c6f7765,
                    mem[ceil32(arg4.length) + 231 len 29]
    if arg1 != this.address:
        revert with 0, 'only myself start the swap'
    mem[ceil32(arg4.length) + 128 len 64] = code.data[12081 len 64]
    mem[ceil32(arg4.length) + 192 len 64] = code.data[12081 len 64]
    require arg4.length >= 288
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg4.length + 32
    require mem[mem[256] + 128] <= 4294967296 and mem[256] + (32 * mem[mem[256] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 256] = mem[mem[256] + 128]
    _14 = mem[_11 + 128]
    mem[ceil32(arg4.length) + 288 len floor32(mem[_11 + 128])] = mem[_11 + 160 len floor32(mem[_11 + 128])]
    _12314 = mem[288]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[224]:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[224]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = mem[300 len 20]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], mem[300 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(mem[300 len 20])
        staticcall mem[300 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _14) + ceil32(arg4.length) + 292] = ext_call.return_data[0]
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _14) + ceil32(arg4.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            _12357 = mem[352]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12357) >> 32
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args _12357, Mask(224, 32, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12357) >> 32) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
        else:
            require 3 < mem[ceil32(arg4.length) + 256]
            _12359 = mem[384]
            require 2 < mem[ceil32(arg4.length) + 256]
            _12368 = mem[ceil32(arg4.length) + 352]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 396 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 356] = _12359
            mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
            mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = unknown_0xa9059cbb(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_12368)):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_12368)):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12359) >> 32
            call address(_12368).mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args _12359, Mask(224, 32, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12359) >> 32) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not arg4.length:
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                else:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 456] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 484 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + 639 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + 552]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                else:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 457] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 485 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[204 len 20]
    mem[(32 * _14) + ceil32(arg4.length) + 356] = 0
    mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
    mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = approve(address arg1, uint256 arg2)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[204 len 20], 0
    mem[(32 * _14) + ceil32(arg4.length) + 480 len 4] = 0
    call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
         gas gas_remaining wei
        args 0, Mask(224, 32, 0, mem[204 len 20], 0) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not arg4.length:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                else:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not arg4.length:
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                    call mem[ceil32(arg4.length) + 300 len 20] with:
                                         gas gas_remaining wei
                                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if arg4.length:
                                            require arg4.length >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                    else:
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if arg4.length:
                                            require arg4.length >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                    else:
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if arg4.length:
                                        require arg4.length >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                else:
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            else:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                else:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not return_data.size:
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            else:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                require 2 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                require 3 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                                else:
                                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 1 < mem[ceil32(arg4.length) + 256]
                                    require 0 < mem[ceil32(arg4.length) + 256]
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            50,
                            0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + 506 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not arg4.length:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                else:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                else:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), mem[224], address(_12314)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'liquidation failed'
                    require ext_code.size(address(_12314))
                    staticcall address(_12314).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_12314))
                    call address(_12314).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(arg4.length) + 256] != 4:
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require 3 < mem[ceil32(arg4.length) + 256]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
    mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        require ext_code.size(mem[172 len 20])
        staticcall mem[172 len 20].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, mem[204 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
        call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12314)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12314))
                staticcall address(_12314).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12314))
                call address(_12314).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not arg4.length:
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if arg4.length:
                                        require arg4.length >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                else:
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if arg4.length:
                                        require arg4.length >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                                else:
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 1 < mem[ceil32(arg4.length) + 256]
                                require 0 < mem[ceil32(arg4.length) + 256]
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 622 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                        else:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            require 2 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            require 3 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754] = 0
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[352], address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[352], 0, address(this.address), 128, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 722 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12314)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12314))
                staticcall address(_12314).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12314))
                call address(_12314).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[384 len 28]) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                revert with 0, 
                            32,
                            50,
                            0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 14]
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(mem[128]), mem[224], address(_12314), mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'liquidation failed',
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(_12314))
            staticcall address(_12314).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_12314))
            call address(_12314).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[ceil32(arg4.length) + 256] != 4:
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            else:
                require 3 < mem[ceil32(arg4.length) + 256]
                require 2 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    require 3 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
                    require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                    if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, mem[352], address(this.address), 128, 0
                    else:
                        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(mem[128]), mem[224], address(_12314), mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        'liquidation failed',
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require ext_code.size(address(_12314))
        staticcall address(_12314).0x70a08231 with:
                gas gas_remaining wei
               args this.address, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[352 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require 3 < mem[ceil32(arg4.length) + 256]
        require 2 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 490 len 4] with:
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, mem[384 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                     gas gas_remaining wei
                    args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                revert with 0, 
                            32,
                            51,
                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
        require 2 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        require 3 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[352], address(this.address), 128, 0
        else:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[352], 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 815 len 4] = mem[372 len 4]
        call mem[ceil32(arg4.length) + 300 len 20] with:
             gas gas_remaining wei
            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723] = return_data.size
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 32
            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require return_data.size >= 32
        if mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 51
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require return_data.size >= 32
    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
        revert with 0, 
                    32,
                    50,
                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 507 len 14]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(mem[172 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
    call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg4.length:
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[224], address(_12314)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            require ext_code.size(address(_12314))
            staticcall address(_12314).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_12314))
            call address(_12314).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[ceil32(arg4.length) + 256] != 4:
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                require 3 < mem[ceil32(arg4.length) + 256]
                require 2 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not arg4.length:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len 13]
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 823 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len 13]
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            50,
                            0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[224], address(_12314)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            require ext_code.size(address(_12314))
            staticcall address(_12314).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_12314))
            call address(_12314).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[ceil32(arg4.length) + 256] != 4:
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                require 3 < mem[ceil32(arg4.length) + 256]
                require 2 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                     gas gas_remaining wei
                    args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not arg4.length:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20] with:
                                 gas gas_remaining wei
                                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 1 < mem[ceil32(arg4.length) + 256]
                            require 0 < mem[ceil32(arg4.length) + 256]
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                                 gas gas_remaining wei
                                args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg4.length:
                                    require arg4.length >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                            else:
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                    else:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 657] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 685 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                             gas gas_remaining wei
                            args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len 13]
                    else:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg4.length:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 823 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], address(_12314)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(address(_12314))
        staticcall address(_12314).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require 3 < mem[ceil32(arg4.length) + 256]
        require 2 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
             gas gas_remaining wei
            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                revert with 0, 
                            32,
                            51,
                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
        require 2 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        require 3 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[352], address(this.address), 128, 0
        else:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[352], 0, address(this.address), 128, 0
    else:
        require return_data.size >= 32
        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
            revert with 0, 
                        32,
                        50,
                        0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len 14]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], address(_12314)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(address(_12314))
        staticcall address(_12314).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_12314))
        call address(_12314).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require 3 < mem[ceil32(arg4.length) + 256]
        require 2 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
        call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
             gas gas_remaining wei
            args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not arg4.length:
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            else:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                51,
                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 658] = mem[ceil32(arg4.length) + 332 len 20]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len 4] with:
                         gas gas_remaining wei
                        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require 2 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            require 3 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
            require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
            if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[352], address(this.address), 128, 0
            else:
                call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[352], 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        require return_data.size >= 32
        if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        51,
                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
        require 2 < mem[ceil32(arg4.length) + 256]
        require 0 < mem[ceil32(arg4.length) + 256]
        require 3 < mem[ceil32(arg4.length) + 256]
        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
        if mem[ceil32(arg4.length) + 300 len 20] < mem[ceil32(arg4.length) + 364 len 20]:
            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[352], 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < mem[ceil32(arg4.length) + 256]
            require 0 < mem[ceil32(arg4.length) + 256]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
            call mem[ceil32(arg4.length) + 300 len 20] with:
                 gas gas_remaining wei
                args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
            uint8(stor1.field_0) = 1
            Mask(152, 0, stor1.field_8) = 0
        call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, mem[352], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < mem[ceil32(arg4.length) + 256]
    require 0 < mem[ceil32(arg4.length) + 256]
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] = mem[ceil32(arg4.length) + 332 len 20]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 815 len 4] = mem[372 len 4]
    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, mem[352 len 28]) << 256, 0, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if arg4.length:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            51,
                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723] = return_data.size
    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 32
        mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
           len (7 * ceil32(return_data.size)) + 100
    if not return_data.size:
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    require return_data.size >= 32
    if mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
        uint8(stor1.field_0) = 1
        Mask(152, 0, stor1.field_8) = 0
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 728] = 32
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 760] = 51
    mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 792 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 724
       len (7 * ceil32(return_data.size)) + 132
}



}
