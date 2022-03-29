contract main {




// =====================  Runtime code  =====================


#
#  - sub_1e45234e(?)
#  - sub_f888098e(?)
#
address owner; offset 16
uint256 stor0; offset 16
address stor1;
uint256 stor2;
uint64 expirationTimestamp;
address stor3;
address collateralAddress; offset 48
address claimCovTokenAddress;
address noclaimCovTokenAddress;
array of struct name;
uint256 claimNonce;

function name() payable {
    return name[0 len name.length].field_0
}

function claimCovToken() payable {
    return claimCovTokenAddress
}

function owner() payable {
    return address(owner)
}

function noclaimCovToken() payable {
    return noclaimCovTokenAddress
}

function expirationTimestamp() payable {
    return expirationTimestamp
}

function claimNonce() payable {
    return claimNonce
}

function collateral() payable {
    return collateralAddress
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferCompleted(address(owner), stor1);
    Mask(240, 0, stor0) = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[12418 len 38], mem[202 len 26]
    emit OwnershipTransferInitiated(address(owner), arg1);
    stor1 = arg1
}

function getCoverDetails() payable {
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=name.length, data=mem[128 len name.length]), 
           expirationTimestamp,
           stor3,
           claimNonce,
           claimCovTokenAddress,
           noclaimCovTokenAddress
}

function mint(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= expirationTimestamp:
        revert with 0, 'COVER: cover expired'
    require ext_code.size(address(owner))
    staticcall address(owner).0xa5212d9a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != claimNonce:
        revert with 0, 'COVER: claim accepted'
    require ext_code.size(claimCovTokenAddress)
    call claimCovTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(noclaimCovTokenAddress)
    call noclaimCovTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function redeemCollateral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= expirationTimestamp:
        revert with 0, 'COVER: cover expired'
    if arg1 <= 0:
        revert with 0, 'COVER: amount is 0'
    require ext_code.size(address(owner))
    staticcall address(owner).0xa5212d9a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != claimNonce:
        revert with 0, 'COVER: claim accepted'
    require ext_code.size(claimCovTokenAddress)
    staticcall claimCovTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'COVER: low CLAIM balance'
    require ext_code.size(noclaimCovTokenAddress)
    staticcall noclaimCovTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'COVER: low NOCLAIM balance'
    require ext_code.size(claimCovTokenAddress)
    call claimCovTokenAddress.0xf8cc02df with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(noclaimCovTokenAddress)
    call noclaimCovTokenAddress.0xf8cc02df with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require ext_code.size(address(owner))
    staticcall address(owner).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not uint16(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).treasury() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / uint16(ext_call.return_data[0]) > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1 - (0 / uint16(ext_call.return_data[0]))) >> 32
        mem[452 len 0] = 0
        call collateralAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1 - (0 / uint16(ext_call.return_data[0]))) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
            call collateralAddress with:
                 gas gas_remaining wei
                args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 664 len 22]
        else:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 499 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
            call collateralAddress with:
                 gas gas_remaining wei
                args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                code.data[12571 len 42],
                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if uint16(ext_call.return_data[0]) * arg1 / arg1 != uint16(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[12502 len 33], mem[197 len 31]
        if not uint16(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).treasury() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0]) > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1 - (uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0]))) >> 32
        call collateralAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1 - (uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0]))) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0])) >> 32
            call collateralAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0])) << 224, mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                code.data[12571 len 42],
                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 499 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0])) >> 32
            mem[ceil32(return_data.size) + 617 len 0] = 0
            call collateralAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, uint16(ext_call.return_data[0]) * arg1 / uint16(ext_call.return_data[0])) << 224, mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 664 len 22]
    stor2 = 1
}

function redeemClaim() payable {
    require ext_code.size(address(owner))
    staticcall address(owner).0xa5212d9a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= claimNonce:
        revert with 0, 'COVER: no claim accepted'
    require ext_code.size(address(owner))
    staticcall address(owner).claimDetails(uint256 rg1) with:
            gas gas_remaining wei
           args claimNonce
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[90 len 6] > expirationTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    code.data[12535 len 36],
                    ext_call.return_data[104 len 24],
                    mem[224 len 4]
    require ext_code.size(address(owner))
    staticcall address(owner).claimRedeemDelay() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < (ext_call.return_data[96] % 281474976710656) + ext_call.return_data[0]:
        revert with 0, 'COVER: not ready'
    if uint16(ext_call.return_data[0]) > uint16(ext_call.return_data[32]):
        revert with 0, 'COVER: payout % is > 100%'
    if uint16(ext_call.return_data[0]) <= 0:
        revert with 0, 'COVER: payout % < 0%'
    require ext_code.size(claimCovTokenAddress)
    staticcall claimCovTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'COVER: low covToken balance'
    require ext_code.size(claimCovTokenAddress)
    call claimCovTokenAddress.0xf8cc02df with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not uint16(ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        if stor2 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor2 = 2
        require ext_code.size(address(owner))
        staticcall address(owner).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / uint16(ext_call.return_data[32]):
            if not uint16(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / uint16(ext_call.return_data[0]) > 0 / uint16(ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) >> 32
            call collateralAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                mem[ceil32(return_data.size) + 681 len 0] = 0
                call collateralAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / uint16(ext_call.return_data[0])) << 224, mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 728 len 22]
            else:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                call collateralAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / uint16(ext_call.return_data[0])) << 224, mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 
                                    32,
                                    42,
                                    code.data[12571 len 42],
                                    mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / 0 / uint16(ext_call.return_data[32]) != uint16(ext_call.return_data[0]):
                revert with 0, 32, 33, code.data[12502 len 33], mem[261 len 31]
            if not uint16(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]) > 0 / uint16(ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) >> 32
            mem[516 len 0] = 0
            call collateralAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0])) >> 32
            call collateralAddress with:
                 gas gas_remaining wei
                args uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 649]:
                    revert with 0, 
                                32,
                                42,
                                code.data[12571 len 42],
                                mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if uint16(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        code.data[12502 len 33],
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not uint16(ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        if stor2 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor2 = 2
        require ext_code.size(address(owner))
        staticcall address(owner).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]):
            if not uint16(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / uint16(ext_call.return_data[0]) > uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) >> 32
            mem[516 len 0] = 0
            call collateralAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
            call collateralAddress with:
                 gas gas_remaining wei
                args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        else:
            if uint16(ext_call.return_data[0]) * uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) != uint16(ext_call.return_data[0]):
                revert with 0, 32, 33, code.data[12502 len 33], mem[261 len 31]
            if not uint16(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint16(ext_call.return_data[0]) * uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]) > uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) >> 32
            mem[516 len 0] = 0
            call collateralAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0])) >> 32
            call collateralAddress with:
                 gas gas_remaining wei
                args uint16(ext_call.return_data[0]) * uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 649]:
                revert with 0, 
                            32,
                            42,
                            code.data[12571 len 42],
                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor2 = 1
}

function redeemNoclaim() payable {
    require ext_code.size(address(owner))
    staticcall address(owner).0xa5212d9a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(owner))
    if ext_call.return_data[0] <= claimNonce:
        staticcall address(owner).noclaimRedeemDelay() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < expirationTimestamp + ext_call.return_data[0]:
            revert with 0, 'COVER: not ready'
        require ext_code.size(noclaimCovTokenAddress)
        staticcall noclaimCovTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'COVER: low covToken balance'
        require ext_code.size(noclaimCovTokenAddress)
        call noclaimCovTokenAddress.0xf8cc02df with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if stor2 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor2 = 2
            require ext_code.size(address(owner))
            staticcall address(owner).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint16(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / uint16(ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -0 / uint16(ext_call.return_data[0])) >> 32
            mem[516 len 0] = 0
            call collateralAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, -0 / uint16(ext_call.return_data[0])) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                call collateralAddress with:
                     gas gas_remaining wei
                    args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 
                                    32,
                                    42,
                                    code.data[12571 len 42],
                                    mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                call collateralAddress with:
                     gas gas_remaining wei
                    args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 728 len 22]
        else:
            if ext_call.return_data[0] / ext_call.return_data[0] != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[12502 len 33], mem[197 len 31]
            if stor2 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor2 = 2
            require ext_code.size(address(owner))
            staticcall address(owner).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not uint16(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / uint16(ext_call.return_data[0]) > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / uint16(ext_call.return_data[0]))) >> 32
                mem[516 len 0] = 0
                call collateralAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (0 / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                call collateralAddress with:
                     gas gas_remaining wei
                    args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 
                                    32,
                                    42,
                                    code.data[12571 len 42],
                                    mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if uint16(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(ext_call.return_data[0]):
                    revert with 0, 32, 33, code.data[12502 len 33], mem[261 len 31]
                if not uint16(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]) > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]))) >> 32
                mem[516 len 0] = 0
                call collateralAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        code.data[12571 len 42],
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 728 len 22]
    else:
        staticcall address(owner).claimDetails(uint256 rg1) with:
                gas gas_remaining wei
               args claimNonce
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[90 len 6] > expirationTimestamp:
            require ext_code.size(address(owner))
            staticcall address(owner).noclaimRedeemDelay() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < expirationTimestamp + ext_call.return_data[0]:
                revert with 0, 'COVER: not ready'
            require ext_code.size(noclaimCovTokenAddress)
            staticcall noclaimCovTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'COVER: low covToken balance'
            require ext_code.size(noclaimCovTokenAddress)
            call noclaimCovTokenAddress.0xf8cc02df with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if stor2 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor2 = 2
                require ext_code.size(address(owner))
                staticcall address(owner).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint16(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / uint16(ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -0 / uint16(ext_call.return_data[0])) >> 32
                mem[516 len 0] = 0
                call collateralAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, -0 / uint16(ext_call.return_data[0])) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                call collateralAddress with:
                     gas gas_remaining wei
                    args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 
                                    32,
                                    42,
                                    code.data[12571 len 42],
                                    mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if ext_call.return_data[0] / ext_call.return_data[0] != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[12502 len 33],
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if stor2 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor2 = 2
                require ext_code.size(address(owner))
                staticcall address(owner).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not uint16(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / uint16(ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (0 / uint16(ext_call.return_data[0]))) >> 32
                    mem[516 len 0] = 0
                    call collateralAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        code.data[12571 len 42],
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if uint16(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(ext_call.return_data[0]):
                        revert with 0, 32, 33, code.data[12502 len 33], mem[261 len 31]
                    if not uint16(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]))) >> 32
                    mem[516 len 0] = 0
                    call collateralAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]))) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 563 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args uint16(ext_call.return_data[0]) * ext_call.return_data[0] / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 728 len 22]
        else:
            if ext_call.return_data[30 len 2] >= ext_call.return_data[62 len 2]:
                revert with 0, 'COVER: claim payout 100%'
            require ext_code.size(address(owner))
            staticcall address(owner).claimRedeemDelay() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < (ext_call.return_data[96] % 281474976710656) + ext_call.return_data[0]:
                revert with 0, 'COVER: not ready'
            if uint16(ext_call.return_data[0]) > uint16(ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if uint16(ext_call.return_data[32]) - uint16(ext_call.return_data[0]) > uint16(ext_call.return_data[32]):
                revert with 0, 'COVER: payout % is > 100%'
            if uint16(ext_call.return_data[32]) - uint16(ext_call.return_data[0]) <= 0:
                revert with 0, 'COVER: payout % < 0%'
            require ext_code.size(noclaimCovTokenAddress)
            staticcall noclaimCovTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'COVER: low covToken balance'
            require ext_code.size(noclaimCovTokenAddress)
            call noclaimCovTokenAddress.0xf8cc02df with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not uint16(ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if stor2 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor2 = 2
                require ext_code.size(address(owner))
                staticcall address(owner).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / uint16(ext_call.return_data[32]):
                    if not uint16(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / uint16(ext_call.return_data[0]) > 0 / uint16(ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) >> 32
                    mem[580 len 0] = 0
                    call collateralAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 627 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 681 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                else:
                    if uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / 0 / uint16(ext_call.return_data[32]) != uint16(ext_call.return_data[0]):
                        revert with 0, 32, 33, code.data[12502 len 33], mem[325 len 31]
                    if not uint16(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]) > 0 / uint16(ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) >> 32
                    mem[580 len 0] = 0
                    call collateralAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (0 / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 627 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 681 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args uint16(ext_call.return_data[0]) * 0 / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 713]:
                        revert with 0, 
                                    32,
                                    42,
                                    code.data[12571 len 42],
                                    mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / ext_call.return_data[0] != uint16(ext_call.return_data[32]) - uint16(ext_call.return_data[0]):
                    revert with 0, 32, 33, code.data[12502 len 33], mem[261 len 31]
                if not uint16(ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if stor2 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor2 = 2
                require ext_code.size(address(owner))
                staticcall address(owner).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeNumerator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).redeemFeeDenominator() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]):
                    if not uint16(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / uint16(ext_call.return_data[0]) > (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) >> 32
                    mem[580 len 0] = 0
                    call collateralAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ((uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32])) - (0 / uint16(ext_call.return_data[0]))) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 627 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 681 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, 0 / uint16(ext_call.return_data[0])) >> 32
                    call collateralAddress with:
                         gas gas_remaining wei
                        args 0 / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 713]:
                            revert with 0, 
                                        32,
                                        42,
                                        code.data[12571 len 42],
                                        mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) != uint16(ext_call.return_data[0]):
                        revert with 0, 32, 33, code.data[12502 len 33], mem[325 len 31]
                    if not uint16(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]) > (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) >> 32
                    mem[580 len 0] = 0
                    call collateralAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ((uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32])) - (uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]))) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(collateralAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0])) >> 32
                        call collateralAddress with:
                             gas gas_remaining wei
                            args uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 32, 42, code.data[12571 len 42], mem[(2 * ceil32(return_data.size)) + 792 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 32, 42, code.data[12571 len 42], mem[ceil32(return_data.size) + 627 len 22]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(collateralAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 681 len 64] = 0, address(ext_call.return_data[0]), Mask(224, 32, uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0])) >> 32
                        call collateralAddress with:
                             gas gas_remaining wei
                            args uint16(ext_call.return_data[0]) * (uint16(ext_call.return_data[32]) * ext_call.return_data[0]) - (uint16(ext_call.return_data[0]) * ext_call.return_data[0]) / uint16(ext_call.return_data[32]) / uint16(ext_call.return_data[0]), mem[ceil32(return_data.size) + 617 len 28], mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            code.data[12571 len 42],
                                            mem[(2 * ceil32(return_data.size)) + 792 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor2 = 1
}



}
