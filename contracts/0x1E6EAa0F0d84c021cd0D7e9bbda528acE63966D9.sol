contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function init(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor3:
        revert with 0, 'already init token1.'
    if stor4:
        revert with 0, 'already init token2.'
    if stor2:
        revert with 0, 'already init rate.'
    if stor1:
        revert with 0, 'already init rate.'
    stor3 = arg1
    stor4 = arg2
    stor2 = arg4
    stor1 = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function cleanup() payable {
    if stor0:
        revert with 0, 'Reentrant call.'
    stor0 = 1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor4):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(stor4):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call stor4 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    stor0 = 0
}

function sub_fd598e56(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Reentrant call.'
    stor0 = 1
    if block.number >= stor1:
        revert with 0, 'Too late to switch.'
    if arg1 <= 0:
        revert with 0, 'zero amount.'
    if not arg1:
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            revert with 0, 'no enough token1 to switch.'
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'no enough token2 to switch.'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor3):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(stor3):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
        mem[416 len 4] = uint32(arg1)
        call stor3.0xdead with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor4):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(stor4):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call stor4 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 425]:
                revert with 0, 
                            32,
                            42,
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 504 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if stor2 * arg1 / arg1 != stor2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            revert with 0, 'no enough token1 to switch.'
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= stor2 * arg1 / 10^18:
            revert with 0, 'no enough token2 to switch.'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor3):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(stor3):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
        mem[416 len 4] = uint32(arg1)
        call stor3.0xdead with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor4):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(stor4):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 393 len 64] = 0, msg.sender, Mask(224, 32, stor2 * arg1 / 10^18) >> 32
        call stor4 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args stor2 * arg1 / 10^18, Mask(224, 32, 0, msg.sender, Mask(224, 32, stor2 * arg1 / 10^18) >> 32) >> 32, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 425]:
                revert with 0, 
                            32,
                            42,
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 504 len 22]
    stor0 = 0
}



}
