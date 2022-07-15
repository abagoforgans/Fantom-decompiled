contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address addressesProvider;

function addressesProvider() {
    return addressesProvider
}

function _fallback() payable {
  stop
}

function setFailExecutionTransfer(bool arg1) {
    require calldata.size - 4 >= 32
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function executeOperation(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 == 0x1111111111111111111111111111111111111111:
        if arg2 > eth.balance(this.address):
            revert with 0, 'Invalid balance for the contract'
        if uint8(stor0.field_160):
            mem[ceil32(arg4.length) + 128] = arg1
            mem[ceil32(arg4.length) + 160] = arg2
            emit ExecutedWithFail(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3);
        else:
            if arg1 == 0x1111111111111111111111111111111111111111:
                if arg3 + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(addressesProvider)
                staticcall addressesProvider.0x7e701e73 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 0x1111111111111111111111111111111111111111:
                    call ext_call.return_data[12 len 20] with:
                       value arg3 + arg2 wei
                         gas gas_remaining wei
                    if return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe666c6173686c6f616e2072656365697665723a204661696c656420746f2073656e642076616c75,
                                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 237 len 24]
                        emit ExecutedWithSuccess(address(arg1), arg2, arg3);
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe666c6173686c6f616e2072656365697665723a204661696c656420746f2073656e642076616c75,
                                        mem[ceil32(arg4.length) + 236 len 24]
                        mem[ceil32(arg4.length) + 128] = arg1
                        mem[ceil32(arg4.length) + 160] = arg2
                        emit ExecutedWithSuccess(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], arg3);
                else:
                    mem[ceil32(arg4.length) + 164] = ext_call.return_data[12 len 20]
                    mem[ceil32(arg4.length) + 196] = arg3 + arg2
                    mem[ceil32(arg4.length) + 128] = 68
                    mem[64] = ceil32(arg4.length) + 228
                    mem[ceil32(arg4.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(arg4.length) + 228 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 260 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                    call arg1.mem[ceil32(arg4.length) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 232 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg4.length) + 338 len 22]
                    else:
                        mem[ceil32(arg4.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg4.length) + 260]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 339 len 22]
                    emit ExecutedWithSuccess(address(arg1), arg2, arg3);
            else:
                require ext_code.size(arg1)
                call arg1.0xa0712d68 with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(addressesProvider)
                staticcall addressesProvider.0x7e701e73 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 0x1111111111111111111111111111111111111111:
                    call ext_call.return_data[12 len 20] with:
                       value arg3 + arg2 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe666c6173686c6f616e2072656365697665723a204661696c656420746f2073656e642076616c75,
                                        mem[ceil32(arg4.length) + 236 len 24]
                        emit ExecutedWithSuccess(address arg1, uint256 arg2, uint256 arg3):
                                                 0,
                                                 uint128(arg1) << 96,
                                                 arg2,
                                                 arg3,
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe666c6173686c6f616e2072656365697665723a204661696c656420746f2073656e642076616c75,
                                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 237 len 24]
                        emit ExecutedWithSuccess(address(arg1), arg2, arg3);
                else:
                    mem[ceil32(arg4.length) + 128] = 68
                    mem[64] = ceil32(arg4.length) + 228
                    mem[ceil32(arg4.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(arg4.length) + 228 len floor32(0, 68)] = mem[ceil32(arg4.length) + 160 len floor32(0, 68)]
                    mem[ceil32(arg4.length) + floor32(0, 68) + 256 len 4] = mem[ceil32(arg4.length) + floor32(0, 68) + 188 len 4]
                    call arg1.mem[ceil32(arg4.length) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 232 len 0, 68 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg4.length:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg4.length) + 338 len 22]
                    else:
                        mem[ceil32(arg4.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg4.length) + 260]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 339 len 22]
                    emit ExecutedWithSuccess(address(arg1), arg2, arg3);
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            revert with 0, 'Invalid balance for the contract'
        if uint8(stor0.field_160):
            emit ExecutedWithFail(address arg1, uint256 arg2, uint256 arg3):
                                  0,
                                  uint128(arg1) << 96,
                                  arg2,
                                  arg3,
        else:
            if arg1 != 0x1111111111111111111111111111111111111111:
                require ext_code.size(arg1)
                call arg1.0xa0712d68 with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            if arg3 + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x7e701e73 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 == 0x1111111111111111111111111111111111111111:
                call ext_call.return_data[12 len 20] with:
                   value arg3 + arg2 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe666c6173686c6f616e2072656365697665723a204661696c656420746f2073656e642076616c75,
                                    mem[ceil32(arg4.length) + 236 len 24]
                    emit ExecutedWithSuccess(address arg1, uint256 arg2, uint256 arg3):
                                             0,
                                             uint128(arg1) << 96,
                                             arg2,
                                             arg3,
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe666c6173686c6f616e2072656365697665723a204661696c656420746f2073656e642076616c75,
                                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 237 len 24]
                    emit ExecutedWithSuccess(address(arg1), arg2, arg3);
            else:
                mem[ceil32(arg4.length) + 128] = 68
                mem[64] = ceil32(arg4.length) + 228
                mem[ceil32(arg4.length) + 160 len 4] = unknown_0xa9059cbb(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(arg4.length) + 228 len floor32(0, 68)] = mem[ceil32(arg4.length) + 160 len floor32(0, 68)]
                mem[ceil32(arg4.length) + floor32(0, 68) + 256 len 4] = mem[ceil32(arg4.length) + floor32(0, 68) + 188 len 4]
                call arg1.mem[ceil32(arg4.length) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 232 len 0, 68 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg4.length:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg4.length) + 338 len 22]
                else:
                    mem[ceil32(arg4.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg4.length) + 260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 339 len 22]
                emit ExecutedWithSuccess(address(arg1), arg2, arg3);
}



}
