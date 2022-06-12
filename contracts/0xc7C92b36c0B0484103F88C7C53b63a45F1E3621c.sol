contract main {




// =====================  Runtime code  =====================


#
#  - wrap()
#
address owner;
uint32 stor1;
address wftmAddress;
uint256 stor1;

function owner() payable {
    return owner
}

function wftm() payable {
    return address(wftmAddress)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function sub_62ee7aff(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(wftmAddress)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call address(wftmAddress) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function unwrap() payable {
    require ext_code.size(address(wftmAddress))
    staticcall address(wftmAddress).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(wftmAddress))
    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        require ext_code.size(address(wftmAddress))
        staticcall address(wftmAddress).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(address(wftmAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
        mem[416 len 4] = 0
        call address(wftmAddress) with:
             gas gas_remaining wei
            args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(wftmAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0
                mem[520 len 0] = 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0) << 256, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[578 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[620 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[556 len 28], mem[684 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[730 len 22]
                    else:
                        mem[652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[652]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 731 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 579 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 621 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[ceil32(return_data.size) + 557 len 28], mem[ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 731 len 22]
                        else:
                            mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 653]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 579 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 621 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[ceil32(return_data.size) + 557 len 28], mem[ceil32(return_data.size) + 685 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 731 len 22]
                        else:
                            mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 653]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 732 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(wftmAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0
                mem[ceil32(return_data.size) + 521 len 0] = 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0) << 256, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 579 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 621 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[ceil32(return_data.size) + 557 len 28], mem[ceil32(return_data.size) + 685 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 731 len 22]
                    else:
                        mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 653]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 580 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 622 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + 558 len 28], mem[(2 * ceil32(return_data.size)) + 686 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 654]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
    else:
        if not ext_code.size(address(wftmAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
        mem[324 len 0] = 0
        call address(wftmAddress) with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call address(wftmAddress) with:
                 gas gas_remaining wei
                args -1, 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[620 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[744 len 4] = 0
                mem[716 len 0] = 0
                call address(wftmAddress) with:
                     gas gas_remaining wei
                    args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[716 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[730 len 14],
                                    0,
                                    mem[748 len 4]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[784 len 64] = 0, address(wftmAddress), 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0, mem[720 len 24], 0, mem[848 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[894 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[906 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[948 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[1012 len 0] = 0
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[1012 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1058 len 22]
                            else:
                                mem[980 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[980]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1059 len 22]
                        else:
                            mem[816 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[816]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 895 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 907 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 949 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[ceil32(return_data.size) + 1013 len 0] = 0
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 1013 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1059 len 22]
                            else:
                                mem[ceil32(return_data.size) + 981 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 981]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                else:
                    mem[652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[652]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 731 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 785 len 64] = 0, address(wftmAddress), 0
                        mem[ceil32(return_data.size) + 877 len 4] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0, 0, mem[ceil32(return_data.size) + 849 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 895 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 907 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 949 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[ceil32(return_data.size) + 885 len 28], mem[ceil32(return_data.size) + 1013 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1059 len 22]
                            else:
                                mem[ceil32(return_data.size) + 981 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1050 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 981]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1060 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            mem[ceil32(return_data.size) + 817 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 886 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 817]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 896 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress), mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + 908 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 982]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 621 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 745 len 4] = 0
            mem[ceil32(return_data.size) + 717 len 0] = 0
            call address(wftmAddress) with:
                 gas gas_remaining wei
                args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[ceil32(return_data.size) + 717 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 731 len 14],
                                0,
                                mem[ceil32(return_data.size) + 749 len 4]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 785 len 64] = 0, address(wftmAddress), 0
                    mem[ceil32(return_data.size) + 877 len 4] = 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args 0, 0, mem[ceil32(return_data.size) + 849 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 895 len 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 907 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 949 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[ceil32(return_data.size) + 885 len 28], mem[ceil32(return_data.size) + 1013 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1059 len 22]
                        else:
                            mem[ceil32(return_data.size) + 981 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 1050 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 981]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1060 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        mem[ceil32(return_data.size) + 817 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 886 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 817]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 896 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress), mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 908 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 982]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 653]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 732 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(wftmAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 786 len 64] = 0, address(wftmAddress), 0
            call address(wftmAddress) with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args 0, 0, mem[(2 * ceil32(return_data.size)) + 850 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 896 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 908 len 10]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 982]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 818 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 818]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(wftmAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
            call address(wftmAddress) with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 32
                mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 952
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                require ext_code.size(address(wftmAddress))
                call address(wftmAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 956] = 32
            mem[(4 * ceil32(return_data.size)) + 988] = 42
            mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 952
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call address(wftmAddress) with:
                 gas gas_remaining wei
                args -1, 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 621 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 745 len 4] = 0
                mem[ceil32(return_data.size) + 717 len 0] = 0
                call address(wftmAddress) with:
                     gas gas_remaining wei
                    args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[ceil32(return_data.size) + 717 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 14],
                                    0,
                                    mem[ceil32(return_data.size) + 749 len 4]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 785 len 64] = 0, address(wftmAddress), 0
                        mem[ceil32(return_data.size) + 877 len 4] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0, 0, mem[ceil32(return_data.size) + 849 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 895 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 907 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 949 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[ceil32(return_data.size) + 885 len 28], mem[ceil32(return_data.size) + 1013 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1059 len 22]
                            else:
                                mem[ceil32(return_data.size) + 981 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1050 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 981]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1060 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            mem[ceil32(return_data.size) + 817 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 886 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 817]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 896 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress), mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + 908 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 982]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress), mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 786 len 64] = 0, address(wftmAddress), 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args 0, 0, mem[(2 * ceil32(return_data.size)) + 850 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 896 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 908 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 982]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 818 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 818]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 32
                    mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 952
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 42
                mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 952
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 622 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
            mem[(2 * ceil32(return_data.size)) + 746 len 4] = 0
            mem[(2 * ceil32(return_data.size)) + 718 len 0] = 0
            call address(wftmAddress) with:
                 gas gas_remaining wei
                args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[(2 * ceil32(return_data.size)) + 718 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 732 len 14],
                                0,
                                mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress), Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 256, ext_call.return_data[0 len 28]) << (8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 786 len 64] = 0, address(wftmAddress), 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args 0, 0, mem[(2 * ceil32(return_data.size)) + 850 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 896 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 908 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 982]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 818 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 818]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 32
                    mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 952
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 42
                mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 952
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 654]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 733 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(wftmAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787 len 64] = 0, address(wftmAddress), 0
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 879 len 4] = 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 851 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 897 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 909 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 1043 len 4] = 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 887 len 28], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 1015 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 1061 len 22]
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 951] = return_data.size
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 32
                        mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 952
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 983]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 42
                    mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 952
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 787] = return_data.size
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 819 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 792] = 32
                    mem[(4 * ceil32(return_data.size)) + 824] = 32
                    mem[(4 * ceil32(return_data.size)) + 856] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 788
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 819]:
                        mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 792] = 32
                        mem[(4 * ceil32(return_data.size)) + 824] = 42
                        mem[(4 * ceil32(return_data.size)) + 856 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 788
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 792] = this.address
                mem[(4 * ceil32(return_data.size)) + 824] = address(wftmAddress)
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(4 * ceil32(return_data.size)) + 792 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 792] = 32
                    mem[(4 * ceil32(return_data.size)) + 824] = 54
                    mem[(4 * ceil32(return_data.size)) + 856 len 54] = 0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 788
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 952 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args -1, mem[(4 * ceil32(return_data.size)) + 888 len 28], mem[(4 * ceil32(return_data.size)) + 1016 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                else:
                    mem[(4 * ceil32(return_data.size)) + 984 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(4 * ceil32(return_data.size)) + 984]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1063 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(wftmAddress))
            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if not ext_code.size(address(wftmAddress)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call address(wftmAddress) with:
                 gas gas_remaining wei
                args -1, 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 621 len 96] = 0, msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 745 len 4] = 0
                call address(wftmAddress) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 32, Mask(224, 32, 'SafeERC20: low-level call failed') >> 32, mem[ceil32(return_data.size) + 717 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 14],
                                    0,
                                    mem[ceil32(return_data.size) + 749 len 4]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 785 len 64] = 0, address(wftmAddress), 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 721 len 24], 0, mem[ceil32(return_data.size) + 849 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 895 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 907 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 949 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 1013 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1059 len 22]
                            else:
                                mem[ceil32(return_data.size) + 981 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 981]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                        else:
                            mem[ceil32(return_data.size) + 817 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 817]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 896 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + 908 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 950 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(2 * ceil32(return_data.size)) + 1014 len 0] = 0
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1060 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 982]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress), mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 786 len 64] = 0, address(wftmAddress), 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args 0, 0, mem[(2 * ceil32(return_data.size)) + 850 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 896 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 908 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 982]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 818 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 818]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                call address(wftmAddress) with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 32
                    mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 952
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                    require ext_code.size(address(wftmAddress))
                    call address(wftmAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 42
                mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 952
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not return_data.size:
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 622 len 96] = 0, msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[(2 * ceil32(return_data.size)) + 746 len 4] = 0
                call address(wftmAddress) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 32, Mask(224, 32, 'SafeERC20: low-level call failed') >> 32, mem[(2 * ceil32(return_data.size)) + 718 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len 14],
                                    0,
                                    mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 786 len 64] = 0, address(wftmAddress), 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args 0, 0, mem[(2 * ceil32(return_data.size)) + 850 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 896 len 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 908 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 982]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 818 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 818]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 32
                        mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 952
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 42
                    mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 952
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 64] = 0, address(wftmAddress), 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                                require ext_code.size(address(wftmAddress))
                                call address(wftmAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 956] = 32
                                mem[(4 * ceil32(return_data.size)) + 988] = 32
                                mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 952
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if not return_data.size:
                                require ext_code.size(address(wftmAddress))
                                call address(wftmAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                                require ext_code.size(address(wftmAddress))
                                call address(wftmAddress).0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 956] = 32
                            mem[(4 * ceil32(return_data.size)) + 988] = 42
                            mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 952
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 792] = 32
                            mem[(4 * ceil32(return_data.size)) + 824] = 32
                            mem[(4 * ceil32(return_data.size)) + 856] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 788
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819]:
                                mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 792] = 32
                                mem[(4 * ceil32(return_data.size)) + 824] = 42
                                mem[(4 * ceil32(return_data.size)) + 856 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 788
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 792] = this.address
                        mem[(4 * ceil32(return_data.size)) + 824] = address(wftmAddress)
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 792 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 792] = 32
                            mem[(4 * ceil32(return_data.size)) + 824] = 54
                            mem[(4 * ceil32(return_data.size)) + 856 len 54] = 0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 788
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 952 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[(4 * ceil32(return_data.size)) + 888 len 28], mem[(4 * ceil32(return_data.size)) + 1016 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                        else:
                            mem[(4 * ceil32(return_data.size)) + 984 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(4 * ceil32(return_data.size)) + 984]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1063 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 654]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 64] = 0, address(wftmAddress), 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(wftmAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787] = return_data.size
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 792] = 32
                                mem[(4 * ceil32(return_data.size)) + 824] = 32
                                mem[(4 * ceil32(return_data.size)) + 856] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 788
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819]:
                                    mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 792] = 32
                                    mem[(4 * ceil32(return_data.size)) + 824] = 42
                                    mem[(4 * ceil32(return_data.size)) + 856 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 788
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + 792] = this.address
                            mem[(4 * ceil32(return_data.size)) + 824] = address(wftmAddress)
                            require ext_code.size(address(wftmAddress))
                            staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(4 * ceil32(return_data.size)) + 792 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 792] = 32
                                mem[(4 * ceil32(return_data.size)) + 824] = 54
                                mem[(4 * ceil32(return_data.size)) + 856 len 54] = 0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 788
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            if not ext_code.size(address(wftmAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 952 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(wftmAddress) with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args -1, mem[(4 * ceil32(return_data.size)) + 888 len 28], mem[(4 * ceil32(return_data.size)) + 1016 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                                if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                            else:
                                mem[(4 * ceil32(return_data.size)) + 984 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(4 * ceil32(return_data.size)) + 984]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1063 len 22]
            else:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(wftmAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 622 len 96] = 0, msg.sender, address(this.address), ext_call.return_data[0 len 28]
                mem[(2 * ceil32(return_data.size)) + 746 len 4] = 0
                call address(wftmAddress) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 32, Mask(224, 32, 'SafeERC20: low-level call failed') >> 32, mem[(2 * ceil32(return_data.size)) + 718 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len 14],
                                    0,
                                    mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 786 len 64] = 0, address(wftmAddress), 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args 0, 0, mem[(2 * ceil32(return_data.size)) + 850 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 896 len 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + 908 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 950 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[(2 * ceil32(return_data.size)) + 886 len 28], mem[(2 * ceil32(return_data.size)) + 1014 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1060 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 982 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 982]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 818 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 818]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 32
                        mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 952
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 42
                    mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 952
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 64] = 0, address(wftmAddress), 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 0] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 956] = 32
                            mem[(4 * ceil32(return_data.size)) + 988] = 32
                            mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 952
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if not return_data.size:
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 42
                        mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 952
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(4 * ceil32(return_data.size)) + 910 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 952 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(4 * ceil32(return_data.size)) + 1044 len 4] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(4 * ceil32(return_data.size)) + 1016 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        else:
                            mem[(4 * ceil32(return_data.size)) + 984 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(4 * ceil32(return_data.size)) + 984]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1063 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 898 len 22]
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(wftmAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(4 * ceil32(return_data.size)) + 910 len 10]
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 952 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(4 * ceil32(return_data.size)) + 1044 len 4] = 0
                    mem[(4 * ceil32(return_data.size)) + 1016 len 0] = 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(4 * ceil32(return_data.size)) + 1016 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if approve(address arg1, uint256 arg2), address(this.address) << 64:
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 42
                        mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 952
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(4 * ceil32(return_data.size)) + 984 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 953] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957] = 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989] = 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1021] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 953
                           len (7 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(4 * ceil32(return_data.size)) + 984]:
                        require ext_code.size(address(wftmAddress))
                        call address(wftmAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 953] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989] = 42
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1021 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 953
                       len (7 * ceil32(return_data.size)) + 132
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 654]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(wftmAddress))
                staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(wftmAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 64] = 0, address(wftmAddress), 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = 0
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args 0, 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 897 len 22]
                        require ext_code.size(address(wftmAddress))
                        staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(wftmAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 10]
                        if not ext_code.size(address(wftmAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1043 len 4] = 0
                        call address(wftmAddress) with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 887 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1015 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                            if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1061 len 22]
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 956] = 32
                            mem[(4 * ceil32(return_data.size)) + 988] = 32
                            mem[(4 * ceil32(return_data.size)) + 1020] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 952
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if not return_data.size:
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983]:
                            require ext_code.size(address(wftmAddress))
                            call address(wftmAddress).0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 952] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 42
                        mem[(4 * ceil32(return_data.size)) + 1020 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 952
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 792] = 32
                        mem[(4 * ceil32(return_data.size)) + 824] = 32
                        mem[(4 * ceil32(return_data.size)) + 856] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 788
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819]:
                            mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 792] = 32
                            mem[(4 * ceil32(return_data.size)) + 824] = 42
                            mem[(4 * ceil32(return_data.size)) + 856 len 42] = 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 788
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(4 * ceil32(return_data.size)) + 792] = this.address
                    mem[(4 * ceil32(return_data.size)) + 824] = address(wftmAddress)
                    require ext_code.size(address(wftmAddress))
                    staticcall address(wftmAddress).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 792 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + 788] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 792] = 32
                        mem[(4 * ceil32(return_data.size)) + 824] = 54
                        mem[(4 * ceil32(return_data.size)) + 856 len 54] = 0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 788
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if not ext_code.size(address(wftmAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 952 len 64] = 0, address(wftmAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call address(wftmAddress) with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args -1, mem[(4 * ceil32(return_data.size)) + 888 len 28], mem[(4 * ceil32(return_data.size)) + 1016 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(this.address) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + 1062 len 22]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 984 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(4 * ceil32(return_data.size)) + 984]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1063 len 22]
    require ext_code.size(address(wftmAddress))
    call address(wftmAddress).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
