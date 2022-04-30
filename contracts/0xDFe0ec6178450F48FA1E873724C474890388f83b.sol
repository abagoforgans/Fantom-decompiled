contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7e8c95abAddress;
uint32 stor2;
address sub_ef423206Address;
address swapFactoryAddress;

function swapFactory() payable {
    return swapFactoryAddress
}

function sub_7e8c95ab(?) payable {
    return sub_7e8c95abAddress
}

function owner() payable {
    return owner
}

function sub_ef423206(?) payable {
    return address(sub_ef423206Address)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swapPairIsInitialised(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(swapFactoryAddress)
    staticcall swapFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    return 1
}

function lockLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(sub_7e8c95abAddress)
    staticcall sub_7e8c95abAddress.presaleIsRegistered(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'PRESALE NOT REGISTERED'
    require ext_code.size(swapFactoryAddress)
    staticcall swapFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(swapFactoryAddress)
        call swapFactoryAddress.createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(swapFactoryAddress)
        staticcall swapFactoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg3) >> 32
    mem[352 len 4] = uint32(arg3)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg3),
                        mem[356 len 4]
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg3),
                        mem[356 len 4]
        mem[360 len 96] = 0, msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg4) >> 32
        mem[484 len 4] = uint32(arg4)
        call arg2 with:
             gas gas_remaining wei
            args arg4, address(ext_call.return_data[0]), Mask(224, 32, arg4) >> 32 >> 224, mem[456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[464 len 20],
                            uint32(arg4),
                            mem[488 len 4]
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[464 len 20],
                            uint32(arg4),
                            mem[488 len 4]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'LP creation failed'
            mem[460 len 64] = 0, address(sub_ef423206Address), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(sub_ef423206Address), ext_call.return_data[0 len 28]) >> 32, mem[524 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[492 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[492]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
        else:
            mem[392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 465 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[392]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 465 len 28]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'LP creation failed'
            mem[ceil32(return_data.size) + 461 len 64] = 0, address(sub_ef423206Address), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(sub_ef423206Address), ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 525 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[ceil32(return_data.size) + 493 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 493]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
        mem[ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg4) >> 32
        mem[ceil32(return_data.size) + 485 len 4] = uint32(arg4)
        call arg2 with:
             gas gas_remaining wei
            args arg4, address(ext_call.return_data[0]), Mask(224, 32, arg4) >> 32 >> 224, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 465 len 20],
                            uint32(arg4),
                            mem[ceil32(return_data.size) + 489 len 4]
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 465 len 20],
                            uint32(arg4),
                            mem[ceil32(return_data.size) + 489 len 4]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'LP creation failed'
            mem[ceil32(return_data.size) + 461 len 64] = 0, address(sub_ef423206Address), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(sub_ef423206Address), ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 525 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[ceil32(return_data.size) + 493 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 493]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
        else:
            mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(2 * ceil32(return_data.size)) + 466 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 393]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 466 len 28]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'LP creation failed'
            mem[(2 * ceil32(return_data.size)) + 462 len 64] = 0, address(sub_ef423206Address), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(sub_ef423206Address), ext_call.return_data[0 len 28]) >> 32, mem[(2 * ceil32(return_data.size)) + 526 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 494 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 494]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
    require ext_code.size(address(sub_ef423206Address))
    if arg5 > 9999999999:
        call address(sub_ef423206Address).0xdf41bc5f with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], 9999999999, arg6
    else:
        call address(sub_ef423206Address).0xdf41bc5f with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
