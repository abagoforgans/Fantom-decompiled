contract main {




// =====================  Runtime code  =====================


const sub_7edd3da5(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address owner;
uint256 sub_c0d46b91;
uint32 stor2;
address sub_fca11cb8Address;
uint256 stor2;
uint32 stor3;
address feeHolderAddress;
uint256 stor3;
address schedulerAddress;

function owner() payable {
    return owner
}

function schedulerAddress() payable {
    return schedulerAddress
}

function sub_c0d46b91(?) payable {
    return sub_c0d46b91
}

function feeHolder() payable {
    return address(feeHolderAddress)
}

function sub_fca11cb8(?) payable {
    return address(sub_fca11cb8Address)
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

function sub_208995cf(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c0d46b91 = arg1
    emit 0x4707e55f: arg1, msg.sender
}

function setSchedulerAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if schedulerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'onlyAdmins: FORBIDDEN'
    schedulerAddress = arg1
    emit SetSchedulerAddress(arg1, msg.sender);
}

function sub_d7236159(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_fca11cb8Address) = arg1
    address(feeHolderAddress) = arg2
    emit 0xe21787ff: address(arg1), arg2, msg.sender
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

function rescueToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit RescueTokens(ext_call.return_data[0], msg.sender, arg1);
}

function removeLiquidity(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if schedulerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'onlyAdmins: FORBIDDEN'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(arg1)
    call arg1.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_7a2829d2(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if schedulerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'onlyAdmins: FORBIDDEN'
    mem[(32 * arg4.length) + 132] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != arg3:
        if arg4.length <= 0:
            revert with 0, 'swapTokens: INVALID PATH'
        require 0 < arg4.length
        if mem[140 len 20] != arg2:
            revert with 0, 'swapTokens: INVALID PATH'
        require arg4.length - 1 < arg4.length
        if mem[(32 * arg4.length - 1) + 140 len 20] != arg3:
            revert with 0, 'swapTokens: INVALID PATH'
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'swapTokens: INSUFFICIENT AMOUNT'
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(32 * arg4.length) + 128] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * arg4.length) + 398 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * arg4.length) + 292 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[(32 * arg4.length) + 356 len 0] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * arg4.length) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg4.length:
                    revert with memory
                      from 128
                       len arg4.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * arg4.length) + 402 len 22]
            mem[(32 * arg4.length) + 488 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 488 len (32 * arg4.length) - floor32(arg4.length)]
        else:
            mem[(32 * arg4.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * arg4.length) + 324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * arg4.length) + ceil32(return_data.size) + 403 len 22]
            mem[(32 * arg4.length) + ceil32(return_data.size) + 489 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + ceil32(return_data.size) + floor32(arg4.length) + 489 len (32 * arg4.length) - floor32(arg4.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
}

function distributeFees() payable {
    if schedulerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'onlyAdmins: FORBIDDEN'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_fca11cb8Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[452 len 0] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
        require ext_code.size(address(sub_fca11cb8Address))
        call address(sub_fca11cb8Address).0x84ed8c56 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 659 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        if 0 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(feeHolderAddress), 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        else:
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(feeHolderAddress), ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
    else:
        if sub_c0d46b91 * ext_call.return_data[0] / ext_call.return_data[0] != sub_c0d46b91:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_c0d46b91 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_fca11cb8Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) - (sub_c0d46b91 * ext_call.return_data[0] / 10000) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, (2 * ext_call.return_data[0]) - (sub_c0d46b91 * ext_call.return_data[0] / 10000)) >> 32
        mem[452 len 0] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(224, 32, (2 * ext_call.return_data[0]) - (sub_c0d46b91 * ext_call.return_data[0] / 10000)) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
        require ext_code.size(address(sub_fca11cb8Address))
        call address(sub_fca11cb8Address).0x84ed8c56 with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (sub_c0d46b91 * ext_call.return_data[0] / 10000))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 659 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        if sub_c0d46b91 * ext_call.return_data[0] / 10000 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(feeHolderAddress), Mask(224, 32, sub_c0d46b91 * ext_call.return_data[0] / 10000) >> 32
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args sub_c0d46b91 * ext_call.return_data[0] / 10000, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        else:
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(feeHolderAddress), ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
