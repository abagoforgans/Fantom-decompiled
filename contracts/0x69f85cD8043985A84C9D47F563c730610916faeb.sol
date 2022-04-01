contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor8;
address stor10;
address stor11;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2349a086(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == bool(arg8)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(arg2))
    staticcall address(arg2).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor11, (2 * ext_call.return_data[0]) + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor11)
    call stor11.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1, 128, 224, bool(arg8), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor11 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 224
    require cd[(arg5 + 36)] == bool(cd[(arg5 + 36)])
    mem[96] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[128] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[160] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[192] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[224] = cd[(arg5 + 164)]
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[256] = cd[(arg5 + 196)]
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[288] = cd[(arg5 + 228)]
    if 1 == bool(cd[(arg5 + 36)]):
        if stor1 == address(cd[(arg5 + 164)]):
            mem[352] = address(cd[(arg5 + 68)])
            mem[384] = address(cd[(arg5 + 100)])
            mem[420] = stor1
            mem[452] = -1
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor1, -1
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 420] = arg3
            mem[ceil32(return_data.size) + 452] = 1
            mem[ceil32(return_data.size) + 484] = 160
            mem[ceil32(return_data.size) + 580] = 2
            idx = 0
            s = ceil32(return_data.size) + 612
            t = 352
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 516] = this.address
            mem[ceil32(return_data.size) + 548] = block.timestamp + 1
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < ceil32(return_data.size) + return_data.size + 416
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
            require return_data.size >= mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32
        else:
            if stor2 == address(cd[(arg5 + 164)]):
                mem[352] = address(cd[(arg5 + 68)])
                mem[384] = address(cd[(arg5 + 100)])
                mem[420] = stor2
                mem[452] = -1
                require ext_code.size(address(cd[(arg5 + 68)]))
                call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor2, -1
                mem[416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 420] = arg3
                mem[ceil32(return_data.size) + 452] = 1
                mem[ceil32(return_data.size) + 484] = 160
                mem[ceil32(return_data.size) + 580] = 2
                idx = 0
                s = ceil32(return_data.size) + 612
                t = 352
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 516] = this.address
                mem[ceil32(return_data.size) + 548] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 164)]))
                call address(cd[(arg5 + 164)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < ceil32(return_data.size) + return_data.size + 416
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
                require return_data.size >= mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32
            else:
                if stor3 == address(cd[(arg5 + 164)]):
                    mem[324] = stor3
                    mem[356] = -1
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor3, -1
                    mem[320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stor4 != address(cd[(arg5 + 68)]):
                        if stor5 != address(cd[(arg5 + 68)]):
                            mem[ceil32(return_data.size) + 356] = 0
                            mem[ceil32(return_data.size) + 388] = arg3
                            mem[ceil32(return_data.size) + 420] = 1
                            require ext_code.size(stor10)
                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, arg3, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 324] = this.address
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Contract has not recived Token B'
                            if stor1 == address(cd[(arg5 + 196)]):
                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                mem[(2 * ceil32(return_data.size)) + 420] = stor1
                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor1, -1
                                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 452] = 1
                                mem[(4 * ceil32(return_data.size)) + 484] = 160
                                mem[(4 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 612
                                t = (2 * ceil32(return_data.size)) + 352
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                require ext_code.size(address(cd[(arg5 + 196)]))
                                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _1824 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _1856 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require return_data.size >= _1824 + (32 * _1856) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1856] = mem[(4 * ceil32(return_data.size)) + _1824 + 448 len 32 * _1856]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2698 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2730 = mem[_2698]
                                if mem[_2698] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                                if stor1 != address(cd[(arg5 + 228)]):
                                    if stor2 != address(cd[(arg5 + 228)]):
                                        if stor3 == address(cd[(arg5 + 228)]):
                                            mem[mem[64] + 4] = stor3
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor3, -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2899 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2899] == bool(mem[_2899])
                                            require ext_code.size(stor10)
                                            if stor4 == address(cd[(arg5 + 132)]):
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, _2730, 1
                                            else:
                                                if stor5 != address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _2730, 1
                                                else:
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, _2730, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2797 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_2797]
                                        mem[_2797 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_2797]
                                        mem[_2797 + 64] = address(cd[(arg5 + 68)])
                                        mem[_2797 + 100] = stor2
                                        mem[_2797 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor2, -1
                                        mem[_2797 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2797 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_2797 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2797 + ceil32(return_data.size) + 100] = _2730
                                        mem[_2797 + ceil32(return_data.size) + 132] = 1
                                        mem[_2797 + ceil32(return_data.size) + 164] = 160
                                        mem[_2797 + ceil32(return_data.size) + 260] = mem[_2797]
                                        idx = 0
                                        s = _2797 + ceil32(return_data.size) + 292
                                        t = _2797 + 32
                                        while idx < mem[_2797]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2797 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2797 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(stor8)
                                        call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args _2730, 1, 160, address(this.address), block.timestamp + 1, mem[_2797 + ceil32(return_data.size) + 260 len (32 * mem[_2797]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2797 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2797 + (2 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        require mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 <= test266151307()
                                        require _2797 + ceil32(return_data.size) + mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 + 127 < _2797 + ceil32(return_data.size) + return_data.size + 96
                                        require mem[_2797 + ceil32(return_data.size) + mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 + 96] <= test266151307()
                                        require (32 * mem[_2797 + ceil32(return_data.size) + mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 + 96]) + 32 >= 0 and _2797 + (2 * ceil32(return_data.size)) + (32 * mem[_2797 + ceil32(return_data.size) + mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 + 96]) + 128 <= test266151307()
                                        require return_data.size >= mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 + (32 * mem[_2797 + ceil32(return_data.size) + mem[_2797 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2730) >> 32 + 96]) + 32
                                else:
                                    _2767 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_2767]
                                    mem[_2767 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_2767]
                                    mem[_2767 + 64] = address(cd[(arg5 + 68)])
                                    mem[_2767 + 100] = stor1
                                    mem[_2767 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor1, -1
                                    mem[_2767 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2767 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_2767 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_2767 + ceil32(return_data.size) + 100] = _2730
                                    mem[_2767 + ceil32(return_data.size) + 132] = 1
                                    mem[_2767 + ceil32(return_data.size) + 164] = 160
                                    mem[_2767 + ceil32(return_data.size) + 260] = mem[_2767]
                                    idx = 0
                                    s = _2767 + ceil32(return_data.size) + 292
                                    t = _2767 + 32
                                    while idx < mem[_2767]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_2767 + ceil32(return_data.size) + 196] = this.address
                                    mem[_2767 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 228)]))
                                    call address(cd[(arg5 + 228)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2767 + ceil32(return_data.size) + (32 * mem[_2767]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3306 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3306] <= test266151307()
                                    require _3306 + mem[_3306] + 31 < _3306 + return_data.size
                                    require mem[_3306 + mem[_3306]] <= test266151307()
                                    require (32 * mem[_3306 + mem[_3306]]) + 32 >= 0 and _3306 + ceil32(return_data.size) + (32 * mem[_3306 + mem[_3306]]) + 32 <= test266151307()
                                    require return_data.size >= mem[_3306] + (32 * mem[_3306 + mem[_3306]]) + 32
                                require ext_code.size(address(cd[(arg5 + 68)]))
                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                            else:
                                if stor2 != address(cd[(arg5 + 196)]):
                                    if stor3 != address(cd[(arg5 + 196)]):
                                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                        if stor1 == address(cd[(arg5 + 228)]):
                                            mem[(4 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                            mem[(4 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                            mem[(4 * ceil32(return_data.size)) + 420] = stor1
                                            mem[(4 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor1, -1
                                            mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                            mem[(6 * ceil32(return_data.size)) + 452] = 1
                                            mem[(6 * ceil32(return_data.size)) + 484] = 160
                                            mem[(6 * ceil32(return_data.size)) + 580] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 612
                                            t = (4 * ceil32(return_data.size)) + 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(6 * ceil32(return_data.size)) + 516] = this.address
                                            mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                            require ext_code.size(address(cd[(arg5 + 228)]))
                                            call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (7 * ceil32(return_data.size)) + 416
                                            require return_data.size >= 32
                                            require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            require return_data.size >= mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                        else:
                                            if stor2 != address(cd[(arg5 + 228)]):
                                                if stor3 == address(cd[(arg5 + 228)]):
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor3, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor10)
                                                    if stor4 == address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor5 != address(cd[(arg5 + 132)]):
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                                mem[(4 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                                mem[(4 * ceil32(return_data.size)) + 420] = stor2
                                                mem[(4 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, -1
                                                mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                mem[(6 * ceil32(return_data.size)) + 452] = 1
                                                mem[(6 * ceil32(return_data.size)) + 484] = 160
                                                mem[(6 * ceil32(return_data.size)) + 580] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + 612
                                                t = (4 * ceil32(return_data.size)) + 352
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(6 * ceil32(return_data.size)) + 516] = this.address
                                                mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                                require ext_code.size(stor8)
                                                call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (7 * ceil32(return_data.size)) + 416
                                                require return_data.size >= 32
                                                require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                require return_data.size >= mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 324] = stor3
                                        mem[(2 * ceil32(return_data.size)) + 356] = -1
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor3, -1
                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if stor4 == address(cd[(arg5 + 100)]):
                                            mem[(4 * ceil32(return_data.size)) + 356] = 0
                                            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + 420] = 1
                                            require ext_code.size(stor10)
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, ext_call.return_data[0], 1
                                        else:
                                            if stor5 != address(cd[(arg5 + 100)]):
                                                mem[(4 * ceil32(return_data.size)) + 356] = 0
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + 420] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, ext_call.return_data[0], 1
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 356] = 1
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + 420] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, ext_call.return_data[0], 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                        if stor1 == address(cd[(arg5 + 228)]):
                                            mem[(6 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                            mem[(6 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                            mem[(6 * ceil32(return_data.size)) + 420] = stor1
                                            mem[(6 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor1, -1
                                            mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                            mem[(7 * ceil32(return_data.size)) + 452] = 1
                                            mem[(7 * ceil32(return_data.size)) + 484] = 160
                                            mem[(7 * ceil32(return_data.size)) + 580] = 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 612
                                            t = (6 * ceil32(return_data.size)) + 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(7 * ceil32(return_data.size)) + 516] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                            require ext_code.size(address(cd[(arg5 + 228)]))
                                            call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (8 * ceil32(return_data.size)) + 416
                                            require return_data.size >= 32
                                            require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                        else:
                                            if stor2 != address(cd[(arg5 + 228)]):
                                                if stor3 == address(cd[(arg5 + 228)]):
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor3, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor10)
                                                    if stor4 == address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor5 != address(cd[(arg5 + 132)]):
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                                mem[(6 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                                mem[(6 * ceil32(return_data.size)) + 420] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, -1
                                                mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(7 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                mem[(7 * ceil32(return_data.size)) + 452] = 1
                                                mem[(7 * ceil32(return_data.size)) + 484] = 160
                                                mem[(7 * ceil32(return_data.size)) + 580] = 2
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + 612
                                                t = (6 * ceil32(return_data.size)) + 352
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + 516] = this.address
                                                mem[(7 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                                require ext_code.size(stor8)
                                                call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (8 * ceil32(return_data.size)) + 416
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                    mem[(2 * ceil32(return_data.size)) + 420] = stor2
                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor2, -1
                                    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 452] = 1
                                    mem[(4 * ceil32(return_data.size)) + 484] = 160
                                    mem[(4 * ceil32(return_data.size)) + 580] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 612
                                    t = (2 * ceil32(return_data.size)) + 352
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 196)]))
                                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 416
                                    require return_data.size >= 32
                                    _1823 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _1855 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require return_data.size >= _1823 + (32 * _1855) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1855] = mem[(4 * ceil32(return_data.size)) + _1823 + 448 len 32 * _1855]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2697 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2729 = mem[_2697]
                                    if mem[_2697] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                    if stor1 == address(cd[(arg5 + 228)]):
                                        _2765 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_2765]
                                        mem[_2765 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_2765]
                                        mem[_2765 + 64] = address(cd[(arg5 + 68)])
                                        mem[_2765 + 100] = stor1
                                        mem[_2765 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor1, -1
                                        mem[_2765 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2765 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_2765 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2765 + ceil32(return_data.size) + 100] = _2729
                                        mem[_2765 + ceil32(return_data.size) + 132] = 1
                                        mem[_2765 + ceil32(return_data.size) + 164] = 160
                                        mem[_2765 + ceil32(return_data.size) + 260] = mem[_2765]
                                        idx = 0
                                        s = _2765 + ceil32(return_data.size) + 292
                                        t = _2765 + 32
                                        while idx < mem[_2765]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2765 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2765 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(address(cd[(arg5 + 228)]))
                                        call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args _2729, 1, 160, address(this.address), block.timestamp + 1, mem[_2765 + ceil32(return_data.size) + 260 len (32 * mem[_2765]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2765 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2765 + (2 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        require mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 <= test266151307()
                                        require _2765 + ceil32(return_data.size) + mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 127 < _2765 + ceil32(return_data.size) + return_data.size + 96
                                        require mem[_2765 + ceil32(return_data.size) + mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96] <= test266151307()
                                        require (32 * mem[_2765 + ceil32(return_data.size) + mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96]) + 32 >= 0 and _2765 + (2 * ceil32(return_data.size)) + (32 * mem[_2765 + ceil32(return_data.size) + mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96]) + 128 <= test266151307()
                                        require return_data.size >= mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + (32 * mem[_2765 + ceil32(return_data.size) + mem[_2765 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96]) + 32
                                    else:
                                        if stor2 != address(cd[(arg5 + 228)]):
                                            if stor3 == address(cd[(arg5 + 228)]):
                                                mem[mem[64] + 4] = stor3
                                                mem[mem[64] + 36] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor3, -1
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2896 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2896] == bool(mem[_2896])
                                                require ext_code.size(stor10)
                                                if stor4 == address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, _2729, 1
                                                else:
                                                    if stor5 != address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, _2729, 1
                                                    else:
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, _2729, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2793 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            require 0 < mem[_2793]
                                            mem[_2793 + 32] = address(cd[(arg5 + 132)])
                                            require 1 < mem[_2793]
                                            mem[_2793 + 64] = address(cd[(arg5 + 68)])
                                            mem[_2793 + 100] = stor2
                                            mem[_2793 + 132] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor2, -1
                                            mem[_2793 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2793 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[_2793 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_2793 + ceil32(return_data.size) + 100] = _2729
                                            mem[_2793 + ceil32(return_data.size) + 132] = 1
                                            mem[_2793 + ceil32(return_data.size) + 164] = 160
                                            mem[_2793 + ceil32(return_data.size) + 260] = mem[_2793]
                                            idx = 0
                                            s = _2793 + ceil32(return_data.size) + 292
                                            t = _2793 + 32
                                            while idx < mem[_2793]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_2793 + ceil32(return_data.size) + 196] = this.address
                                            mem[_2793 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                            require ext_code.size(stor8)
                                            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args _2729, 1, 160, address(this.address), block.timestamp + 1, mem[_2793 + ceil32(return_data.size) + 260 len (32 * mem[_2793]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2793 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2793 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 <= test266151307()
                                            require _2793 + ceil32(return_data.size) + mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 127 < _2793 + ceil32(return_data.size) + return_data.size + 96
                                            require mem[_2793 + ceil32(return_data.size) + mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96] <= test266151307()
                                            require (32 * mem[_2793 + ceil32(return_data.size) + mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96]) + 32 >= 0 and _2793 + (2 * ceil32(return_data.size)) + (32 * mem[_2793 + ceil32(return_data.size) + mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96]) + 128 <= test266151307()
                                            require return_data.size >= mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + (32 * mem[_2793 + ceil32(return_data.size) + mem[_2793 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2729) >> 32 + 96]) + 32
                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                        else:
                            mem[ceil32(return_data.size) + 356] = 1
                            mem[ceil32(return_data.size) + 388] = arg3
                            mem[ceil32(return_data.size) + 420] = 1
                            require ext_code.size(stor10)
                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 1, arg3, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 324] = this.address
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Contract has not recived Token B'
                            if stor1 != address(cd[(arg5 + 196)]):
                                if stor2 != address(cd[(arg5 + 196)]):
                                    if stor3 != address(cd[(arg5 + 196)]):
                                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                        if stor1 == address(cd[(arg5 + 228)]):
                                            mem[(4 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                            mem[(4 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                            mem[(4 * ceil32(return_data.size)) + 420] = stor1
                                            mem[(4 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor1, -1
                                            mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                            mem[(6 * ceil32(return_data.size)) + 452] = 1
                                            mem[(6 * ceil32(return_data.size)) + 484] = 160
                                            mem[(6 * ceil32(return_data.size)) + 580] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 612
                                            t = (4 * ceil32(return_data.size)) + 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(6 * ceil32(return_data.size)) + 516] = this.address
                                            mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                            require ext_code.size(address(cd[(arg5 + 228)]))
                                            call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (7 * ceil32(return_data.size)) + 416
                                            require return_data.size >= 32
                                            require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            require return_data.size >= mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                        else:
                                            if stor2 != address(cd[(arg5 + 228)]):
                                                if stor3 == address(cd[(arg5 + 228)]):
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor3, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor10)
                                                    if stor4 == address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor5 != address(cd[(arg5 + 132)]):
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                                mem[(4 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                                mem[(4 * ceil32(return_data.size)) + 420] = stor2
                                                mem[(4 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, -1
                                                mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                mem[(6 * ceil32(return_data.size)) + 452] = 1
                                                mem[(6 * ceil32(return_data.size)) + 484] = 160
                                                mem[(6 * ceil32(return_data.size)) + 580] = 2
                                                idx = 0
                                                s = (6 * ceil32(return_data.size)) + 612
                                                t = (4 * ceil32(return_data.size)) + 352
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(6 * ceil32(return_data.size)) + 516] = this.address
                                                mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                                require ext_code.size(stor8)
                                                call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (7 * ceil32(return_data.size)) + 416
                                                require return_data.size >= 32
                                                require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                require return_data.size >= mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 324] = stor3
                                        mem[(2 * ceil32(return_data.size)) + 356] = -1
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor3, -1
                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if stor4 == address(cd[(arg5 + 100)]):
                                            mem[(4 * ceil32(return_data.size)) + 356] = 0
                                            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + 420] = 1
                                            require ext_code.size(stor10)
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, ext_call.return_data[0], 1
                                        else:
                                            if stor5 != address(cd[(arg5 + 100)]):
                                                mem[(4 * ceil32(return_data.size)) + 356] = 0
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + 420] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, ext_call.return_data[0], 1
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 356] = 1
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + 420] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, ext_call.return_data[0], 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                        if stor1 == address(cd[(arg5 + 228)]):
                                            mem[(6 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                            mem[(6 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                            mem[(6 * ceil32(return_data.size)) + 420] = stor1
                                            mem[(6 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor1, -1
                                            mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                            mem[(7 * ceil32(return_data.size)) + 452] = 1
                                            mem[(7 * ceil32(return_data.size)) + 484] = 160
                                            mem[(7 * ceil32(return_data.size)) + 580] = 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 612
                                            t = (6 * ceil32(return_data.size)) + 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(7 * ceil32(return_data.size)) + 516] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                            require ext_code.size(address(cd[(arg5 + 228)]))
                                            call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (8 * ceil32(return_data.size)) + 416
                                            require return_data.size >= 32
                                            require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                        else:
                                            if stor2 != address(cd[(arg5 + 228)]):
                                                if stor3 == address(cd[(arg5 + 228)]):
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor3, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor10)
                                                    if stor4 == address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor5 != address(cd[(arg5 + 132)]):
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                                mem[(6 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                                mem[(6 * ceil32(return_data.size)) + 420] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, -1
                                                mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[(7 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                                mem[(7 * ceil32(return_data.size)) + 452] = 1
                                                mem[(7 * ceil32(return_data.size)) + 484] = 160
                                                mem[(7 * ceil32(return_data.size)) + 580] = 2
                                                idx = 0
                                                s = (7 * ceil32(return_data.size)) + 612
                                                t = (6 * ceil32(return_data.size)) + 352
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(7 * ceil32(return_data.size)) + 516] = this.address
                                                mem[(7 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                                require ext_code.size(stor8)
                                                call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = (8 * ceil32(return_data.size)) + 416
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                require return_data.size >= mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                    mem[(2 * ceil32(return_data.size)) + 420] = stor2
                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor2, -1
                                    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 452] = 1
                                    mem[(4 * ceil32(return_data.size)) + 484] = 160
                                    mem[(4 * ceil32(return_data.size)) + 580] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 612
                                    t = (2 * ceil32(return_data.size)) + 352
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 196)]))
                                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 416
                                    require return_data.size >= 32
                                    _1833 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _1865 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require return_data.size >= _1833 + (32 * _1865) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1865] = mem[(4 * ceil32(return_data.size)) + _1833 + 448 len 32 * _1865]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2707 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2739 = mem[_2707]
                                    if mem[_2707] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                    if stor1 != address(cd[(arg5 + 228)]):
                                        if stor2 != address(cd[(arg5 + 228)]):
                                            if stor3 == address(cd[(arg5 + 228)]):
                                                mem[mem[64] + 4] = stor3
                                                mem[mem[64] + 36] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor3, -1
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2902 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2902] == bool(mem[_2902])
                                                require ext_code.size(stor10)
                                                if stor4 == address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, _2739, 1
                                                else:
                                                    if stor5 != address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, _2739, 1
                                                    else:
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, _2739, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2801 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            require 0 < mem[_2801]
                                            mem[_2801 + 32] = address(cd[(arg5 + 132)])
                                            require 1 < mem[_2801]
                                            mem[_2801 + 64] = address(cd[(arg5 + 68)])
                                            mem[_2801 + 100] = stor2
                                            mem[_2801 + 132] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor2, -1
                                            mem[_2801 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2801 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[_2801 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_2801 + ceil32(return_data.size) + 100] = _2739
                                            mem[_2801 + ceil32(return_data.size) + 132] = 1
                                            mem[_2801 + ceil32(return_data.size) + 164] = 160
                                            mem[_2801 + ceil32(return_data.size) + 260] = mem[_2801]
                                            idx = 0
                                            s = _2801 + ceil32(return_data.size) + 292
                                            t = _2801 + 32
                                            while idx < mem[_2801]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_2801 + ceil32(return_data.size) + 196] = this.address
                                            mem[_2801 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                            require ext_code.size(stor8)
                                            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args _2739, 1, 160, address(this.address), block.timestamp + 1, mem[_2801 + ceil32(return_data.size) + 260 len (32 * mem[_2801]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2801 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2801 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            require mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 <= test266151307()
                                            require _2801 + ceil32(return_data.size) + mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 + 127 < _2801 + ceil32(return_data.size) + return_data.size + 96
                                            require mem[_2801 + ceil32(return_data.size) + mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 + 96] <= test266151307()
                                            require (32 * mem[_2801 + ceil32(return_data.size) + mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 + 96]) + 32 >= 0 and _2801 + (2 * ceil32(return_data.size)) + (32 * mem[_2801 + ceil32(return_data.size) + mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 + 96]) + 128 <= test266151307()
                                            require return_data.size >= mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 + (32 * mem[_2801 + ceil32(return_data.size) + mem[_2801 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2739) >> 32 + 96]) + 32
                                    else:
                                        _2777 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_2777]
                                        mem[_2777 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_2777]
                                        mem[_2777 + 64] = address(cd[(arg5 + 68)])
                                        mem[_2777 + 100] = stor1
                                        mem[_2777 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor1, -1
                                        mem[_2777 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2777 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_2777 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2777 + ceil32(return_data.size) + 100] = _2739
                                        mem[_2777 + ceil32(return_data.size) + 132] = 1
                                        mem[_2777 + ceil32(return_data.size) + 164] = 160
                                        mem[_2777 + ceil32(return_data.size) + 260] = mem[_2777]
                                        idx = 0
                                        s = _2777 + ceil32(return_data.size) + 292
                                        t = _2777 + 32
                                        while idx < mem[_2777]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2777 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2777 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(address(cd[(arg5 + 228)]))
                                        call address(cd[(arg5 + 228)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2777 + ceil32(return_data.size) + (32 * mem[_2777]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3308 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3308] <= test266151307()
                                        require _3308 + mem[_3308] + 31 < _3308 + return_data.size
                                        require mem[_3308 + mem[_3308]] <= test266151307()
                                        require (32 * mem[_3308 + mem[_3308]]) + 32 >= 0 and _3308 + ceil32(return_data.size) + (32 * mem[_3308 + mem[_3308]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_3308] + (32 * mem[_3308 + mem[_3308]]) + 32
                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                            else:
                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                mem[(2 * ceil32(return_data.size)) + 420] = stor1
                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor1, -1
                                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 452] = 1
                                mem[(4 * ceil32(return_data.size)) + 484] = 160
                                mem[(4 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 612
                                t = (2 * ceil32(return_data.size)) + 352
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                require ext_code.size(address(cd[(arg5 + 196)]))
                                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _1834 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _1866 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require return_data.size >= _1834 + (32 * _1866) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1866] = mem[(4 * ceil32(return_data.size)) + _1834 + 448 len 32 * _1866]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2708 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2740 = mem[_2708]
                                if mem[_2708] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                                if stor1 == address(cd[(arg5 + 228)]):
                                    _2779 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_2779]
                                    mem[_2779 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_2779]
                                    mem[_2779 + 64] = address(cd[(arg5 + 68)])
                                    mem[_2779 + 100] = stor1
                                    mem[_2779 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor1, -1
                                    mem[_2779 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2779 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_2779 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_2779 + ceil32(return_data.size) + 100] = _2740
                                    mem[_2779 + ceil32(return_data.size) + 132] = 1
                                    mem[_2779 + ceil32(return_data.size) + 164] = 160
                                    mem[_2779 + ceil32(return_data.size) + 260] = mem[_2779]
                                    idx = 0
                                    s = _2779 + ceil32(return_data.size) + 292
                                    t = _2779 + 32
                                    while idx < mem[_2779]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_2779 + ceil32(return_data.size) + 196] = this.address
                                    mem[_2779 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 228)]))
                                    call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _2740, 1, 160, address(this.address), block.timestamp + 1, mem[_2779 + ceil32(return_data.size) + 260 len (32 * mem[_2779]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2779 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2779 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 <= test266151307()
                                    require _2779 + ceil32(return_data.size) + mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 + 127 < _2779 + ceil32(return_data.size) + return_data.size + 96
                                    require mem[_2779 + ceil32(return_data.size) + mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 + 96] <= test266151307()
                                    require (32 * mem[_2779 + ceil32(return_data.size) + mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 + 96]) + 32 >= 0 and _2779 + (2 * ceil32(return_data.size)) + (32 * mem[_2779 + ceil32(return_data.size) + mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 + 96]) + 128 <= test266151307()
                                    require return_data.size >= mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 + (32 * mem[_2779 + ceil32(return_data.size) + mem[_2779 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2740) >> 32 + 96]) + 32
                                else:
                                    if stor2 != address(cd[(arg5 + 228)]):
                                        if stor3 == address(cd[(arg5 + 228)]):
                                            mem[mem[64] + 4] = stor3
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor3, -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2905 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2905] == bool(mem[_2905])
                                            require ext_code.size(stor10)
                                            if stor4 == address(cd[(arg5 + 132)]):
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, _2740, 1
                                            else:
                                                if stor5 != address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _2740, 1
                                                else:
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, _2740, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2805 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_2805]
                                        mem[_2805 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_2805]
                                        mem[_2805 + 64] = address(cd[(arg5 + 68)])
                                        mem[_2805 + 100] = stor2
                                        mem[_2805 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor2, -1
                                        mem[_2805 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2805 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_2805 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2805 + ceil32(return_data.size) + 100] = _2740
                                        mem[_2805 + ceil32(return_data.size) + 132] = 1
                                        mem[_2805 + ceil32(return_data.size) + 164] = 160
                                        mem[_2805 + ceil32(return_data.size) + 260] = mem[_2805]
                                        idx = 0
                                        s = _2805 + ceil32(return_data.size) + 292
                                        t = _2805 + 32
                                        while idx < mem[_2805]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2805 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2805 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2805 + ceil32(return_data.size) + (32 * mem[_2805]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3309 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3309] <= test266151307()
                                        require _3309 + mem[_3309] + 31 < _3309 + return_data.size
                                        require mem[_3309 + mem[_3309]] <= test266151307()
                                        require (32 * mem[_3309 + mem[_3309]]) + 32 >= 0 and _3309 + ceil32(return_data.size) + (32 * mem[_3309 + mem[_3309]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_3309] + (32 * mem[_3309 + mem[_3309]]) + 32
                                require ext_code.size(address(cd[(arg5 + 68)]))
                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                    else:
                        mem[ceil32(return_data.size) + 356] = 0
                        mem[ceil32(return_data.size) + 388] = arg3
                        mem[ceil32(return_data.size) + 420] = 1
                        require ext_code.size(stor10)
                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 1, 0, arg3, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 324] = this.address
                        require ext_code.size(address(cd[(arg5 + 100)]))
                        staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Contract has not recived Token B'
                        if stor1 == address(cd[(arg5 + 196)]):
                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                            mem[(2 * ceil32(return_data.size)) + 420] = stor1
                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor1, -1
                            mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                            mem[(4 * ceil32(return_data.size)) + 452] = 1
                            mem[(4 * ceil32(return_data.size)) + 484] = 160
                            mem[(4 * ceil32(return_data.size)) + 580] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 612
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 516] = this.address
                            mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                            require ext_code.size(address(cd[(arg5 + 196)]))
                            call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 416
                            require return_data.size >= 32
                            _1844 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                            _1876 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                            require return_data.size >= _1844 + (32 * _1876) + 32
                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1876] = mem[(4 * ceil32(return_data.size)) + _1844 + 448 len 32 * _1876]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 132)]))
                            staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2750 = mem[_2718]
                            if mem[_2718] <= 0:
                                revert with 0, 'Contract has not recived Token C'
                            if stor1 == address(cd[(arg5 + 228)]):
                                _2791 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2791]
                                mem[_2791 + 32] = address(cd[(arg5 + 132)])
                                require 1 < mem[_2791]
                                mem[_2791 + 64] = address(cd[(arg5 + 68)])
                                mem[_2791 + 100] = stor1
                                mem[_2791 + 132] = -1
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor1, -1
                                mem[_2791 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2791 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_2791 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2791 + ceil32(return_data.size) + 100] = _2750
                                mem[_2791 + ceil32(return_data.size) + 132] = 1
                                mem[_2791 + ceil32(return_data.size) + 164] = 160
                                mem[_2791 + ceil32(return_data.size) + 260] = mem[_2791]
                                idx = 0
                                s = _2791 + ceil32(return_data.size) + 292
                                t = _2791 + 32
                                while idx < mem[_2791]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_2791 + ceil32(return_data.size) + 196] = this.address
                                mem[_2791 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                require ext_code.size(address(cd[(arg5 + 228)]))
                                call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2750, 1, 160, address(this.address), block.timestamp + 1, mem[_2791 + ceil32(return_data.size) + 260 len (32 * mem[_2791]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2791 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2791 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 <= test266151307()
                                require _2791 + ceil32(return_data.size) + mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 127 < _2791 + ceil32(return_data.size) + return_data.size + 96
                                require mem[_2791 + ceil32(return_data.size) + mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96] <= test266151307()
                                require (32 * mem[_2791 + ceil32(return_data.size) + mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96]) + 32 >= 0 and _2791 + (2 * ceil32(return_data.size)) + (32 * mem[_2791 + ceil32(return_data.size) + mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96]) + 128 <= test266151307()
                                require return_data.size >= mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + (32 * mem[_2791 + ceil32(return_data.size) + mem[_2791 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96]) + 32
                            else:
                                if stor2 != address(cd[(arg5 + 228)]):
                                    if stor3 == address(cd[(arg5 + 228)]):
                                        mem[mem[64] + 4] = stor3
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor3, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2911 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2911] == bool(mem[_2911])
                                        require ext_code.size(stor10)
                                        if stor4 == address(cd[(arg5 + 132)]):
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, _2750, 1
                                        else:
                                            if stor5 != address(cd[(arg5 + 132)]):
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, _2750, 1
                                            else:
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, _2750, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _2813 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_2813]
                                    mem[_2813 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_2813]
                                    mem[_2813 + 64] = address(cd[(arg5 + 68)])
                                    mem[_2813 + 100] = stor2
                                    mem[_2813 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor2, -1
                                    mem[_2813 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2813 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_2813 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_2813 + ceil32(return_data.size) + 100] = _2750
                                    mem[_2813 + ceil32(return_data.size) + 132] = 1
                                    mem[_2813 + ceil32(return_data.size) + 164] = 160
                                    mem[_2813 + ceil32(return_data.size) + 260] = mem[_2813]
                                    idx = 0
                                    s = _2813 + ceil32(return_data.size) + 292
                                    t = _2813 + 32
                                    while idx < mem[_2813]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_2813 + ceil32(return_data.size) + 196] = this.address
                                    mem[_2813 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _2750, 1, 160, address(this.address), block.timestamp + 1, mem[_2813 + ceil32(return_data.size) + 260 len (32 * mem[_2813]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2813 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2813 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 <= test266151307()
                                    require _2813 + ceil32(return_data.size) + mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 127 < _2813 + ceil32(return_data.size) + return_data.size + 96
                                    require mem[_2813 + ceil32(return_data.size) + mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96] <= test266151307()
                                    require (32 * mem[_2813 + ceil32(return_data.size) + mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96]) + 32 >= 0 and _2813 + (2 * ceil32(return_data.size)) + (32 * mem[_2813 + ceil32(return_data.size) + mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96]) + 128 <= test266151307()
                                    require return_data.size >= mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + (32 * mem[_2813 + ceil32(return_data.size) + mem[_2813 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2750) >> 32 + 96]) + 32
                            require ext_code.size(address(cd[(arg5 + 68)]))
                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                        else:
                            if stor2 != address(cd[(arg5 + 196)]):
                                if stor3 != address(cd[(arg5 + 196)]):
                                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                    if stor1 == address(cd[(arg5 + 228)]):
                                        mem[(4 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                        mem[(4 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                        mem[(4 * ceil32(return_data.size)) + 420] = stor1
                                        mem[(4 * ceil32(return_data.size)) + 452] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor1, -1
                                        mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                        mem[(6 * ceil32(return_data.size)) + 452] = 1
                                        mem[(6 * ceil32(return_data.size)) + 484] = 160
                                        mem[(6 * ceil32(return_data.size)) + 580] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 612
                                        t = (4 * ceil32(return_data.size)) + 352
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(6 * ceil32(return_data.size)) + 516] = this.address
                                        mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                        require ext_code.size(address(cd[(arg5 + 228)]))
                                        call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (7 * ceil32(return_data.size)) + 416
                                        require return_data.size >= 32
                                        require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                        require return_data.size >= mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                    else:
                                        if stor2 != address(cd[(arg5 + 228)]):
                                            if stor3 == address(cd[(arg5 + 228)]):
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor3, -1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(stor10)
                                                if stor4 == address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor5 != address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, ext_call.return_data[0], 1
                                                    else:
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, ext_call.return_data[0], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                            mem[(4 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                            mem[(4 * ceil32(return_data.size)) + 420] = stor2
                                            mem[(4 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor2, -1
                                            mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                            mem[(6 * ceil32(return_data.size)) + 452] = 1
                                            mem[(6 * ceil32(return_data.size)) + 484] = 160
                                            mem[(6 * ceil32(return_data.size)) + 580] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 612
                                            t = (4 * ceil32(return_data.size)) + 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(6 * ceil32(return_data.size)) + 516] = this.address
                                            mem[(6 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                            require ext_code.size(stor8)
                                            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (7 * ceil32(return_data.size)) + 416
                                            require return_data.size >= 32
                                            require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            require return_data.size >= mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 324] = stor3
                                    mem[(2 * ceil32(return_data.size)) + 356] = -1
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor3, -1
                                    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if stor4 == address(cd[(arg5 + 100)]):
                                        mem[(4 * ceil32(return_data.size)) + 356] = 0
                                        mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                        mem[(4 * ceil32(return_data.size)) + 420] = 1
                                        require ext_code.size(stor10)
                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 1, 0, ext_call.return_data[0], 1
                                    else:
                                        if stor5 != address(cd[(arg5 + 100)]):
                                            mem[(4 * ceil32(return_data.size)) + 356] = 0
                                            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + 420] = 1
                                            require ext_code.size(stor10)
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, ext_call.return_data[0], 1
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + 356] = 1
                                            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + 420] = 1
                                            require ext_code.size(stor10)
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 1, ext_call.return_data[0], 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                    if stor1 == address(cd[(arg5 + 228)]):
                                        mem[(6 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                        mem[(6 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                        mem[(6 * ceil32(return_data.size)) + 420] = stor1
                                        mem[(6 * ceil32(return_data.size)) + 452] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor1, -1
                                        mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(7 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                        mem[(7 * ceil32(return_data.size)) + 452] = 1
                                        mem[(7 * ceil32(return_data.size)) + 484] = 160
                                        mem[(7 * ceil32(return_data.size)) + 580] = 2
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 612
                                        t = (6 * ceil32(return_data.size)) + 352
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(7 * ceil32(return_data.size)) + 516] = this.address
                                        mem[(7 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                        require ext_code.size(address(cd[(arg5 + 228)]))
                                        call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (8 * ceil32(return_data.size)) + 416
                                        require return_data.size >= 32
                                        require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                        require return_data.size >= mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                    else:
                                        if stor2 != address(cd[(arg5 + 228)]):
                                            if stor3 == address(cd[(arg5 + 228)]):
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor3, -1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(stor10)
                                                if stor4 == address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor5 != address(cd[(arg5 + 132)]):
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, ext_call.return_data[0], 1
                                                    else:
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, ext_call.return_data[0], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 132)])
                                            mem[(6 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 68)])
                                            mem[(6 * ceil32(return_data.size)) + 420] = stor2
                                            mem[(6 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor2, -1
                                            mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                            mem[(7 * ceil32(return_data.size)) + 452] = 1
                                            mem[(7 * ceil32(return_data.size)) + 484] = 160
                                            mem[(7 * ceil32(return_data.size)) + 580] = 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 612
                                            t = (6 * ceil32(return_data.size)) + 352
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(7 * ceil32(return_data.size)) + 516] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                            require ext_code.size(stor8)
                                            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 1, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (8 * ceil32(return_data.size)) + 416
                                            require return_data.size >= 32
                                            require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            require return_data.size >= mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                            else:
                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                mem[(2 * ceil32(return_data.size)) + 420] = stor2
                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor2, -1
                                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 452] = 1
                                mem[(4 * ceil32(return_data.size)) + 484] = 160
                                mem[(4 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 612
                                t = (2 * ceil32(return_data.size)) + 352
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                require ext_code.size(address(cd[(arg5 + 196)]))
                                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), block.timestamp + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _1843 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _1875 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require return_data.size >= _1843 + (32 * _1875) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _1875] = mem[(4 * ceil32(return_data.size)) + _1843 + 448 len 32 * _1875]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2717 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2749 = mem[_2717]
                                if mem[_2717] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                                if stor1 == address(cd[(arg5 + 228)]):
                                    _2789 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_2789]
                                    mem[_2789 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_2789]
                                    mem[_2789 + 64] = address(cd[(arg5 + 68)])
                                    mem[_2789 + 100] = stor1
                                    mem[_2789 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor1, -1
                                    mem[_2789 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2789 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_2789 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_2789 + ceil32(return_data.size) + 100] = _2749
                                    mem[_2789 + ceil32(return_data.size) + 132] = 1
                                    mem[_2789 + ceil32(return_data.size) + 164] = 160
                                    mem[_2789 + ceil32(return_data.size) + 260] = mem[_2789]
                                    idx = 0
                                    s = _2789 + ceil32(return_data.size) + 292
                                    t = _2789 + 32
                                    while idx < mem[_2789]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_2789 + ceil32(return_data.size) + 196] = this.address
                                    mem[_2789 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 228)]))
                                    call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _2749, 1, 160, address(this.address), block.timestamp + 1, mem[_2789 + ceil32(return_data.size) + 260 len (32 * mem[_2789]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2789 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2789 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 <= test266151307()
                                    require _2789 + ceil32(return_data.size) + mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 + 127 < _2789 + ceil32(return_data.size) + return_data.size + 96
                                    require mem[_2789 + ceil32(return_data.size) + mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 + 96] <= test266151307()
                                    require (32 * mem[_2789 + ceil32(return_data.size) + mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 + 96]) + 32 >= 0 and _2789 + (2 * ceil32(return_data.size)) + (32 * mem[_2789 + ceil32(return_data.size) + mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 + 96]) + 128 <= test266151307()
                                    require return_data.size >= mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 + (32 * mem[_2789 + ceil32(return_data.size) + mem[_2789 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _2749) >> 32 + 96]) + 32
                                else:
                                    if stor2 != address(cd[(arg5 + 228)]):
                                        if stor3 == address(cd[(arg5 + 228)]):
                                            mem[mem[64] + 4] = stor3
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor3, -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2908 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2908] == bool(mem[_2908])
                                            require ext_code.size(stor10)
                                            if stor4 == address(cd[(arg5 + 132)]):
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, _2749, 1
                                            else:
                                                if stor5 != address(cd[(arg5 + 132)]):
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _2749, 1
                                                else:
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, _2749, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2809 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_2809]
                                        mem[_2809 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_2809]
                                        mem[_2809 + 64] = address(cd[(arg5 + 68)])
                                        mem[_2809 + 100] = stor2
                                        mem[_2809 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor2, -1
                                        mem[_2809 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2809 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_2809 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2809 + ceil32(return_data.size) + 100] = _2749
                                        mem[_2809 + ceil32(return_data.size) + 132] = 1
                                        mem[_2809 + ceil32(return_data.size) + 164] = 160
                                        mem[_2809 + ceil32(return_data.size) + 260] = mem[_2809]
                                        idx = 0
                                        s = _2809 + ceil32(return_data.size) + 292
                                        t = _2809 + 32
                                        while idx < mem[_2809]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_2809 + ceil32(return_data.size) + 196] = this.address
                                        mem[_2809 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2809 + ceil32(return_data.size) + (32 * mem[_2809]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3311 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3311] <= test266151307()
                                        require _3311 + mem[_3311] + 31 < _3311 + return_data.size
                                        require mem[_3311 + mem[_3311]] <= test266151307()
                                        require (32 * mem[_3311 + mem[_3311]]) + 32 >= 0 and _3311 + ceil32(return_data.size) + (32 * mem[_3311 + mem[_3311]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_3311] + (32 * mem[_3311 + mem[_3311]]) + 32
                                require ext_code.size(address(cd[(arg5 + 68)]))
                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
