contract main {




// =====================  Runtime code  =====================


const sub_2d2e3a93(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b


address feeManagerAddress;
uint32 stor1;
address strategyAddress;
uint256 stor1;
address sub_275b0504Address;
uint256 sub_dc8bdb0e;
uint256 unlockTime;

function unlockTime() payable {
    return unlockTime
}

function sub_275b0504(?) payable {
    return sub_275b0504Address
}

function strategy() payable {
    return address(strategyAddress)
}

function feeManager() payable {
    return feeManagerAddress
}

function sub_dc8bdb0e(?) payable {
    return sub_dc8bdb0e
}

function _fallback() payable {
    revert
}

function initialLock() payable {
    if feeManagerAddress != msg.sender:
        if msg.sender != this.address:
            revert with 0, '!auth'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).release() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).createLock(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], block.timestamp + (34944 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    unlockTime = 168 * 24 * 3600 * block.timestamp + (34944 * 24 * 3600) / 168 * 24 * 3600
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, '!>0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg1:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, address(strategyAddress), Mask(224, 32, arg1) >> 32
            call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args arg1, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            if arg1:
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0x4b908f5a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).increaseAmount(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if feeManagerAddress != msg.sender:
                        if msg.sender != this.address:
                            revert with 0, '!auth'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).release() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
                    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(strategyAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).createLock(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], block.timestamp + (34944 * 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    unlockTime = 168 * 24 * 3600 * block.timestamp + (34944 * 24 * 3600) / 168 * 24 * 3600
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg1:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = 0, address(strategyAddress), Mask(224, 32, arg1) >> 32
            call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
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
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
            if arg1:
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0x4b908f5a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).increaseAmount(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if feeManagerAddress != msg.sender:
                        if msg.sender != this.address:
                            revert with 0, '!auth'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).release() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
                    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(strategyAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).createLock(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], block.timestamp + (34944 * 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    unlockTime = 168 * 24 * 3600 * block.timestamp + (34944 * 24 * 3600) / 168 * 24 * 3600
    if not sub_dc8bdb0e:
        require ext_code.size(sub_275b0504Address)
        call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        if sub_dc8bdb0e + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        sub_dc8bdb0e = 0
        require ext_code.size(sub_275b0504Address)
        call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_dc8bdb0e + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositAll() payable {
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '!>0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
            mem[520 len 0] = 0
            call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0x4b908f5a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).increaseAmount(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if feeManagerAddress != msg.sender:
                        if msg.sender != this.address:
                            revert with 0, '!auth'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).release() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
                    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(strategyAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).createLock(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], block.timestamp + (34944 * 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    unlockTime = 168 * 24 * 3600 * block.timestamp + (34944 * 24 * 3600) / 168 * 24 * 3600
        if not sub_dc8bdb0e:
            require ext_code.size(sub_275b0504Address)
            call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        else:
            if sub_dc8bdb0e + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            sub_dc8bdb0e = 0
            require ext_code.size(sub_275b0504Address)
            call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_dc8bdb0e + ext_call.return_data[0]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not ext_call.return_data[0]:
            if not sub_dc8bdb0e:
                require ext_code.size(sub_275b0504Address)
                call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            else:
                if sub_dc8bdb0e + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_dc8bdb0e = 0
                require ext_code.size(sub_275b0504Address)
                call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_dc8bdb0e + ext_call.return_data[0]
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call 0x5cc61a78f164885776aa610fb0fe1257df78e59b with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0]
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x4b908f5a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).increaseAmount(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if feeManagerAddress != msg.sender:
                            if msg.sender != this.address:
                                revert with 0, '!auth'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).release() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
                        staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(strategyAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).createLock(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], block.timestamp + (34944 * 24 * 3600)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        unlockTime = 168 * 24 * 3600 * block.timestamp + (34944 * 24 * 3600) / 168 * 24 * 3600
                if not sub_dc8bdb0e:
                    require ext_code.size(sub_275b0504Address)
                    call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                else:
                    if sub_dc8bdb0e + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_dc8bdb0e = 0
                    require ext_code.size(sub_275b0504Address)
                    call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_dc8bdb0e + ext_call.return_data[0]
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
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_call.return_data[0]:
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x4b908f5a with:
                            gas gas_remaining wei
                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x4b908f5a00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).increaseAmount(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if feeManagerAddress != msg.sender:
                            if msg.sender != this.address:
                                revert with 0, 
                                            '!auth',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).release() with:
                             gas gas_remaining wei
                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x86d1a69f00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
                        staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(strategyAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).createLock(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], block.timestamp + (34944 * 24 * 3600), mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        unlockTime = 168 * 24 * 3600 * block.timestamp + (34944 * 24 * 3600) / 168 * 24 * 3600
                if not sub_dc8bdb0e:
                    require ext_code.size(sub_275b0504Address)
                    call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if sub_dc8bdb0e + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    sub_dc8bdb0e = 0
                    require ext_code.size(sub_275b0504Address)
                    call sub_275b0504Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, sub_dc8bdb0e + ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
