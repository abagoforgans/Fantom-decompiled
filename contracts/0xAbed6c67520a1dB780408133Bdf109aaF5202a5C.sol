contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address stor0;
uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(address(stor0))
    staticcall address(stor0).0xfbfa77cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_d47f1d14(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] >= 0:
            return 0
    else:
        if stor3 * arg1 / arg1 != stor3:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] >= stor3 * arg1 / 10000:
            return 0
    stor2 = 0
    if not arg2:
        emit 0xef2fb687: arg1, arg2, 0
        return 0
    if stor4 * arg2 / arg2 != stor4:
        revert with 0, 'SafeMath: multiplication overflow'
    emit 0xef2fb687: arg1, arg2, stor4 * arg2 / 10000
    return (stor4 * arg2 / 10000)
}

function sub_74f86153(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor0))
    staticcall address(stor0).0x1fe4a686 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(address(stor0))
        staticcall address(stor0).0xfbfa77cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    require arg1 < 50
    stor5 = arg1
}

function sub_dd98190a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor0))
    staticcall address(stor0).0x1fe4a686 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(address(stor0))
        staticcall address(stor0).0xfbfa77cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    require arg1 < 200
    stor3 = arg1
}

function sub_81ec75a6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor0))
    staticcall address(stor0).0x1fe4a686 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(address(stor0))
        staticcall address(stor0).0xfbfa77cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    require arg1 < 4000
    stor4 = arg1
}

function migrate() payable {
    require ext_code.size(address(stor0))
    staticcall address(stor0).0xfbfa77cf with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor0))
    staticcall address(stor0).0xfbfa77cf with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = 68
    mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(7 * ceil32(return_data.size)) + 196] = 32
    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor1):
        revert with 0, 'Address: call to non-contract'
    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
    mem[(7 * ceil32(return_data.size)) + 328] = 0
    call stor1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
            if not mem[(7 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_746c8fd5(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor5:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if ext_call.return_data[0] < stor2:
            if arg2 < 0:
                if ext_call.return_data[0] < arg2:
                    if ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 196] = address(stor0)
                        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 160] = 68
                        mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                        mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 260] = 32
                        mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor1):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 392] = 0
                        call stor1 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                                if not mem[ceil32(return_data.size) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0x367ebcfd: ext_call.return_data[0]
                    stor2 = arg2
                    return ext_call.return_data[0]
                if arg2:
                    mem[ceil32(return_data.size) + 196] = address(stor0)
                    mem[ceil32(return_data.size) + 228] = arg2
                    mem[ceil32(return_data.size) + 160] = 68
                    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 260] = 32
                    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0
                    mem[ceil32(return_data.size) + 392] = 0
                    call stor1 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                            if not mem[ceil32(return_data.size) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0x367ebcfd: arg2
                stor2 = arg2
                return arg2
            if ext_call.return_data[0] >= 0:
                stor2 = arg2
                return 0
            if ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 196] = address(stor0)
                mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 160] = 68
                mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 260] = 32
                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                        if not mem[ceil32(return_data.size) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x367ebcfd: ext_call.return_data[0]
            stor2 = arg2
            return ext_call.return_data[0]
        if arg2 < 0:
            if stor2 < arg2:
                if stor2:
                    mem[ceil32(return_data.size) + 196] = address(stor0)
                    mem[ceil32(return_data.size) + 228] = stor2
                    mem[ceil32(return_data.size) + 160] = 68
                    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 260] = 32
                    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0
                    mem[ceil32(return_data.size) + 392] = 0
                    call stor1 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                            if not mem[ceil32(return_data.size) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0x367ebcfd: stor2
                stor2 = arg2
                return stor2
            if arg2:
                mem[ceil32(return_data.size) + 196] = address(stor0)
                mem[ceil32(return_data.size) + 228] = arg2
                mem[ceil32(return_data.size) + 160] = 68
                mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 260] = 32
                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                        if not mem[ceil32(return_data.size) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x367ebcfd: arg2
            stor2 = arg2
            return arg2
        if stor2 >= 0:
            stor2 = arg2
            return 0
        if stor2:
            mem[ceil32(return_data.size) + 196] = address(stor0)
            mem[ceil32(return_data.size) + 228] = stor2
            mem[ceil32(return_data.size) + 160] = 68
            mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
            mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 260] = 32
            mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0
            mem[ceil32(return_data.size) + 392] = 0
            call stor1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x367ebcfd: stor2
        stor2 = arg2
        return stor2
    if arg1 * stor5 / stor5 != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[ceil32(return_data.size) + 96] = 26
    mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
    if ext_call.return_data[0] < stor2:
        if arg2 < arg1 * stor5 / 10000:
            if ext_call.return_data[0] < arg2:
                if ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 196] = address(stor0)
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 160] = 68
                    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 260] = 32
                    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 392] = 0
                    call stor1 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                            if not mem[ceil32(return_data.size) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0x367ebcfd: ext_call.return_data[0]
                stor2 = arg2
                return ext_call.return_data[0]
            if arg2:
                mem[ceil32(return_data.size) + 196] = address(stor0)
                mem[ceil32(return_data.size) + 228] = arg2
                mem[ceil32(return_data.size) + 160] = 68
                mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 260] = 32
                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                        if not mem[ceil32(return_data.size) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x367ebcfd: arg2
            stor2 = arg2
            return arg2
        if ext_call.return_data[0] < arg1 * stor5 / 10000:
            if ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 196] = address(stor0)
                mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 160] = 68
                mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 260] = 32
                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                        if not mem[ceil32(return_data.size) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x367ebcfd: ext_call.return_data[0]
            stor2 = arg2
            return ext_call.return_data[0]
    else:
        if arg2 < arg1 * stor5 / 10000:
            if stor2 < arg2:
                if stor2:
                    mem[ceil32(return_data.size) + 196] = address(stor0)
                    mem[ceil32(return_data.size) + 228] = stor2
                    mem[ceil32(return_data.size) + 160] = 68
                    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 260] = 32
                    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0
                    mem[ceil32(return_data.size) + 392] = 0
                    call stor1 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                            if not mem[ceil32(return_data.size) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0x367ebcfd: stor2
                stor2 = arg2
                return stor2
            if arg2:
                mem[ceil32(return_data.size) + 196] = address(stor0)
                mem[ceil32(return_data.size) + 228] = arg2
                mem[ceil32(return_data.size) + 160] = 68
                mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 260] = 32
                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                        if not mem[ceil32(return_data.size) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x367ebcfd: arg2
            stor2 = arg2
            return arg2
        if stor2 < arg1 * stor5 / 10000:
            if stor2:
                mem[ceil32(return_data.size) + 196] = address(stor0)
                mem[ceil32(return_data.size) + 228] = stor2
                mem[ceil32(return_data.size) + 160] = 68
                mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 260] = 32
                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stor2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                        if not mem[ceil32(return_data.size) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0x367ebcfd: stor2
            stor2 = arg2
            return stor2
    if arg1 * stor5 / 10000:
        mem[ceil32(return_data.size) + 196] = address(stor0)
        mem[ceil32(return_data.size) + 228] = arg1 * stor5 / 10000
        mem[ceil32(return_data.size) + 160] = 68
        mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 260] = 32
        mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(stor1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1 * stor5 / 10000, 0
        mem[ceil32(return_data.size) + 392] = 0
        call stor1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1 * stor5 / 10000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1 * stor5 / 10000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                if not mem[ceil32(return_data.size) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x367ebcfd: (arg1 * stor5 / 10000)
    stor2 = arg2
    return (arg1 * stor5 / 10000)
}



}
