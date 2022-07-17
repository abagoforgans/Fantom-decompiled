contract main {




// =====================  Runtime code  =====================


#
#  - sub_22f081f8(?)
#
const native = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const sub_50d7d613(?) = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const sub_52df107f(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const sub_8ed8ea7e(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


uint8 stor0; offset 160
uint32 stor0;
address stor0;
uint256 stor0;
mapping of uint8 stor1;

function admins(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function init() {
    uint8(stor0.field_160) = 1
}

function owner() {
    if address(stor0.field_0):
        return address(stor0.field_0)
    return 0x982f264ce97365864181df65df4931c593a515ad
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0):
        if address(stor0.field_0) != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
    else:
        if msg.sender != 0x982f264ce97365864181df65df4931c593a515ad:
            revert with 0, 'lOwnable: caller is not the owne'
    stor1[address(arg1)] = 0
}

function renounceOwnership() {
    if address(stor0.field_0):
        if address(stor0.field_0) != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
    else:
        if msg.sender != 0x982f264ce97365864181df65df4931c593a515ad:
            revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(address(stor0.field_0), 0);
    address(stor0.field_0) = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0):
        if address(stor0.field_0) != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
    else:
        if msg.sender != 0x982f264ce97365864181df65df4931c593a515ad:
            revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(stor0.field_0), arg1);
    address(stor0.field_0) = arg1
}

function withdrawNative(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0):
        if address(stor0.field_0) != msg.sender:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
    else:
        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
    if address(stor0.field_0):
        call address(stor0.field_0) with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call 0x982f264ce97365864181df65df4931c593a515ad with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAdmins(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if address(stor0.field_0):
        if address(stor0.field_0) != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
    else:
        if msg.sender != 0x982f264ce97365864181df65df4931c593a515ad:
            revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor0.field_0):
        if address(stor0.field_0) != msg.sender:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        if not address(stor0.field_0):
            mem[260 len 64] = unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65, 0, Mask(224, 32, arg2) >> 32
            call arg1.0x93a515ad with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65, 0, arg2
                if not unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(stor0.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg2
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            if address(stor0.field_0):
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 32, arg2) >> 32
                call arg1 with:
                   funct uint32(stor0.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                mem[260 len 64] = unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65, 0, Mask(224, 32, arg2) >> 32
                call arg1.0x93a515ad with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65, 0, arg2
                    if not unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            if not address(stor0.field_0):
                mem[260 len 64] = unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65, 0, Mask(224, 32, arg2) >> 32
                call arg1.0x93a515ad with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65, 0, arg2
                    if not unknown_0xa9059cbb(?????), 0x982f264ce97365864181df65:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
                call arg1 with:
                   funct uint32(stor0.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
}

function sub_cff0f9b0(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if address(stor0.field_0):
        if msg.sender == address(stor0.field_0):
            require 0 < arg1.length
            _15 = mem[128]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * arg1.length) + 128] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * arg1.length) + 398 len 26]
                if not ext_code.size(address(_15)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * arg1.length) + 292 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                call address(_15) with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg1.length) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + 402 len 22]
                    mem[(32 * arg1.length) + 488 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                else:
                    mem[(32 * arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * arg1.length) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + ceil32(return_data.size) + 403 len 22]
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            require 0 < arg1.length
            _22 = mem[128]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * arg1.length) + 128] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * arg1.length) + 398 len 26]
                if not ext_code.size(address(_22)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * arg1.length) + 292 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                call address(_22) with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg1.length) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + 402 len 22]
                    mem[(32 * arg1.length) + 488 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                else:
                    mem[(32 * arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * arg1.length) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + ceil32(return_data.size) + 403 len 22]
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
            require 0 < arg1.length
            _5 = mem[128]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * arg1.length) + 128] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * arg1.length) + 398 len 26]
                if not ext_code.size(address(_5)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * arg1.length) + 292 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                call address(_5) with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg1.length) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + 402 len 22]
                    mem[(32 * arg1.length) + 488 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                else:
                    mem[(32 * arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * arg1.length) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + ceil32(return_data.size) + 403 len 22]
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            require 0 < arg1.length
            _12 = mem[128]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * arg1.length) + 128] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * arg1.length) + 398 len 26]
                if not ext_code.size(address(_12)):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * arg1.length) + 292 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                call address(_12) with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg1.length) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + 402 len 22]
                    mem[(32 * arg1.length) + 488 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 488 len (32 * arg1.length) - floor32(arg1.length)]
                else:
                    mem[(32 * arg1.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * arg1.length) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * arg1.length) + ceil32(return_data.size) + 403 len 22]
                    mem[(32 * arg1.length) + ceil32(return_data.size) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 489 len (32 * arg1.length) - floor32(arg1.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef5cbdec(?) {
    require calldata.size - 4 >= 64
    if address(stor0.field_0):
        if msg.sender == address(stor0.field_0):
            if address(stor0.field_0):
                if msg.sender == address(stor0.field_0):
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[420 len 0] = 0
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(arg2)
                        if address(stor0.field_0):
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(arg2)
                        if address(stor0.field_0):
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[420 len 0] = 0
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(arg2)
                        if address(stor0.field_0):
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(arg2)
                        if address(stor0.field_0):
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[420 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(arg2)
                    if address(stor0.field_0):
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(arg2)
                        if address(stor0.field_0):
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[420 len 0] = 0
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(arg2)
                        if address(stor0.field_0):
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_c65d5e60(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0):
        if msg.sender == address(stor0.field_0):
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                if address(stor0.field_0):
                    if address(stor0.field_0) != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                else:
                    if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call arg1.0x7e38c29 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    if address(stor0.field_0):
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if not address(stor0.field_0):
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if address(stor0.field_0):
                if msg.sender == address(stor0.field_0):
                    if address(stor0.field_0):
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    else:
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call arg1.0x7e38c29 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        if address(stor0.field_0):
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[420 len 0] = 0
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if address(stor0.field_0):
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if address(stor0.field_0):
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                if address(stor0.field_0):
                    if address(stor0.field_0) != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                else:
                    if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call arg1.0x7e38c29 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(arg1)
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                    if address(stor0.field_0):
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if address(stor0.field_0):
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[420 len 0] = 0
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if address(stor0.field_0):
                if msg.sender == address(stor0.field_0):
                    if address(stor0.field_0):
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if address(stor0.field_0):
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    else:
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        staticcall arg1.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call arg1.0x7e38c29 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(arg1)
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        if address(stor0.field_0):
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if not address(stor0.field_0):
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[420 len 0] = 0
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(arg1)
                            staticcall arg1.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call arg1.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint16(arg1)
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                staticcall arg1.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call arg1.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint16(arg1)
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d59aa65(?) {
    if address(stor0.field_0):
        if msg.sender == address(stor0.field_0):
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                if address(stor0.field_0):
                    if address(stor0.field_0) != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                else:
                    if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                    staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    require return_data.size
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    if address(stor0.field_0):
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if not address(stor0.field_0):
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if address(stor0.field_0):
                if msg.sender == address(stor0.field_0):
                    if address(stor0.field_0):
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    else:
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                    staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        require return_data.size
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        if address(stor0.field_0):
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[420 len 0] = 0
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if address(stor0.field_0):
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if address(stor0.field_0):
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
            if address(stor0.field_0):
                if address(stor0.field_0) != msg.sender:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                if address(stor0.field_0):
                    if address(stor0.field_0) != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                else:
                    if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                    staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                    require return_data.size
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    mem[ceil32(return_data.size) + 553 len 0] = None
                    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                    if address(stor0.field_0):
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    else:
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if address(stor0.field_0):
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[420 len 0] = 0
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            if address(stor0.field_0):
                if msg.sender == address(stor0.field_0):
                    if address(stor0.field_0):
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if address(stor0.field_0):
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    else:
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                    require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                    staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                        call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                        require return_data.size
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        mem[ceil32(return_data.size) + 553 len 0] = None
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        if address(stor0.field_0):
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        else:
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                    if not address(stor0.field_0):
                        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if address(stor0.field_0) != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[420 len 0] = 0
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor1[msg.sender]:
                        revert with 0, '!admin'
                    if not address(stor0.field_0):
                        if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                        require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                        staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            if address(stor0.field_0):
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == address(stor0.field_0):
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor1[msg.sender]:
                                revert with 0, '!admin'
                            require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                            staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354)
                                staticcall 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x7c10108d4b7f4bd659ee57a53b30df928244b354):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x7c10108d4b7f4bd659ee57a53b30df928244b354.0xdc33ae52 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                                if address(stor0.field_0):
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_16f61983(?) {
    if address(stor0.field_0):
        if msg.sender == address(stor0.field_0):
            require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
            staticcall 0xb90dd88692ec4fd4a77584713e3770057272b38.getPendingReferralRewards(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
                call 0x0b90dd88692ec4fd4a77584713e3770057272b38.redeemReferralRewards() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if not address(stor0.field_0):
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if not address(stor0.field_0):
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
            staticcall 0xb90dd88692ec4fd4a77584713e3770057272b38.getPendingReferralRewards(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if not address(stor0.field_0):
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
                call 0x0b90dd88692ec4fd4a77584713e3770057272b38.redeemReferralRewards() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if not address(stor0.field_0):
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
            require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
            staticcall 0xb90dd88692ec4fd4a77584713e3770057272b38.getPendingReferralRewards(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
                call 0x0b90dd88692ec4fd4a77584713e3770057272b38.redeemReferralRewards() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if not address(stor0.field_0):
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[420 len 0] = 0
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor1[msg.sender]:
                revert with 0, '!admin'
            require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
            staticcall 0xb90dd88692ec4fd4a77584713e3770057272b38.getPendingReferralRewards(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if not address(stor0.field_0):
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if not address(stor0.field_0):
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(0xb90dd88692ec4fd4a77584713e3770057272b38)
                call 0x0b90dd88692ec4fd4a77584713e3770057272b38.redeemReferralRewards() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor0.field_0):
                    if msg.sender == address(stor0.field_0):
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        else:
                            if 0x982f264ce97365864181df65df4931c593a515ad != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                        require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                        staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                            if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                revert with 0, 'Address: call to non-contract'
                            mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                            require return_data.size
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                            mem[ceil32(return_data.size) + 553 len 0] = None
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            if address(stor0.field_0):
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            else:
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                        if address(stor0.field_0):
                            if address(stor0.field_0) != msg.sender:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                            require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                            staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                    revert with 0, 'Address: call to non-contract'
                                mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                require return_data.size
                                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[388]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 467 len 22]
                                mem[ceil32(return_data.size) + 553 len 0] = None
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                if address(stor0.field_0):
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                else:
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor1[msg.sender]:
                            revert with 0, '!admin'
                        if address(stor0.field_0):
                            if msg.sender == address(stor0.field_0):
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if msg.sender == 0x982f264ce97365864181df65df4931c593a515ad:
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor1[msg.sender]:
                                    revert with 0, '!admin'
                                require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994)
                                    staticcall 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                                    if not ext_code.size(0x8f9bccb6dd999148da1808ac290f2274b13d7994):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[356 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    mem[420 len 0] = 0
                                    call 0x8f9bccb6dd999148da1808ac290f2274b13d7994.0x7e38c29 with:
                                         gas gas_remaining wei
                                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[420 len 4]
                                    require return_data.size
                                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[388]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 467 len 22]
                                    mem[ceil32(return_data.size) + 553 len 0] = None
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    if address(stor0.field_0):
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(stor0.field_0), block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    else:
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, 0x982f264ce97365864181df65df4931c593a515ad, block.timestamp, 2, mem[ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
}



}
