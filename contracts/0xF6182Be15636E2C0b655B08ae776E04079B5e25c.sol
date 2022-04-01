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
                    if stor4 == address(cd[(arg5 + 68)]):
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
                            _2060 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                            _2092 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                            require return_data.size >= _2060 + (32 * _2092) + 32
                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _2092] = mem[(4 * ceil32(return_data.size)) + _2060 + 448 len 32 * _2092]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 132)]))
                            staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3086 = mem[_3054]
                            if mem[_3054] <= 0:
                                revert with 0, 'Contract has not recived Token C'
                            if stor1 == address(cd[(arg5 + 228)]):
                                _3127 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_3127]
                                mem[_3127 + 32] = address(cd[(arg5 + 132)])
                                require 1 < mem[_3127]
                                mem[_3127 + 64] = address(cd[(arg5 + 68)])
                                mem[_3127 + 100] = stor1
                                mem[_3127 + 132] = -1
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor1, -1
                                mem[_3127 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_3127 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_3127 + ceil32(return_data.size) + 100] = _3086
                                mem[_3127 + ceil32(return_data.size) + 132] = 1
                                mem[_3127 + ceil32(return_data.size) + 164] = 160
                                mem[_3127 + ceil32(return_data.size) + 260] = mem[_3127]
                                idx = 0
                                s = _3127 + ceil32(return_data.size) + 292
                                t = _3127 + 32
                                while idx < mem[_3127]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_3127 + ceil32(return_data.size) + 196] = this.address
                                mem[_3127 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                require ext_code.size(address(cd[(arg5 + 228)]))
                                call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3086, 1, 160, address(this.address), block.timestamp + 1, mem[_3127 + ceil32(return_data.size) + 260 len (32 * mem[_3127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3127 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _3127 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _3782 = mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32
                                require mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 <= test266151307()
                                require _3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 127 < _3127 + ceil32(return_data.size) + return_data.size + 96
                                _3794 = mem[_3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]
                                require mem[_3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96] <= test266151307()
                                require (32 * mem[_3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]) + 32 >= 0 and _3127 + (2 * ceil32(return_data.size)) + (32 * mem[_3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]) + 128 <= test266151307()
                                mem[64] = _3127 + (2 * ceil32(return_data.size)) + (32 * mem[_3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]) + 128
                                mem[_3127 + (2 * ceil32(return_data.size)) + 96] = mem[_3127 + ceil32(return_data.size) + mem[_3127 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]
                                require return_data.size >= _3782 + (32 * _3794) + 32
                                mem[_3127 + (2 * ceil32(return_data.size)) + 128 len 32 * _3794] = mem[_3127 + ceil32(return_data.size) + _3782 + 128 len 32 * _3794]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 68)]))
                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3962 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_3962] <= arg3:
                                    revert with 0, 'Contract has not recived Token A'
                            else:
                                if stor2 != address(cd[(arg5 + 228)]):
                                    if stor3 != address(cd[(arg5 + 228)]):
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3294 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3294] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
                                    else:
                                        mem[mem[64] + 4] = stor3
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor3, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3295 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3295] == bool(mem[_3295])
                                        if stor4 == address(cd[(arg5 + 132)]):
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = _3086
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor10)
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, _3086, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3517 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3517] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
                                        else:
                                            if stor5 != address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _3086
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, _3086, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3516 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3516] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                mem[mem[64] + 36] = 1
                                                mem[mem[64] + 68] = _3086
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, _3086, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3529 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3529] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                else:
                                    _3173 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_3173]
                                    mem[_3173 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_3173]
                                    mem[_3173 + 64] = address(cd[(arg5 + 68)])
                                    mem[_3173 + 100] = stor2
                                    mem[_3173 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor2, -1
                                    mem[_3173 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3173 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_3173 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_3173 + ceil32(return_data.size) + 100] = _3086
                                    mem[_3173 + ceil32(return_data.size) + 132] = 1
                                    mem[_3173 + ceil32(return_data.size) + 164] = 160
                                    mem[_3173 + ceil32(return_data.size) + 260] = mem[_3173]
                                    idx = 0
                                    s = _3173 + ceil32(return_data.size) + 292
                                    t = _3173 + 32
                                    while idx < mem[_3173]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3173 + ceil32(return_data.size) + 196] = this.address
                                    mem[_3173 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _3086, 1, 160, address(this.address), block.timestamp + 1, mem[_3173 + ceil32(return_data.size) + 260 len (32 * mem[_3173]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3173 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3173 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _3781 = mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32
                                    require mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 <= test266151307()
                                    require _3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 127 < _3173 + ceil32(return_data.size) + return_data.size + 96
                                    _3793 = mem[_3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]
                                    require mem[_3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96] <= test266151307()
                                    require (32 * mem[_3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]) + 32 >= 0 and _3173 + (2 * ceil32(return_data.size)) + (32 * mem[_3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]) + 128 <= test266151307()
                                    mem[64] = _3173 + (2 * ceil32(return_data.size)) + (32 * mem[_3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]) + 128
                                    mem[_3173 + (2 * ceil32(return_data.size)) + 96] = mem[_3173 + ceil32(return_data.size) + mem[_3173 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3086) >> 32 + 96]
                                    require return_data.size >= _3781 + (32 * _3793) + 32
                                    mem[_3173 + (2 * ceil32(return_data.size)) + 128 len 32 * _3793] = mem[_3173 + ceil32(return_data.size) + _3781 + 128 len 32 * _3793]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3961 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3961] <= arg3:
                                        revert with 0, 'Contract has not recived Token A'
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
                                        mem[(4 * ceil32(return_data.size)) + 320] = 2
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
                                        _2052 = mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                        require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                        _2084 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                        mem[(7 * ceil32(return_data.size)) + 416] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                        require return_data.size >= _2052 + (32 * _2084) + 32
                                        mem[(7 * ceil32(return_data.size)) + 448 len 32 * _2084] = mem[(6 * ceil32(return_data.size)) + _2052 + 448 len 32 * _2084]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3046 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3046] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
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
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + 320] = 2
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
                                            _2051 = mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                            _2083 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(7 * ceil32(return_data.size)) + 416] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require return_data.size >= _2051 + (32 * _2083) + 32
                                            mem[(7 * ceil32(return_data.size)) + 448 len 32 * _2083] = mem[(6 * ceil32(return_data.size)) + _2051 + 448 len 32 * _2083]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3045 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3045] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
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
                                            mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                            _2058 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                            _2090 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require return_data.size >= _2058 + (32 * _2090) + 32
                                            mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2090] = mem[(7 * ceil32(return_data.size)) + _2058 + 448 len 32 * _2090]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3052 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3052] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
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
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                _2057 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                _2089 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2057 + (32 * _2089) + 32
                                                mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2089] = mem[(7 * ceil32(return_data.size)) + _2057 + 448 len 32 * _2089]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3051 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3051] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                    else:
                                        if stor5 != address(cd[(arg5 + 100)]):
                                            mem[(4 * ceil32(return_data.size)) + 356] = 0
                                            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                            mem[(4 * ceil32(return_data.size)) + 420] = 1
                                            require ext_code.size(stor10)
                                            call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, ext_call.return_data[0], 1
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
                                                mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                _2054 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                _2086 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2054 + (32 * _2086) + 32
                                                mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2086] = mem[(7 * ceil32(return_data.size)) + _2054 + 448 len 32 * _2086]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3048 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3048] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
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
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2053 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2085 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2053 + (32 * _2085) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2085] = mem[(7 * ceil32(return_data.size)) + _2053 + 448 len 32 * _2085]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3047 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3047] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
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
                                                mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                _2056 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                _2088 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2056 + (32 * _2088) + 32
                                                mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2088] = mem[(7 * ceil32(return_data.size)) + _2056 + 448 len 32 * _2088]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3050 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3050] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
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
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2055 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2087 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2055 + (32 * _2087) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2087] = mem[(7 * ceil32(return_data.size)) + _2055 + 448 len 32 * _2087]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3049 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3049] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
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
                                _2059 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _2091 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require return_data.size >= _2059 + (32 * _2091) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _2091] = mem[(4 * ceil32(return_data.size)) + _2059 + 448 len 32 * _2091]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3053 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3085 = mem[_3053]
                                if mem[_3053] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                                if stor1 == address(cd[(arg5 + 228)]):
                                    _3125 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_3125]
                                    mem[_3125 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_3125]
                                    mem[_3125 + 64] = address(cd[(arg5 + 68)])
                                    mem[_3125 + 100] = stor1
                                    mem[_3125 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor1, -1
                                    mem[_3125 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3125 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_3125 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_3125 + ceil32(return_data.size) + 100] = _3085
                                    mem[_3125 + ceil32(return_data.size) + 132] = 1
                                    mem[_3125 + ceil32(return_data.size) + 164] = 160
                                    mem[_3125 + ceil32(return_data.size) + 260] = mem[_3125]
                                    idx = 0
                                    s = _3125 + ceil32(return_data.size) + 292
                                    t = _3125 + 32
                                    while idx < mem[_3125]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3125 + ceil32(return_data.size) + 196] = this.address
                                    mem[_3125 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 228)]))
                                    call address(cd[(arg5 + 228)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3125 + ceil32(return_data.size) + (32 * mem[_3125]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3768 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3780 = mem[_3768]
                                    require mem[_3768] <= test266151307()
                                    require _3768 + mem[_3768] + 31 < _3768 + return_data.size
                                    _3792 = mem[_3768 + mem[_3768]]
                                    require mem[_3768 + mem[_3768]] <= test266151307()
                                    require (32 * mem[_3768 + mem[_3768]]) + 32 >= 0 and _3768 + ceil32(return_data.size) + (32 * mem[_3768 + mem[_3768]]) + 32 <= test266151307()
                                    mem[64] = _3768 + ceil32(return_data.size) + (32 * mem[_3768 + mem[_3768]]) + 32
                                    mem[_3768 + ceil32(return_data.size)] = _3792
                                    require return_data.size >= _3780 + (32 * _3792) + 32
                                    mem[_3768 + ceil32(return_data.size) + 32 len 32 * _3792] = mem[_3768 + _3780 + 32 len 32 * _3792]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3960 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3960] <= arg3:
                                        revert with 0, 'Contract has not recived Token A'
                                else:
                                    if stor2 != address(cd[(arg5 + 228)]):
                                        if stor3 != address(cd[(arg5 + 228)]):
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3291 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3291] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
                                        else:
                                            mem[mem[64] + 4] = stor3
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor3, -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3292 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3292] == bool(mem[_3292])
                                            if stor4 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _3085
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, _3085, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3514 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3514] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                if stor5 != address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _3085
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _3085, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3513 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3513] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[mem[64] + 36] = 1
                                                    mem[mem[64] + 68] = _3085
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, _3085, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3527 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3527] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                    else:
                                        _3169 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_3169]
                                        mem[_3169 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_3169]
                                        mem[_3169 + 64] = address(cd[(arg5 + 68)])
                                        mem[_3169 + 100] = stor2
                                        mem[_3169 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor2, -1
                                        mem[_3169 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3169 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_3169 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_3169 + ceil32(return_data.size) + 100] = _3085
                                        mem[_3169 + ceil32(return_data.size) + 132] = 1
                                        mem[_3169 + ceil32(return_data.size) + 164] = 160
                                        mem[_3169 + ceil32(return_data.size) + 260] = mem[_3169]
                                        idx = 0
                                        s = _3169 + ceil32(return_data.size) + 292
                                        t = _3169 + 32
                                        while idx < mem[_3169]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3169 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3169 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3169 + ceil32(return_data.size) + (32 * mem[_3169]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3767 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3779 = mem[_3767]
                                        require mem[_3767] <= test266151307()
                                        require _3767 + mem[_3767] + 31 < _3767 + return_data.size
                                        _3791 = mem[_3767 + mem[_3767]]
                                        require mem[_3767 + mem[_3767]] <= test266151307()
                                        require (32 * mem[_3767 + mem[_3767]]) + 32 >= 0 and _3767 + ceil32(return_data.size) + (32 * mem[_3767 + mem[_3767]]) + 32 <= test266151307()
                                        mem[64] = _3767 + ceil32(return_data.size) + (32 * mem[_3767 + mem[_3767]]) + 32
                                        mem[_3767 + ceil32(return_data.size)] = _3791
                                        require return_data.size >= _3779 + (32 * _3791) + 32
                                        mem[_3767 + ceil32(return_data.size) + 32 len 32 * _3791] = mem[_3767 + _3779 + 32 len 32 * _3791]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3959 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3959] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
                    else:
                        if stor5 == address(cd[(arg5 + 68)]):
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
                                            mem[(4 * ceil32(return_data.size)) + 320] = 2
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
                                            _2042 = mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                            _2074 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(7 * ceil32(return_data.size)) + 416] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require return_data.size >= _2042 + (32 * _2074) + 32
                                            mem[(7 * ceil32(return_data.size)) + 448 len 32 * _2074] = mem[(6 * ceil32(return_data.size)) + _2042 + 448 len 32 * _2074]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3036 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3036] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
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
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 320] = 2
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
                                                _2041 = mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                                _2073 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(7 * ceil32(return_data.size)) + 416] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2041 + (32 * _2073) + 32
                                                mem[(7 * ceil32(return_data.size)) + 448 len 32 * _2073] = mem[(6 * ceil32(return_data.size)) + _2041 + 448 len 32 * _2073]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3035 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3035] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
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
                                                mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                _2048 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                _2080 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2048 + (32 * _2080) + 32
                                                mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2080] = mem[(7 * ceil32(return_data.size)) + _2048 + 448 len 32 * _2080]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3042 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3042] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
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
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2047 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2079 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2047 + (32 * _2079) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2079] = mem[(7 * ceil32(return_data.size)) + _2047 + 448 len 32 * _2079]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3041 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3041] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                        else:
                                            if stor5 != address(cd[(arg5 + 100)]):
                                                mem[(4 * ceil32(return_data.size)) + 356] = 0
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + 420] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, ext_call.return_data[0], 1
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
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2044 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2076 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2044 + (32 * _2076) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2076] = mem[(7 * ceil32(return_data.size)) + _2044 + 448 len 32 * _2076]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3038 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3038] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
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
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                                    else:
                                                        mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                        _2043 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                        _2075 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require return_data.size >= _2043 + (32 * _2075) + 32
                                                        mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2075] = mem[(7 * ceil32(return_data.size)) + _2043 + 448 len 32 * _2075]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3037 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3037] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
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
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2046 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2078 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2046 + (32 * _2078) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2078] = mem[(7 * ceil32(return_data.size)) + _2046 + 448 len 32 * _2078]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3040 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3040] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
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
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                                    else:
                                                        mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                        _2045 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                        _2077 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require return_data.size >= _2045 + (32 * _2077) + 32
                                                        mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2077] = mem[(7 * ceil32(return_data.size)) + _2045 + 448 len 32 * _2077]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3039 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3039] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
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
                                    _2049 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _2081 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require return_data.size >= _2049 + (32 * _2081) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _2081] = mem[(4 * ceil32(return_data.size)) + _2049 + 448 len 32 * _2081]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3043 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3075 = mem[_3043]
                                    if mem[_3043] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                    if stor1 == address(cd[(arg5 + 228)]):
                                        _3121 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_3121]
                                        mem[_3121 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_3121]
                                        mem[_3121 + 64] = address(cd[(arg5 + 68)])
                                        mem[_3121 + 100] = stor1
                                        mem[_3121 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor1, -1
                                        mem[_3121 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_3121 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_3121 + ceil32(return_data.size) + 100] = _3075
                                        mem[_3121 + ceil32(return_data.size) + 132] = 1
                                        mem[_3121 + ceil32(return_data.size) + 164] = 160
                                        mem[_3121 + ceil32(return_data.size) + 260] = mem[_3121]
                                        idx = 0
                                        s = _3121 + ceil32(return_data.size) + 292
                                        t = _3121 + 32
                                        while idx < mem[_3121]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3121 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3121 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(address(cd[(arg5 + 228)]))
                                        call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args _3075, 1, 160, address(this.address), block.timestamp + 1, mem[_3121 + ceil32(return_data.size) + 260 len (32 * mem[_3121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_3121 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3121 + (2 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _3776 = mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32
                                        require mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 <= test266151307()
                                        require _3121 + ceil32(return_data.size) + mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 127 < _3121 + ceil32(return_data.size) + return_data.size + 96
                                        _3788 = mem[_3121 + ceil32(return_data.size) + mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]
                                        require mem[_3121 + ceil32(return_data.size) + mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96] <= test266151307()
                                        require (32 * mem[_3121 + ceil32(return_data.size) + mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]) + 32 >= 0 and _3121 + (2 * ceil32(return_data.size)) + (32 * mem[_3121 + ceil32(return_data.size) + mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]) + 128 <= test266151307()
                                        mem[64] = _3121 + (2 * ceil32(return_data.size)) + (32 * mem[_3121 + ceil32(return_data.size) + mem[_3121 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]) + 128
                                        mem[_3121 + (2 * ceil32(return_data.size)) + 96] = _3788
                                        require return_data.size >= _3776 + (32 * _3788) + 32
                                        mem[_3121 + (2 * ceil32(return_data.size)) + 128 len 32 * _3788] = mem[_3121 + ceil32(return_data.size) + _3776 + 128 len 32 * _3788]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3956 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3956] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
                                    else:
                                        if stor2 != address(cd[(arg5 + 228)]):
                                            if stor3 != address(cd[(arg5 + 228)]):
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3285 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3285] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                mem[mem[64] + 4] = stor3
                                                mem[mem[64] + 36] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor3, -1
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3286 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3286] == bool(mem[_3286])
                                                if stor4 == address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _3075
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, _3075, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3508 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3508] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    if stor5 != address(cd[(arg5 + 132)]):
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = _3075
                                                        mem[mem[64] + 100] = 1
                                                        require ext_code.size(stor10)
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, _3075, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3507 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3507] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                                    else:
                                                        mem[mem[64] + 36] = 1
                                                        mem[mem[64] + 68] = _3075
                                                        mem[mem[64] + 100] = 1
                                                        require ext_code.size(stor10)
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, _3075, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3523 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3523] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                        else:
                                            _3153 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            require 0 < mem[_3153]
                                            mem[_3153 + 32] = address(cd[(arg5 + 132)])
                                            require 1 < mem[_3153]
                                            mem[_3153 + 64] = address(cd[(arg5 + 68)])
                                            mem[_3153 + 100] = stor2
                                            mem[_3153 + 132] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor2, -1
                                            mem[_3153 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3153 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[_3153 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_3153 + ceil32(return_data.size) + 100] = _3075
                                            mem[_3153 + ceil32(return_data.size) + 132] = 1
                                            mem[_3153 + ceil32(return_data.size) + 164] = 160
                                            mem[_3153 + ceil32(return_data.size) + 260] = mem[_3153]
                                            idx = 0
                                            s = _3153 + ceil32(return_data.size) + 292
                                            t = _3153 + 32
                                            while idx < mem[_3153]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3153 + ceil32(return_data.size) + 196] = this.address
                                            mem[_3153 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                            require ext_code.size(stor8)
                                            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                                 gas gas_remaining wei
                                                args _3075, 1, 160, address(this.address), block.timestamp + 1, mem[_3153 + ceil32(return_data.size) + 260 len (32 * mem[_3153]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_3153 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3153 + (2 * ceil32(return_data.size)) + 96
                                            require return_data.size >= 32
                                            _3775 = mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32
                                            require mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 <= test266151307()
                                            require _3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 127 < _3153 + ceil32(return_data.size) + return_data.size + 96
                                            _3787 = mem[_3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]
                                            require mem[_3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96] <= test266151307()
                                            require (32 * mem[_3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]) + 32 >= 0 and _3153 + (2 * ceil32(return_data.size)) + (32 * mem[_3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]) + 128 <= test266151307()
                                            mem[64] = _3153 + (2 * ceil32(return_data.size)) + (32 * mem[_3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]) + 128
                                            mem[_3153 + (2 * ceil32(return_data.size)) + 96] = mem[_3153 + ceil32(return_data.size) + mem[_3153 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3075) >> 32 + 96]
                                            require return_data.size >= _3775 + (32 * _3787) + 32
                                            mem[_3153 + (2 * ceil32(return_data.size)) + 128 len 32 * _3787] = mem[_3153 + ceil32(return_data.size) + _3775 + 128 len 32 * _3787]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3955 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3955] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
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
                                _2050 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _2082 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require return_data.size >= _2050 + (32 * _2082) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _2082] = mem[(4 * ceil32(return_data.size)) + _2050 + 448 len 32 * _2082]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3076 = mem[_3044]
                                if mem[_3044] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                                if stor1 == address(cd[(arg5 + 228)]):
                                    _3123 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_3123]
                                    mem[_3123 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_3123]
                                    mem[_3123 + 64] = address(cd[(arg5 + 68)])
                                    mem[_3123 + 100] = stor1
                                    mem[_3123 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor1, -1
                                    mem[_3123 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3123 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_3123 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_3123 + ceil32(return_data.size) + 100] = _3076
                                    mem[_3123 + ceil32(return_data.size) + 132] = 1
                                    mem[_3123 + ceil32(return_data.size) + 164] = 160
                                    mem[_3123 + ceil32(return_data.size) + 260] = mem[_3123]
                                    idx = 0
                                    s = _3123 + ceil32(return_data.size) + 292
                                    t = _3123 + 32
                                    while idx < mem[_3123]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3123 + ceil32(return_data.size) + 196] = this.address
                                    mem[_3123 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 228)]))
                                    call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _3076, 1, 160, address(this.address), block.timestamp + 1, mem[_3123 + ceil32(return_data.size) + 260 len (32 * mem[_3123]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3123 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3123 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _3778 = mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32
                                    require mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 <= test266151307()
                                    require _3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 127 < _3123 + ceil32(return_data.size) + return_data.size + 96
                                    _3790 = mem[_3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 96]
                                    require mem[_3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 96] <= test266151307()
                                    require (32 * mem[_3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 96]) + 32 >= 0 and _3123 + (2 * ceil32(return_data.size)) + (32 * mem[_3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 96]) + 128 <= test266151307()
                                    mem[64] = _3123 + (2 * ceil32(return_data.size)) + (32 * mem[_3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 96]) + 128
                                    mem[_3123 + (2 * ceil32(return_data.size)) + 96] = mem[_3123 + ceil32(return_data.size) + mem[_3123 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3076) >> 32 + 96]
                                    require return_data.size >= _3778 + (32 * _3790) + 32
                                    mem[_3123 + (2 * ceil32(return_data.size)) + 128 len 32 * _3790] = mem[_3123 + ceil32(return_data.size) + _3778 + 128 len 32 * _3790]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3958 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3958] <= arg3:
                                        revert with 0, 'Contract has not recived Token A'
                                else:
                                    if stor2 != address(cd[(arg5 + 228)]):
                                        if stor3 != address(cd[(arg5 + 228)]):
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3288 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3288] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
                                        else:
                                            mem[mem[64] + 4] = stor3
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor3, -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3289 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3289] == bool(mem[_3289])
                                            if stor4 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _3076
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, _3076, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3511 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3511] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                if stor5 != address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _3076
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _3076, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3510 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3510] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[mem[64] + 36] = 1
                                                    mem[mem[64] + 68] = _3076
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, _3076, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3525 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3525] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                    else:
                                        _3157 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_3157]
                                        mem[_3157 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_3157]
                                        mem[_3157 + 64] = address(cd[(arg5 + 68)])
                                        mem[_3157 + 100] = stor2
                                        mem[_3157 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor2, -1
                                        mem[_3157 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3157 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_3157 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_3157 + ceil32(return_data.size) + 100] = _3076
                                        mem[_3157 + ceil32(return_data.size) + 132] = 1
                                        mem[_3157 + ceil32(return_data.size) + 164] = 160
                                        mem[_3157 + ceil32(return_data.size) + 260] = mem[_3157]
                                        idx = 0
                                        s = _3157 + ceil32(return_data.size) + 292
                                        t = _3157 + 32
                                        while idx < mem[_3157]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3157 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3157 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3157 + ceil32(return_data.size) + (32 * mem[_3157]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3765 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3777 = mem[_3765]
                                        require mem[_3765] <= test266151307()
                                        require _3765 + mem[_3765] + 31 < _3765 + return_data.size
                                        _3789 = mem[_3765 + mem[_3765]]
                                        require mem[_3765 + mem[_3765]] <= test266151307()
                                        require (32 * mem[_3765 + mem[_3765]]) + 32 >= 0 and _3765 + ceil32(return_data.size) + (32 * mem[_3765 + mem[_3765]]) + 32 <= test266151307()
                                        mem[64] = _3765 + ceil32(return_data.size) + (32 * mem[_3765 + mem[_3765]]) + 32
                                        mem[_3765 + ceil32(return_data.size)] = _3789
                                        require return_data.size >= _3777 + (32 * _3789) + 32
                                        mem[_3765 + ceil32(return_data.size) + 32 len 32 * _3789] = mem[_3765 + _3777 + 32 len 32 * _3789]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3957 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3957] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
                        else:
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
                                _2040 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _2072 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require return_data.size >= _2040 + (32 * _2072) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _2072] = mem[(4 * ceil32(return_data.size)) + _2040 + 448 len 32 * _2072]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3034 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3066 = mem[_3034]
                                if mem[_3034] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                                if stor1 == address(cd[(arg5 + 228)]):
                                    _3119 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_3119]
                                    mem[_3119 + 32] = address(cd[(arg5 + 132)])
                                    require 1 < mem[_3119]
                                    mem[_3119 + 64] = address(cd[(arg5 + 68)])
                                    mem[_3119 + 100] = stor1
                                    mem[_3119 + 132] = -1
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor1, -1
                                    mem[_3119 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3119 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_3119 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_3119 + ceil32(return_data.size) + 100] = _3066
                                    mem[_3119 + ceil32(return_data.size) + 132] = 1
                                    mem[_3119 + ceil32(return_data.size) + 164] = 160
                                    mem[_3119 + ceil32(return_data.size) + 260] = mem[_3119]
                                    idx = 0
                                    s = _3119 + ceil32(return_data.size) + 292
                                    t = _3119 + 32
                                    while idx < mem[_3119]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3119 + ceil32(return_data.size) + 196] = this.address
                                    mem[_3119 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                    require ext_code.size(address(cd[(arg5 + 228)]))
                                    call address(cd[(arg5 + 228)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _3066, 1, 160, address(this.address), block.timestamp + 1, mem[_3119 + ceil32(return_data.size) + 260 len (32 * mem[_3119]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3119 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3119 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _3774 = mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32
                                    require mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 <= test266151307()
                                    require _3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 127 < _3119 + ceil32(return_data.size) + return_data.size + 96
                                    _3786 = mem[_3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 96]
                                    require mem[_3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 96] <= test266151307()
                                    require (32 * mem[_3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 96]) + 32 >= 0 and _3119 + (2 * ceil32(return_data.size)) + (32 * mem[_3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 96]) + 128 <= test266151307()
                                    mem[64] = _3119 + (2 * ceil32(return_data.size)) + (32 * mem[_3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 96]) + 128
                                    mem[_3119 + (2 * ceil32(return_data.size)) + 96] = mem[_3119 + ceil32(return_data.size) + mem[_3119 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _3066) >> 32 + 96]
                                    require return_data.size >= _3774 + (32 * _3786) + 32
                                    mem[_3119 + (2 * ceil32(return_data.size)) + 128 len 32 * _3786] = mem[_3119 + ceil32(return_data.size) + _3774 + 128 len 32 * _3786]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3954 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_3954] <= arg3:
                                        revert with 0, 'Contract has not recived Token A'
                                else:
                                    if stor2 != address(cd[(arg5 + 228)]):
                                        if stor3 != address(cd[(arg5 + 228)]):
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3282 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3282] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
                                        else:
                                            mem[mem[64] + 4] = stor3
                                            mem[mem[64] + 36] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor3, -1
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3283 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3283] == bool(mem[_3283])
                                            if stor4 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _3066
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, _3066, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3505 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3505] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                if stor5 != address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _3066
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _3066, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3504 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3504] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[mem[64] + 36] = 1
                                                    mem[mem[64] + 68] = _3066
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, _3066, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3521 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3521] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                    else:
                                        _3141 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_3141]
                                        mem[_3141 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_3141]
                                        mem[_3141 + 64] = address(cd[(arg5 + 68)])
                                        mem[_3141 + 100] = stor2
                                        mem[_3141 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor2, -1
                                        mem[_3141 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3141 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_3141 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_3141 + ceil32(return_data.size) + 100] = _3066
                                        mem[_3141 + ceil32(return_data.size) + 132] = 1
                                        mem[_3141 + ceil32(return_data.size) + 164] = 160
                                        mem[_3141 + ceil32(return_data.size) + 260] = mem[_3141]
                                        idx = 0
                                        s = _3141 + ceil32(return_data.size) + 292
                                        t = _3141 + 32
                                        while idx < mem[_3141]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3141 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3141 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(stor8)
                                        call stor8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3141 + ceil32(return_data.size) + (32 * mem[_3141]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3761 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3773 = mem[_3761]
                                        require mem[_3761] <= test266151307()
                                        require _3761 + mem[_3761] + 31 < _3761 + return_data.size
                                        _3785 = mem[_3761 + mem[_3761]]
                                        require mem[_3761 + mem[_3761]] <= test266151307()
                                        require (32 * mem[_3761 + mem[_3761]]) + 32 >= 0 and _3761 + ceil32(return_data.size) + (32 * mem[_3761 + mem[_3761]]) + 32 <= test266151307()
                                        mem[64] = _3761 + ceil32(return_data.size) + (32 * mem[_3761 + mem[_3761]]) + 32
                                        mem[_3761 + ceil32(return_data.size)] = _3785
                                        require return_data.size >= _3773 + (32 * _3785) + 32
                                        mem[_3761 + ceil32(return_data.size) + 32 len 32 * _3785] = mem[_3761 + _3773 + 32 len 32 * _3785]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3953 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3953] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
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
                                            mem[(4 * ceil32(return_data.size)) + 320] = 2
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
                                            _2032 = mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                            _2064 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(7 * ceil32(return_data.size)) + 416] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require return_data.size >= _2032 + (32 * _2064) + 32
                                            mem[(7 * ceil32(return_data.size)) + 448 len 32 * _2064] = mem[(6 * ceil32(return_data.size)) + _2032 + 448 len 32 * _2064]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3026 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3026] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
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
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                mem[(4 * ceil32(return_data.size)) + 320] = 2
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
                                                _2031 = mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (6 * ceil32(return_data.size)) + return_data.size + 416
                                                _2063 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(7 * ceil32(return_data.size)) + 416] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2031 + (32 * _2063) + 32
                                                mem[(7 * ceil32(return_data.size)) + 448 len 32 * _2063] = mem[(6 * ceil32(return_data.size)) + _2031 + 448 len 32 * _2063]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3025 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3025] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
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
                                                mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                _2038 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                _2070 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require return_data.size >= _2038 + (32 * _2070) + 32
                                                mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2070] = mem[(7 * ceil32(return_data.size)) + _2038 + 448 len 32 * _2070]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3032 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3032] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
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
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2037 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2069 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2037 + (32 * _2069) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2069] = mem[(7 * ceil32(return_data.size)) + _2037 + 448 len 32 * _2069]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3031 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3031] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                        else:
                                            if stor5 != address(cd[(arg5 + 100)]):
                                                mem[(4 * ceil32(return_data.size)) + 356] = 0
                                                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                                                mem[(4 * ceil32(return_data.size)) + 420] = 1
                                                require ext_code.size(stor10)
                                                call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, ext_call.return_data[0], 1
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
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2034 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2066 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2034 + (32 * _2066) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2066] = mem[(7 * ceil32(return_data.size)) + _2034 + 448 len 32 * _2066]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3028 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3028] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
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
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                                    else:
                                                        mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                        _2033 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                        _2065 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require return_data.size >= _2033 + (32 * _2065) + 32
                                                        mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2065] = mem[(7 * ceil32(return_data.size)) + _2033 + 448 len 32 * _2065]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3027 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3027] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
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
                                                    mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                    _2036 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                    _2068 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require return_data.size >= _2036 + (32 * _2068) + 32
                                                    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2068] = mem[(7 * ceil32(return_data.size)) + _2036 + 448 len 32 * _2068]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3030 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3030] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
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
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                                    else:
                                                        mem[(6 * ceil32(return_data.size)) + 320] = 2
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
                                                        _2035 = mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (7 * ceil32(return_data.size)) + return_data.size + 416
                                                        _2067 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require return_data.size >= _2035 + (32 * _2067) + 32
                                                        mem[(8 * ceil32(return_data.size)) + 448 len 32 * _2067] = mem[(7 * ceil32(return_data.size)) + _2035 + 448 len 32 * _2067]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3029 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3029] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
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
                                    _2039 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _2071 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require return_data.size >= _2039 + (32 * _2071) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _2071] = mem[(4 * ceil32(return_data.size)) + _2039 + 448 len 32 * _2071]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3033 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3065 = mem[_3033]
                                    if mem[_3033] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                    if stor1 == address(cd[(arg5 + 228)]):
                                        _3117 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_3117]
                                        mem[_3117 + 32] = address(cd[(arg5 + 132)])
                                        require 1 < mem[_3117]
                                        mem[_3117 + 64] = address(cd[(arg5 + 68)])
                                        mem[_3117 + 100] = stor1
                                        mem[_3117 + 132] = -1
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor1, -1
                                        mem[_3117 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3117 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_3117 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_3117 + ceil32(return_data.size) + 100] = _3065
                                        mem[_3117 + ceil32(return_data.size) + 132] = 1
                                        mem[_3117 + ceil32(return_data.size) + 164] = 160
                                        mem[_3117 + ceil32(return_data.size) + 260] = mem[_3117]
                                        idx = 0
                                        s = _3117 + ceil32(return_data.size) + 292
                                        t = _3117 + 32
                                        while idx < mem[_3117]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_3117 + ceil32(return_data.size) + 196] = this.address
                                        mem[_3117 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                        require ext_code.size(address(cd[(arg5 + 228)]))
                                        call address(cd[(arg5 + 228)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3117 + ceil32(return_data.size) + (32 * mem[_3117]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3760 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3772 = mem[_3760]
                                        require mem[_3760] <= test266151307()
                                        require _3760 + mem[_3760] + 31 < _3760 + return_data.size
                                        _3784 = mem[_3760 + mem[_3760]]
                                        require mem[_3760 + mem[_3760]] <= test266151307()
                                        require (32 * mem[_3760 + mem[_3760]]) + 32 >= 0 and _3760 + ceil32(return_data.size) + (32 * mem[_3760 + mem[_3760]]) + 32 <= test266151307()
                                        mem[64] = _3760 + ceil32(return_data.size) + (32 * mem[_3760 + mem[_3760]]) + 32
                                        mem[_3760 + ceil32(return_data.size)] = _3784
                                        require return_data.size >= _3772 + (32 * _3784) + 32
                                        mem[_3760 + ceil32(return_data.size) + 32 len 32 * _3784] = mem[_3760 + _3772 + 32 len 32 * _3784]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3952 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_3952] <= arg3:
                                            revert with 0, 'Contract has not recived Token A'
                                    else:
                                        if stor2 != address(cd[(arg5 + 228)]):
                                            if stor3 != address(cd[(arg5 + 228)]):
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 68)]))
                                                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3279 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_3279] <= arg3:
                                                    revert with 0, 'Contract has not recived Token A'
                                            else:
                                                mem[mem[64] + 4] = stor3
                                                mem[mem[64] + 36] = -1
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor3, -1
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3280 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3280] == bool(mem[_3280])
                                                if stor4 == address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _3065
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor10)
                                                    call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, _3065, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 68)]))
                                                    staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3502 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_3502] <= arg3:
                                                        revert with 0, 'Contract has not recived Token A'
                                                else:
                                                    if stor5 != address(cd[(arg5 + 132)]):
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 68] = _3065
                                                        mem[mem[64] + 100] = 1
                                                        require ext_code.size(stor10)
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, _3065, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3501 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3501] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                                    else:
                                                        mem[mem[64] + 36] = 1
                                                        mem[mem[64] + 68] = _3065
                                                        mem[mem[64] + 100] = 1
                                                        require ext_code.size(stor10)
                                                        call stor10.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, _3065, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 68)]))
                                                        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3519 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_3519] <= arg3:
                                                            revert with 0, 'Contract has not recived Token A'
                                        else:
                                            _3137 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            require 0 < mem[_3137]
                                            mem[_3137 + 32] = address(cd[(arg5 + 132)])
                                            require 1 < mem[_3137]
                                            mem[_3137 + 64] = address(cd[(arg5 + 68)])
                                            mem[_3137 + 100] = stor2
                                            mem[_3137 + 132] = -1
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor2, -1
                                            mem[_3137 + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3137 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[_3137 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_3137 + ceil32(return_data.size) + 100] = _3065
                                            mem[_3137 + ceil32(return_data.size) + 132] = 1
                                            mem[_3137 + ceil32(return_data.size) + 164] = 160
                                            mem[_3137 + ceil32(return_data.size) + 260] = mem[_3137]
                                            idx = 0
                                            s = _3137 + ceil32(return_data.size) + 292
                                            t = _3137 + 32
                                            while idx < mem[_3137]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3137 + ceil32(return_data.size) + 196] = this.address
                                            mem[_3137 + ceil32(return_data.size) + 228] = block.timestamp + 1
                                            require ext_code.size(stor8)
                                            call stor8.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3137 + ceil32(return_data.size) + (32 * mem[_3137]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3759 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3771 = mem[_3759]
                                            require mem[_3759] <= test266151307()
                                            require _3759 + mem[_3759] + 31 < _3759 + return_data.size
                                            _3783 = mem[_3759 + mem[_3759]]
                                            require mem[_3759 + mem[_3759]] <= test266151307()
                                            require (32 * mem[_3759 + mem[_3759]]) + 32 >= 0 and _3759 + ceil32(return_data.size) + (32 * mem[_3759 + mem[_3759]]) + 32 <= test266151307()
                                            mem[64] = _3759 + ceil32(return_data.size) + (32 * mem[_3759 + mem[_3759]]) + 32
                                            mem[_3759 + ceil32(return_data.size)] = _3783
                                            require return_data.size >= _3771 + (32 * _3783) + 32
                                            mem[_3759 + ceil32(return_data.size) + 32 len 32 * _3783] = mem[_3759 + _3771 + 32 len 32 * _3783]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 68)]))
                                            staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3951 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_3951] <= arg3:
                                                revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
